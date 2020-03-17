<?php
/*
Plugin Name: Metaboxes
Description: Custom metaboxes for IMDB IDs, movies published date and its actors.
Version:     1.3
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
