<?php

$args = [
  'post_type' 		 => 'movie',
  'posts_per_page' => -1,
  'orderby'        => 'title',
  'order'          => 'ASC'
];
$topRatedQuery = new WP_Query( $args );
?>
<h1>All movies (A-Z)</h1>
<div class="movies">
<?php
if ($topRatedQuery -> have_posts() ) :
  while ($topRatedQuery -> have_posts() ) : $topRatedQuery -> the_post();
  $rating = round(get_post_meta(get_the_ID(), '_kksr_avg', true), 1); ?>
    <div class="movie-box">
      <img class="movie-image" src="<?php echo get_the_post_thumbnail_url(); ?>" alt="Movie image">
      <a href="<?php echo get_post_permalink(); ?>">
        <h4 class="movie-link"><?php echo get_the_title(); ?></h4>
      </a>
      <p>Rating:
      <?php
      $ratedOrNot = empty($rating) ? 'No rating yet' : $rating;
      echo $ratedOrNot;
      ?>
      </p>
    </div>
    <?php
  endwhile;
  wp_reset_postdata();
  else : ?>
    <?php get_template_part( 'loop-templates/content', 'none' ); ?>
<?php endif; ?>
</div>
