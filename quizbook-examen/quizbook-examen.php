<?php 
/*
Plugin Name: Quizbook Examen
Plugin URI:
Description: Plugin Addon para el plugin Quzbook, crea xamees para tus quiz.
Version: 1.0.0
Author: Hernando J. Chaves
Author URI:
License: GPL2
License URI: https://www.gnu.org/licenses/gpl-2.0.html
Text Domain: quizbook
*/

if(!defined('ABSPATH')) exit;

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

/**
 * Comprueba si existe alguna funcion en el plugin Quiz 
 */
	if(!function_exists('bwc_examen_revisar'))
	{
		function bwc_examen_revisar()
		{
			if(!function_exists('bwc_quiz_post_type'))
			{
				add_action('admin_notices','bwc_error_activar_examen');
				deactivate_plugins(plugin_basename( __FILE__ ));
			}
		}
		add_action('admin_init','bwc_examen_revisar' );
	}
  
/**
 * Enviamos notificacion en caso de que no exista el plugin Quiz 
 */
	if(!function_exists('bwc_error_activar_examen'))
	{
		function bwc_error_activar_examen()
		{
			$clase = 'notice notice-error';
			$mensaje = 'Error en la activación. Es necesario tener instalado el plugin Quiz';
			printf('<div class="%1$s"><p>%2$s</p></div>',esc_attr($clase),esc_html($mensaje));
		}
		
	}
  

/**
 * Incluimos el archivo que crea el post type al activar el cplugin 
 */
	require_once plugin_dir_path(__FILE__) . 'includes/postypes.php';
	register_activation_hook(__FILE__,'quizbook_examenes_rewrite_flush');



/**
 * Añade capabilities a quizbook examenes 
 */
  require_once plugin_dir_path(__FILE__) .'includes/roles.php';
  register_activation_hook(__FILE__,'bwc_add_examenes_capabilities');
  register_deactivation_hook(__FILE__,'bwc_remove_examenes_capabilities');

/**
 * Añade metaboxes a quizbook examenes 
 */
  require_once plugin_dir_path(__FILE__) . 'includes/metaboxes.php';

/**
 * Registra los scripts del plugin 
 */
  require_once plugin_dir_path(__FILE__) . 'includes/scripts.php';

/**
 * Crea el shortcode para Examenes 
 */
  require_once plugin_dir_path(__FILE__) .'includes/shortcode.php';

 /**
 * Agrega columnas al admin 
 */
  require_once plugin_dir_path(__FILE__) .'includes/columnas.php';