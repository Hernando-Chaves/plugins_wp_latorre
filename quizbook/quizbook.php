<?php 
/*
Plugin Name: Quizbook
Plugin URI:
Description: Plugin de aprendizaje del curso de Juan P. De La Torre en Udemy
Version: 1.0.0
Author: Hernando J. Chaves
Author URI:
License: GPL2
License URI: https://www.gnu.org/licenses/gpl-2.0.html
Text Domain: quizbook
*/

    if(!defined('ABSPATH')) exit;

	require_once plugin_dir_path(__FILE__) . 'includes/posttypes.php';

/**
 * REGENERA LAS REGLAS DE LAS URLS AL ACTIVAR 
 */
  
	register_activation_hook(__FILE__,'bwc_rewrite_flush');

/**
 *AÑADE METABOXES A LOS QUIZES 
 */
  
	require_once plugin_dir_path(__FILE__) . 'includes/metaboxes.php';

/**
 *AGREGA UN NUEVO ROL 
 */
  
    require_once plugin_dir_path(__FILE__) .'includes/roles.php';
    register_activation_hook( __FILE__,'bwc_add_role' );
    register_deactivation_hook(__FILE__, 'bwc_remove_role');

/**
 *AGREGAMOS CAPABILITIES AL NUEVO ROL 
 */
  
	register_activation_hook(__FILE__,'bwc_add_capabilities');
	register_deactivation_hook(__FILE__,'bwc_remove_capabilities');
/**
 *CREA SHORTCODES 
 */
  
    require_once plugin_dir_path(__FILE__) . 'includes/shortcode.php';
    require_once plugin_dir_path(__FILE__) . 'includes/functions.php';

/**
 *AGREGA SCRIPTS 
 */
    require_once plugin_dir_path(__FILE__) . 'includes/scripts.php';

/**
 *DA LOS RESULTADOS DEL EXAMEWN 
 */
    require_once plugin_dir_path(__FILE__) . 'includes/resultados.php';
  


	