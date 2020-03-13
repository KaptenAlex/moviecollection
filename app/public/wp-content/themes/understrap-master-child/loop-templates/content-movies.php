<?php

$args = [
  'post_type' 		 => 'movie',
  'posts_per_page' => 6,
  'order' => 'ASC'
];
$topRatedQuery = new WP_Query( $args );
?>
<h1>All movies</h1>
<div class="movies">
<?php
if ($topRatedQuery -> have_posts() ) :
  while ($topRatedQuery -> have_posts() ) : $topRatedQuery -> the_post();
  $rating = get_post_meta(get_the_ID(), '_kksr_ratings', true); ?>
    <div class="movie">
      <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="Movie image">
      <a href="<?php echo get_post_permalink(); ?>">
        <h4><?php echo get_the_title(); ?></h4>
      </a>
      <p>Rating: <?php echo empty($rating) : $rating ? 'No rating.'; ?></p>
    </div>
    <?php
  endwhile;
  wp_reset_postdata();
  else : ?>
    <?php get_template_part( 'loop-templates/content', 'none' ); ?>
<?php endif; ?>
</div>
