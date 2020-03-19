<?php

?>
<h1>All movies (A-Z)</h1>
<div class="movies">
<?php
if ( have_posts() ) :
  while ( have_posts() ) :  the_post();
  $rating = ( 2 * (round(get_post_meta(get_the_ID(), '_kksr_avg', true) , 1) ) ); ?>
    <div class="movie-box">
      <?php $movie_poster = esc_url( get_post_meta( $post->ID, '_movie_poster', true ) ); ?>
      <img class="movie-image" src="<?php echo $movie_poster ?>" alt="Movie image">
      <a href="<?php echo get_post_permalink(); ?>">
        <h4 class="movie-link"><?php echo get_the_title(); ?></h4>
      </a>
      <?php if ( !empty( get_post_meta( get_the_ID(), '_imdb_id', true ) ) ) : ?>
        <div class="imdb-icon"></div>
      <?php endif; ?>
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
