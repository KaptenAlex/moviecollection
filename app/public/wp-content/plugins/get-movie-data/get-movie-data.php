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

function update_movie_title_and_content($post_id)
{
  $movie = get_movie_information($post_id);
  $movie_title = $movie->Title;
  $movie_plot = $movie->Plot;

  $update_movie = [
    'ID'            => $post_id,
    'post_title'    => $movie_title,
    'post_content'  => $movie_plot,
  ];
  remove_action('save_post', 'update_movie_title_and_content');
  wp_update_post( $update_movie );
  add_action('save_post', 'update_movie_title_and_content');
}
add_action('save_post', 'update_movie_title_and_content');
