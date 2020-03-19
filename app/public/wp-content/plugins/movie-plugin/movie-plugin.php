<?php
/*
Plugin Name: Movie plugin
Description: This plugin contains Custom Post Type for Movies, Custom Meta box for IMDB IDs, Methods for fetching and saving data from OMDB API
Version:     2.1
Author:      Alexander Wilson
*/

//Function for registering the custom post type "Movie".
function cptui_register_my_cpts_movie() {

	$labels = [
		"name" => __( "Movies", "understrap-master-child" ),
		"singular_name" => __( "Movie", "understrap-master-child" ),
		"menu_name" => __( "My Movies", "understrap-master-child" ),
		"all_items" => __( "All Movies", "understrap-master-child" ),
		"add_new" => __( "Add new", "understrap-master-child" ),
		"add_new_item" => __( "Add new Movie", "understrap-master-child" ),
		"edit_item" => __( "Edit Movie", "understrap-master-child" ),
		"new_item" => __( "New Movie", "understrap-master-child" ),
		"view_item" => __( "View Movie", "understrap-master-child" ),
		"view_items" => __( "View Movies", "understrap-master-child" ),
		"search_items" => __( "Search Movies", "understrap-master-child" ),
		"not_found" => __( "No Movies found", "understrap-master-child" ),
		"not_found_in_trash" => __( "No Movies found in trash", "understrap-master-child" ),
		"parent" => __( "Parent Movie:", "understrap-master-child" ),
		"featured_image" => __( "Featured image for this Movie", "understrap-master-child" ),
		"set_featured_image" => __( "Set featured image for this Movie", "understrap-master-child" ),
		"remove_featured_image" => __( "Remove featured image for this Movie", "understrap-master-child" ),
		"use_featured_image" => __( "Use as featured image for this Movie", "understrap-master-child" ),
		"archives" => __( "Movie archives", "understrap-master-child" ),
		"insert_into_item" => __( "Insert into Movie", "understrap-master-child" ),
		"uploaded_to_this_item" => __( "Upload to this Movie", "understrap-master-child" ),
		"filter_items_list" => __( "Filter Movies list", "understrap-master-child" ),
		"items_list_navigation" => __( "Movies list navigation", "understrap-master-child" ),
		"items_list" => __( "Movies list", "understrap-master-child" ),
		"attributes" => __( "Movies attributes", "understrap-master-child" ),
		"name_admin_bar" => __( "Movie", "understrap-master-child" ),
		"item_published" => __( "Movie published", "understrap-master-child" ),
		"item_published_privately" => __( "Movie published privately.", "understrap-master-child" ),
		"item_reverted_to_draft" => __( "Movie reverted to draft.", "understrap-master-child" ),
		"item_scheduled" => __( "Movie scheduled", "understrap-master-child" ),
		"item_updated" => __( "Movie updated.", "understrap-master-child" ),
		"parent_item_colon" => __( "Parent Movie:", "understrap-master-child" ),
	];

	$args = [
		"label" => __( "Movies", "understrap-master-child" ),
		"labels" => $labels,
		"description" => "",
		"public" => true,
		"publicly_queryable" => true,
		"show_ui" => true,
		"show_in_rest" => true,
		"rest_base" => "",
		"rest_controller_class" => "WP_REST_Posts_Controller",
		"has_archive" => true,
		"show_in_menu" => true,
		"show_in_nav_menus" => true,
		"delete_with_user" => false,
		"exclude_from_search" => false,
		"capability_type" => "post",
		"map_meta_cap" => true,
		"hierarchical" => false,
		"rewrite" => [ "slug" => "movie", "with_front" => true ],
		"query_var" => true,
		"supports" => [ "title", "editor", "thumbnail" ],
	];

	register_post_type( "movie", $args );
}

add_action( 'init', 'cptui_register_my_cpts_movie' );

//Function for registering IMDB ID meta box in Movie post type.
function add_custom_boxes()
{
        add_meta_box(
            'imdb_box',               // Unique ID
            'IMDB page',              // Box title
            'custom_box_imdb',        // Content callback, must be of type callable
            'movie'                   // Post type
        );
}
add_action('add_meta_boxes', 'add_custom_boxes');

//Function for rendering HTML for the IMDB ID custom box.
function custom_box_imdb($post)
{
    $value = get_post_meta($post->ID, '_imdb_id', true);
    ?>
    <label for="_imdb_id">ID</label>
    <br>
    <input type="text" name="_imdb_id" id="_imdb_id" value="<?php echo $value; ?>">
    <?php
}

//Function for checking if there is a _imdb_id and then saving it to DB.
function save_custom_box_imdb_data($post_id)
{
    //Save the value of the input into meta key _imdb_id
    if (array_key_exists('_imdb_id', $_POST)) {
        update_post_meta(
            $post_id,
            '_imdb_id',
            $_POST['_imdb_id']
        );
    }
}
add_action('save_post', 'save_custom_box_imdb_data');

//Functions for calling to OMDB API and saving it's content to a movies content and metaboxes.
function get_movie_information($post_id)
{
  $movie_id = get_post_meta( $post_id, '_imdb_id', true );
  $url = "http://www.omdbapi.com/?apikey=71784f0&i=$movie_id&plot=full";
  $json_movie_information = file_get_contents($url);
  $movie_information = json_decode($json_movie_information);
  return $movie_information;
}

function update_movie_title_and_content( $post_id )
{
  $movie = get_movie_information( $post_id );
  $movie_title = sanitize_text_field( $movie->Title );
  $movie_plot = sanitize_text_field( $movie->Plot );

  $update_movie = [
    'ID'            => $post_id,
    'post_title'    => $movie_title,
    'post_content'  => $movie_plot,
  ];
  $IMDB_id = sanitize_text_field( $_POST["_imdb_id"] );
  if ( !empty( $IMDB_id ) ) :
    remove_action('save_post', 'update_movie_title_and_content');
    wp_update_post( $update_movie );
    add_action('save_post', 'update_movie_title_and_content');
  endif;
}
add_action('save_post', 'update_movie_title_and_content');

function update_actor_and_published_metadata($post_id)
{
  $movie = get_movie_information($post_id);

  $IMDB_id = sanitize_text_field( $_POST["_imdb_id"] );
  $IMDB_date = sanitize_text_field( $_POST["_movie_published"] );
  $IMDB_actors = sanitize_text_field( $_POST["_movie_actors"] );
  $IMDB_poster = esc_url( $_POST["_movie_poster"] );

  $movie_released = sanitize_text_field( $movie->Released );
  $movie_actors = sanitize_text_field( $movie->Actors );
  $movie_imdb_ID = sanitize_text_field( $movie->imdbID );
  $movie_poster = esc_url( $movie->Poster );

  if ( !empty( $IMDB_id ) || $IMDB_id != $movie_imdb_ID ) :
    if ($IMDB_date != $movie_released || $IMDB_actors != $movie_actors ) :
      update_post_meta( $post_id, '_movie_actors', $movie_actors );
      update_post_meta( $post_id, '_movie_published', $movie_released );
      update_post_meta( $post_id, '_movie_poster', $movie_poster );
    endif;
  endif;
}
add_action( 'save_post', 'update_actor_and_published_metadata' );
 ?>
