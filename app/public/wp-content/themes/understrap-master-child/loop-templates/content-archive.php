<?php

$args = [
  'post_type' 		 => 'movie',
  'posts_per_page' => -1,
  'orderby'        => 'title',
  'order'          => 'ASC',
];

$moviesQuery = new WP_Query( $args );
?>
<h1>All movies (A-Z)</h1>
<div class="movies">
<?php
if ($moviesQuery -> have_posts() ) :
  while ($moviesQuery -> have_posts() ) : $moviesQuery -> the_post();
  $rating = round(get_post_meta(get_the_ID(), '_kksr_avg', true), 1);
  $movie_poster = esc_url( get_post_meta( $post->ID, '_movie_poster', true ) ); ?>
    <div class="movie-box">
      <img class="movie-image" src="<?php echo $movie_poster ?>" alt="Movie image">
      <a href="<?php echo get_post_permalink(); ?>">
        <h4 class="movie-link"><?php echo get_the_title(); ?></h4>
      </a>
      <?php if (!empty(get_post_meta(get_the_ID(), '_imdb_id', true))) : ?>
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
      else :
        get_template_part( 'loop-templates/content', 'none' );
      endif; ?>
</div>
