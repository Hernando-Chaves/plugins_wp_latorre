<?php 
/*
Plugin Name: Practica
Plugin URI:
Description: Plugin de prueba para practicaluación del curso.
Author: Hernando J. Chaves
Author URI:
License: GPL2
License URI
Text Domain: practica
*/
	if(!defined('ABSPATH')) exit;

	require_once plugin_dir_path(__FILE__) .'includes/posttypes.php';

	require_once plugin_dir_path(__FILE__) . 'includes/meta_practica.php';

	require_once plugin_dir_path(__FILE__) . 'includes/practica_rol.php';
	register_activation_hook(__FILE__,'practica_add_rol');
	register_deactivation_hook(__FILE__,'practica_remove_rol');

	register_activation_hook(__FILE__,'eva_add_capabilities');
	register_deactivation_hook(__FILE__,'practica_remove_capabilities');

	require_once plugin_dir_path(__FILE__).'includes/shortcode.php';
	require_once plugin_dir_path(__FILE__).'includes/functions.php';

	require_once plugin_dir_path(__FILE__).'includes/scripts.php';