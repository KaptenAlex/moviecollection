<?php
add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_styles' );
function my_theme_enqueue_styles()
{
    $parent_style = 'parent-style';

    wp_enqueue_style( $parent_style, get_template_directory_uri() . '/style.css' );
    wp_enqueue_style( 'child-style',
        get_stylesheet_directory_uri() . '/style.css',
        array( $parent_style ),
        wp_get_theme()->get('Version')
    );
}
function homepage_main_query( $query ) {
  if (!is_admin() && $query->is_main_query()){
    if($query->is_home()){
      $query->set('posts_per_page', 10);
      $query->set('post_type', 'movie');
      $query->set('orderby', 'title');
      $query->set('order', 'ASC');
    }
  }
}
add_action( 'pre_get_posts', 'homepage_main_query' );
