<?php

$args = [
  'post_type' 		 => 'movie',
  'posts_per_page' => 5,
  'meta_key'       => '_kksr_avg',
  'orderby'        => 'meta_value_num',
  'order'          => 'DESC'
];
$topRatedQuery = new WP_Query( $args );
?>
<h1>Top 5 rated movies</h1>
<div class="top-rated-movies">
<?php
if ($topRatedQuery -> have_posts() ) :
  while ($topRatedQuery -> have_posts() ) : $topRatedQuery -> the_post(); ?>
    <div class="movie-box">
      <?php $movie_poster = esc_url( get_post_meta( $post->ID, '_movie_poster', true ) ); ?>
      <img class="movie-image" src="<?php echo $movie_poster ?>" alt="Movie image">
      <a href="<?php echo get_post_permalink(); ?>">
        <h4 class="movie-link"><?php echo get_the_title(); ?></h4>
      </a>
      <?php if (!empty(get_post_meta(get_the_ID(), '_imdb_id', true))) : ?>
        <div class="imdb-icon"></div>
      <?php endif; ?>
      <p>Rating: <?php echo round(get_post_meta(get_the_ID(), '_kksr_avg', true), 1); ?></p>
    </div>
    <?php
  endwhile;
  wp_reset_postdata();
  else : ?>
    <?php get_template_part( 'loop-templates/content', 'none' ); ?>
<?php endif; ?>
</div>
