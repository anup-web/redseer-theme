<?php
include 'wp_bootstrap_navwalker.php';

function aranax_wordpress_version(){
	return "";
}
add_filter("the_generator", "aranax_wordpress_version");



function aranax_scripts_with_jquery()
{
	//wp_enqueue_script( 'jquery-script', get_template_directory_uri() . '/js/jquery.min.js', array( 'jquery' ), 1.0, true );
	
}


add_action( 'wp_enqueue_scripts', 'aranax_scripts_with_jquery' );


// Remove WP Version From Styles	
add_filter( 'style_loader_src', 'aranax_remove_ver_css_js', 9999 );
// Remove WP Version From Scripts
add_filter( 'script_loader_src', 'aranax_remove_ver_css_js', 9999 );

// Function to remove version numbers
function aranax_remove_ver_css_js( $src ) {
	if ( strpos( $src, 'ver=' ) )
		$src = remove_query_arg( 'ver', $src );
	return $src;
}


function aranax_register_menu() {
  register_nav_menu('side-menu',__( 'Side Menu' ));
}
add_action( 'init', 'aranax_register_menu' );


/**
 * Filter the "read more" excerpt string link to the post.
 *
 * @param string $more "Read more" excerpt string.
 * @return string (Maybe) modified "read more" excerpt string.
 */
function aranax_excerpt_more( $more ) {
    return sprintf( '<a class="read-more" href="%1$s">%2$s</a>',
        get_permalink( get_the_ID() ),
        __( 'Read More', 'textdomain' )
    );
}
add_filter( 'excerpt_more', 'aranax_excerpt_more' );


remove_filter( 'the_content', 'wpautop' );

function aranax_theme_url_shortcode( $attrs = array (), $content = '' ) {
     
    $theme = ( is_child_theme() ? get_stylesheet_directory_uri() : get_template_directory_uri() );
 
    return $theme;
     
}
add_shortcode('theme', 'aranax_theme_url_shortcode' );

?>