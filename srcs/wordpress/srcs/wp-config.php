<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wpdata' );

/** MySQL database username */
define( 'DB_USER', 'wp' );

/** MySQL database password */
define( 'DB_PASSWORD', 'wppass' );

/** MySQL hostname */
define( 'DB_HOST', '10.107.84.226' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'S:no%w`wYWj`8+K@Rp)H6GY[>~g^Q~/-PCM;y~t/m;*G7C]FHbvodaRVMpucE1{}' );
define( 'SECURE_AUTH_KEY',  'Xb]gNfvKLz:j;rrRS^7LqZS4$ZIY[fP[<,:k7IjI?dU;-m>y%ia;)Lsg/Myso$~i' );
define( 'LOGGED_IN_KEY',    'to/W>?.c@Fl?$C&%hChyetL<O9wb@NdCz`~:KZ;1u;9gQ)f&6X?|@I9K]E7L%Itg' );
define( 'NONCE_KEY',        '<Hw~0IsME.andneq)v>5k|-b[(#pfbP&^<$dW|-Pi0*;cRn^nea<wAm{Y-o~pEUg' );
define( 'AUTH_SALT',        'J6k5q9UcR9MGnUPEe(xTu opj8w4J$+Lh~ynvm&Vd|`#i<WG!rUHh,FE*h!KY2h|' );
define( 'SECURE_AUTH_SALT', 'H/nNZY}R]k9 C?2 .9.:iMtXCj/Y@O/kHT0kzKq97N0)]uxXbDyqYfq_6z-Pvcx(' );
define( 'LOGGED_IN_SALT',   '7Ef/TI!lqK~#rmO<|i!*X@emm)Da$YBJ:3u4JMjqludf.Wjs+zA?4CN)ARVP[VRh' );
define( 'NONCE_SALT',       'gCxIrcdE[D6AU)I:82da^y/NI}(Nk,q=Jc7vv=N!_u|@Ukk9L9L[9&>Ldv1%%[wz' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
