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
define( 'DB_NAME', 'database_name_here' );

/** Database username */
define( 'DB_USER', 'username_here' );

/** Database password */
define( 'DB_PASSWORD', 'password_here' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define( 'AUTH_KEY',         '&QD~K+y#^,vY+ +_fWkK1s==Pb-mn+&]S{.YJ(Q_YL.!+r-0@JNuA>h]Wc7$/ek]' );
define( 'SECURE_AUTH_KEY',  'CzufGN+(l{#K^%UUZ](3Y=_%Pihd?.mMm*|+hK_4Kp8g>,KpoM1J=W:w=Ag[2,z7' );
define( 'LOGGED_IN_KEY',    '<UmP+c_.U(`dC2W?Hp^!I TvZP,mU%Zv?a`@]#4(4|YCtpGeHN g|y#]vZa|P-Of' );
define( 'NONCE_KEY',        'j M<j2q7B`er-5Hgr>Y:5Bu6hy}0<?$D;l@;,$m1Y,1t)R.s?|$8mAe`d:{G$)DZ' );
define( 'AUTH_SALT',        'c+d-v`zYSxL:y>>L+^&-[;gE2Yxfd[[TZ+b/)%k5Ip/e(>t1UwUO;k6U`Z;SzU1:' );
define( 'SECURE_AUTH_SALT', '3}voDvU7Q,9OfN-APug]@-1m_oEn.c<Q!wBZ^-;_[X+YLs<>G+&>=D>  z+3.uA9' );
define( 'LOGGED_IN_SALT',   'G+5VKqH`3,,+Cc/e/O`dG1bEU]ose6`+klX[|FUFQo_!NSLa4g nX]&}1xrK[F-V' );
define( 'NONCE_SALT',       'nlO5I8A~]%UIl0:U6s5LJ*cX}bmF,N4tFsf>H=3*K8fQT}RIWpbRddJ7S=EJl,^o' );

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
