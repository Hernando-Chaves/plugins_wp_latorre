<?php 
/*
Plugin Name: Evaluacion Examen
Plugin URI:
Description: Plugin ADDON de prueba para evaluación del curso.
Author: Hernando J. Chaves
Author URI:
License: GPL2
License URI
Text Domain: evaluacion
*/
if(!defined('ABSPATH')) exit;
/**
 * Verifica la existencia  del plugin padre 
 */
  
	if(!function_exists('eva_verify_activation'))
	{
		function eva_verify_activation()
		{
			if(!function_exists('eva_posttype'))
			{
	           add_action('admin_notices','eva_error_activate');
	           deactivate_plugins(plugin_basename(__FILE__));
			}
		}
		add_action('admin_init','eva_verify_activation' );
	}

/**
 * Envia noificación de error cuando el plugin padre no está instalado 
 */
  if(!function_exists('eva_error_activate'))
  {
  	function eva_error_activate()
  	{
  		$clase   = 'notice notice-error';
  		$mensaje = 'Eror en la activación. Debes instala primero el plugin Evaluación';
  		printf('<div class="%1$s"><p>%2$s</p></div>',esc_attr($clase),esc_html($mensaje));
  	}
  	
  }
/**
 * Incluimos el archivo que crea los post type para examenes 
 */
  require_once plugin_dir_path(__FILE__) . 'includes/posttype.php';

/**
* Incluimos el archivo para las capabilities 
*/
  require_once plugin_dir_path(__FILE__) .'includes/roles.php';
  register_activation_hook(__FILE__,'eva_add_previas_capabilities');
  register_deactivation_hook(__FILE__,'eva_remove_previas_capabilities');

/**
 * Agrega metaboxes al plugin 
 */
  require_once plugin_dir_path(__FILE__) . 'includes/metaboxes.php';

/**
 * Agrega los scripts CSS Y JS del plug9in 
 */
  require_once plugin_dir_path(__FILE__) . 'includes/scripts.php';
    













 /**
 * Funcion  para detectar errores en el plugin . Crea un archivo log 
 */
    if(!function_exists('bwc_activation_add_log'))
 	{
 		function bwc_activation_add_log()
 		{
 			file_put_contents( __DIR__ . '/my_loggg.txt', ob_get_contents() );
 		}
 	}
 	register_activation_hook( __FILE__, 'bwc_activation_add_log' );