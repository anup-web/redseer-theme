<?php get_header(); ?>


<div id="content">
	<div class="page_dy">
				
		<div class="container">					
			<div class="row top-mrg-lg btm-mrg-lg">		
				<div class="col-sm-12">
					<div class="btm-mrg-md">
						<?php if ( function_exists( 'breadcrumb_trail' ) ) breadcrumb_trail(); ?>
					</div>	
					
					<div class="row btm-mrg-lg">	
						<div class="col-sm-12">							
								<?php if( have_posts() ) : while( have_posts() ) : the_post(); ?>
									<?php the_content(); ?>
								<?php endwhile; else: ?>
									<p><?php _e('Sorry, this page does not exist.'); ?></p>
								<?php endif; ?>							
						</div>	<!-- /destination-description -->
					</div>
					
				</div>
			</div>
		</div>		
	</div>	<!-- /.page end -->		
</div>	


<?php get_footer(); ?>
