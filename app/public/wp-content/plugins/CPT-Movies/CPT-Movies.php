<?php
/*
Plugin Name: CPT Movies
Description: Custom Post Type of movies
Version:     1.0
Author:      Alexander Wilson
*/

function cptui_register_my_cpts_movie() {

	$labels = [
		"name" => __( "Movies", "twentytwenty" ),
		"singular_name" => __( "Movie", "twentytwenty" ),
		"menu_name" => __( "My Movies", "twentytwenty" ),
		"all_items" => __( "All Movies", "twentytwenty" ),
		"add_new" => __( "Add new", "twentytwenty" ),
		"add_new_item" => __( "Add new Movie", "twentytwenty" ),
		"edit_item" => __( "Edit Movie", "twentytwenty" ),
		"new_item" => __( "New Movie", "twentytwenty" ),
		"view_item" => __( "View Movie", "twentytwenty" ),
		"view_items" => __( "View Movies", "twentytwenty" ),
		"search_items" => __( "Search Movies", "twentytwenty" ),
		"not_found" => __( "No Movies found", "twentytwenty" ),
		"not_found_in_trash" => __( "No Movies found in trash", "twentytwenty" ),
		"parent" => __( "Parent Movie:", "twentytwenty" ),
		"featured_image" => __( "Featured image for this Movie", "twentytwenty" ),
		"set_featured_image" => __( "Set featured image for this Movie", "twentytwenty" ),
		"remove_featured_image" => __( "Remove featured image for this Movie", "twentytwenty" ),
		"use_featured_image" => __( "Use as featured image for this Movie", "twentytwenty" ),
		"archives" => __( "Movie archives", "twentytwenty" ),
		"insert_into_item" => __( "Insert into Movie", "twentytwenty" ),
		"uploaded_to_this_item" => __( "Upload to this Movie", "twentytwenty" ),
		"filter_items_list" => __( "Filter Movies list", "twentytwenty" ),
		"items_list_navigation" => __( "Movies list navigation", "twentytwenty" ),
		"items_list" => __( "Movies list", "twentytwenty" ),
		"attributes" => __( "Movies attributes", "twentytwenty" ),
		"name_admin_bar" => __( "Movie", "twentytwenty" ),
		"item_published" => __( "Movie published", "twentytwenty" ),
		"item_published_privately" => __( "Movie published privately.", "twentytwenty" ),
		"item_reverted_to_draft" => __( "Movie reverted to draft.", "twentytwenty" ),
		"item_scheduled" => __( "Movie scheduled", "twentytwenty" ),
		"item_updated" => __( "Movie updated.", "twentytwenty" ),
		"parent_item_colon" => __( "Parent Movie:", "twentytwenty" ),
	];

	$args = [
		"label" => __( "Movies", "twentytwenty" ),
		"labels" => $labels,
		"description" => "",
		"public" => true,
		"publicly_queryable" => true,
		"show_ui" => true,
		"show_in_rest" => true,
		"rest_base" => "",
		"rest_controller_class" => "WP_REST_Posts_Controller",
		"has_archive" => false,
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


 ?>
