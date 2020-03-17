<?php
/*
Plugin Name: CPT Movies
Description: Custom Post Type of movies
Version:     1.0
Author:      Alexander Wilson
*/

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


 ?>
