<?php
/*
Plugin Name: Metaboxes
Description: Custom metaboxes for IMDB IDs, movies published date and its actors.
Version:     1.1
Author:      Alexander Wilson
*/

function add_custom_boxes()
{
        add_meta_box(
            'imdb_box',               // Unique ID
            'IMDB page',              // Box title
            'custom_box_imdb',        // Content callback, must be of type callable
            'movie'                   // Post type
        );
        add_meta_box(
            'movie_published',
            'Movie published',
            'custom_box_published',
            'movie'
        );
        add_meta_box(
            'movie_actors',
            'Movie actors',
            'custom_box_actors',
            'movie'
        );
}
add_action('add_meta_boxes', 'add_custom_boxes');

//Custom box rendering and save functions for IMDB ID.
function custom_box_imdb($post)
{
    //HTML for custom box in edit page.
    $value = get_post_meta($post->ID, '_imdb_id', true);
    ?>
    <label for="_imdb_id">ID</label>
    <br>
    <input type="text" name="_imdb_id" id="_imdb_id" value="<?php echo $value; ?>">
    <?php
}

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

//Custom box rendering and save functions for movies published date.
function custom_box_published($post)
{
    $value = get_post_meta($post->ID, '_movie_published', true);
    ?>
    <label for="_movie_published">Published</label>
    <br>
    <input type="text" name="_movie_published" id="_movie_published" value="<?php echo $value; ?>">
    <?php
}

function save_custom_box_movie_published($post_id)
{
    //Save the value of the input into meta key _imdb_id
    if (array_key_exists('_movie_published', $_POST)) {
        update_post_meta(
            $post_id,
            '_movie_published',
            $_POST['_movie_published']
        );
    }
}
add_action('save_post', 'save_custom_box_movie_published');

//Custom box rendering and save functions for movies actors.
function custom_box_actors($post)
{
    $value = get_post_meta($post->ID, '_movie_actors', true);
    ?>
    <label for="_movie_actors">Actors</label>
    <br>
    <input type="text" name="_movie_actors" id="_movie_actors" value="<?php echo $value; ?>">
    <?php
}

function save_custom_box_movie_actors($post_id)
{
    //Save the value of the input into meta key _imdb_id
    if (array_key_exists('_movie_actors', $_POST)) {
        update_post_meta(
            $post_id,
            '_movie_actors',
            $_POST['_movie_actors']
        );
    }
}
add_action('save_post', 'save_custom_box_movie_actors');
