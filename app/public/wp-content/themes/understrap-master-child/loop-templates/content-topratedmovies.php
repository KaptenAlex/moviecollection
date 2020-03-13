<?php

$args = [
  'post_type' 		 => 'movie',
  'posts_per_page' => 5,
  'meta_key' => '_kksr_ratings',
  'orderby' => 'meta_value_num',
  'order' => 'DESC'
];
$topRatedQuery = new WP_Query( $args );
?>
<h1>Top 5 rated movies</h1>
<div class="top-rated-movies">
<?php
if ($topRatedQuery -> have_posts() ) :
  $iteration = 0;
  while ($topRatedQuery -> have_posts() ) : $topRatedQuery -> the_post();
  $iteration++; ?>
    <div class="movie">
      <h2><?php echo $iteration . '.'; ?></h2>
      <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="Movie image">
      <a href="<?php echo get_post_permalink(); ?>">
        <h4><?php echo get_the_title(); ?></h4>
      </a>
      <p>Rating: <?php echo get_post_meta(get_the_ID(), '_kksr_ratings', true) ?></p>
    </div>
    <?php
  endwhile;
  wp_reset_postdata();
  else : ?>
    <?php get_template_part( 'loop-templates/content', 'none' ); ?>
<?php endif; ?>
</div>
