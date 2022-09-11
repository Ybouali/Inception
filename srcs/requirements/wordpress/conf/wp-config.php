<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'ybouali' );

/** Database password */
define( 'DB_PASSWORD', 'ybouali@1337' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('FS_METHOD', 'direct');

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
define('AUTH_KEY',         '8$fzaXjc.DgbTKXToHRy~u1X|WPc{|M3#t`$_c/1+@=mVqb7n<k|Ck4SYa@u|VDQ');
define('SECURE_AUTH_KEY',  '{X0N.[y?E|WO^).n!6KPFmkH5eh^E|WeVHo#EmnAe?3ojl]/]+y?NzN>^;_`&`S*');
define('LOGGED_IN_KEY',    'Va=+kzxK+:Q/|: fRunU>2p)*j@SqK$H5*{kQ7^S|N7&( ke.=E+Vd~Q(YyW/.d7');
define('NONCE_KEY',        'i|+UZ)~.S^?;B4 q)3/0U4,4zKCRlg5mG`$]|ks^ Gf!T-]MmKl:-qm.kWL&C+`~');
define('AUTH_SALT',        '8dLu2d_PbyUZ1|aNO.q{=uulrqv@J;2{O_IB+[-V~qN4{yRYy^ML.US$A 28O@Xs');
define('SECURE_AUTH_SALT', 'G2Ar+Db^TqQKlxv(V{AQZa~^uP`#A9w?1&yRb}>L5#_{Z`]v+9v^m+3H<`a)TuS%');
define('LOGGED_IN_SALT',   '81c|^,2x9Rm?T-o-^_= bc79>Nl?^&D<29C/)S6^D~L&m`iiKS:F=UrgG3i>%+N-');
define('NONCE_SALT',       'szr2Y&<0*;im!-fQ4k$%D;5W/+Hi_F85>p}&h_p-r&L[acXHFYlI||+Q;y#+[[z%');

/**#@-*/

/**
 * WordPress database table prefix.
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

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';