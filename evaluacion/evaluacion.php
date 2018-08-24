<?php 
/*
Plugin Name: Evaluacion
Plugin URI:
Description: Plugin de prueba para evaluación del curso.
Author: Hernando J. Chaves
Author URI:
License: GPL2
License URI
Text Domain: evaluacion
*/
	if(!defined('ABSPATH')) exit;

	require_once plugin_dir_path(__FILE__) .'includes/posttypes.php';

	require_once plugin_dir_path(__FILE__) . 'includes/meta_eva.php';

	require_once plugin_dir_path(__FILE__) . 'includes/eva_rol.php';
	register_activation_hook(__FILE__,'eva_add_rol');
	register_deactivation_hook(__FILE__,'eva_remove_rol');

	register_activation_hook(__FILE__,'eva_add_capabilities');
	register_deactivation_hook(__FILE__,'eva_remove_capabilities');

	require_once plugin_dir_path(__FILE__) . 'includes/shortcode.php';
	require_once plugin_dir_path(__FILE__) . 'includes/function.php';

	require_once plugin_dir_path(__FILE__) . 'includes/scripts.php';

	require_once plugin_dIr_path(__FILE__). 'includes/resultados.php';