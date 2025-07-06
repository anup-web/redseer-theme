<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'surya' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '2_ePvJPga|iJX&C$Gbx=n&_^7 _y7/N-p!3k0v!yB$Be?_JX3cRQGX&LSI6M@TrA' );
define( 'SECURE_AUTH_KEY',  '(fU(%LdfA4+^-~(E;zez_5LD[AAB>Izp8[DZc*UDWo-8jkc.q~@|<h@sPNEXMItF' );
define( 'LOGGED_IN_KEY',    '8T-[~|X>YgL922<)#Z1JN+_MLElG28)WeVil)j0^bBM`Jxty&Zv{q)4 {e=j3EL|' );
define( 'NONCE_KEY',        'EjJs.KnOv9?;:Cqc/t2!x[t0fl9])X}:Dd;M^9mjp5(o0{0UXJPkM86So0r0>5S+' );
define( 'AUTH_SALT',        'p(N[~%mP;Pss_ej7}WSe^jJO<#|mz7v=M!$gijqc#eRd<:M&4%gG)xtH+i}k#m}l' );
define( 'SECURE_AUTH_SALT', 'W5rMA7qSEgef6~9 O>=P%Uxc+m}kM|WO%;GJ%Gc=%<,`|g5BdKBwmR3[ycE;#luy' );
define( 'LOGGED_IN_SALT',   '[=} _h>bPq{PF-e1Vf_<]c/x>685;)~$+)>UPpK4.-^9E5XB@0idBYLA|lcvaotq' );
define( 'NONCE_SALT',       '^i/oXdX/I]mzTK/wB*h[}+~/BP075zc_MGA}U?(~6Hk6#$eWHfYf@^2tbb_neEnw' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
