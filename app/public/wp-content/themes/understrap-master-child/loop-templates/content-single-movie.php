<?php
/**
 * Single post partial template
 *
 * @package understrap
 */

// Exit if accessed directly.
defined( 'ABSPATH' ) || exit;
?>

<article <?php post_class(); ?> id="post-<?php the_ID(); ?>">

	<header class="entry-header">

		<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>

	</header><!-- .entry-header -->
	<br>
	<?php
		$movie_poster = esc_url( get_post_meta( $post->ID, '_movie_poster', true ) ); ?>
		<div class="movie_poster">
			<img src="<?php echo $movie_poster; ?>" alt="Movie poster">
		</div>
	<div class="entry-content">
		<div class="published">
			<br>
			<h2>Published</h2>
			<?php
			$movie_published = get_post_meta( $post->ID, '_movie_published', true );
			if (!empty($movie_published)) : ?>
				<p><?php echo $movie_published ?></p>
			<?php else : ?>
				<p>No date available</p>
			<?php	endif; ?>
			</div>
		<div class="actors">
			<h2>Actors</h2>
				<?php
				$movie_actors = get_post_meta( $post->ID, '_movie_actors', true );
				if (!empty($movie_actors)) : ?>
				<p><?php echo $movie_actors; ?></p>
			<?php else : ?>
					<p>No information available</p>
				<?php endif; ?>
		</div>
		<div class="synopsis">
			<h1>Synopsis</h1>
		<?php the_content(); ?>
		</div>
		<?php
		wp_link_pages(
			array(
				'before' => '<div class="page-links">' . __( 'Pages:', 'understrap' ),
				'after'  => '</div>',
			)
		);
		?>

	</div><!-- .entry-content -->

	<footer class="entry-footer">

		<?php understrap_entry_footer(); ?>

	</footer><!-- .entry-footer -->

</article><!-- #post-## -->
