<?php
/*
Plugin Name: Movie data
Description: Retrieves movie data and updates post title,content and meta data with data from OMDB API.
Version:     1.0
Author:      Alexander Wilson
*/

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

  $movie_released = sanitize_text_field( $movie->Released );
  $movie_actors = sanitize_text_field( $movie->Actors );
  $movie_imdb_ID = sanitize_text_field( $movie->imdbID );
  
  if ( !empty( $IMDB_id ) || $IMDB_id != $movie_imdb_ID ) :
    if ($IMDB_date != $movie_released || $IMDB_actors != $movie_actors ) :
      update_post_meta( $post_id, '_movie_actors', $movie_actors );
      update_post_meta( $post_id, '_movie_published', $movie_released );
    endif;
  endif;
}
add_action( 'save_post', 'update_actor_and_published_metadata' );
