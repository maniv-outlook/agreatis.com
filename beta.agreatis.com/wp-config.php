<?php
define('WP_AUTO_UPDATE_CORE', 'minor');// This setting is required to make sure that WordPress updates can be properly managed in WordPress Toolkit. Remove this line if this WordPress website is not managed by WordPress Toolkit anymore.
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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'agreatis' );

/** MySQL database username */
define( 'DB_USER', 'agreatis' );

/** MySQL database password */
define( 'DB_PASSWORD', 'Password$100' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost:3306' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', 'HZ;4Ye-_!VNH9XnuY[jV|7H)9k2j#691:7a!q9LN696/QmJ7[%~znFb1qWjZoG17');
define('SECURE_AUTH_KEY', 's55J(Z|z!1QKah@rxPFfF|:zFO4(8hY(36[y)37(&5OAPTU2~4L1u~NW7w6BzqQ4');
define('LOGGED_IN_KEY', 'qh36@~p2j4PQ+8+;Ib:lV~xMMP|re!/O%fCiD2pn78~n)H;HH*48TQ996w6w7:OR');
define('NONCE_KEY', 'fJPR&ZhNx3W|%@U9_)1hk_6pARB/_Z9p6[10[1148)6gm#nJl6qC#M*8WsjiR52j');
define('AUTH_SALT', 'R51*42RitRZNp[890ci#0t4q-95i|fU%7!*%3n~(J8kA*J_3jY7@VzV/Xk02e%KW');
define('SECURE_AUTH_SALT', 's6cM521/jX]i/R+i1b)(s0/EwaA#4W2NW8t2G;4f:*o~r&8ri4L9Szw1j1[[7&rF');
define('LOGGED_IN_SALT', 'ZRUK%kLsO0D7i%;~*dwDp:PTP63GiAi7&9Qg0X8v83H#)8U5~@5gu2O|Zd;p_dmX');
define('NONCE_SALT', 'oxTjdm#m_2Q|3;FgJRxnSeFFs~]~0c*8+Wii;!%/1aRGIh|7UEPt537AaFkeTp_6');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


define('WP_ALLOW_MULTISITE', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) )
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
