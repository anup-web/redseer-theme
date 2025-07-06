<?php get_header(); ?>


<div id="content">
	<div class="page_dy">	
		
		<?php if( have_posts() ) : while( have_posts() ) : the_post(); ?>
			<?php the_content(); ?>
		<?php endwhile; else: ?>
			<p><?php _e('Sorry, this page does not exist.'); ?></p>
		<?php endif; ?>
		
		
	</div>	<!-- /.page end -->		
</div>	

<?php get_footer(); ?>
