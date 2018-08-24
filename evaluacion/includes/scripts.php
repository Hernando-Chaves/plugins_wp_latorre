<?php 
	if(!defined('ABSPATH')) exit;
/**
 *AGREGA ESTILOS Y JS AL FRONT END 
 */
  
 	if(!function_exists('evaluacion_front_script'))
	{
		function evaluacion_front_script()
		{
			wp_enqueue_style('eva_css',plugins_url('../assets/css/evaluacion.css',__FILE__));
			wp_enqueue_script('eva_js',plugins_url('../assets/js/eva.js',__FILE__),['jquery'],'1.0.0',true);
			// wp_localize_script('eva_js','eva_url',[
			// 	'ajax_url' => admin_url('admin-ajax.php'),
			// 	'test'=> 'Yeaaaaaaaaaaa',
			// ]);
			wp_localize_script('eva_js','admin_url',[
				'ajax_url' => admin_url('admin-ajax.php')
			]);
		}
	}
	add_action('wp_enqueue_scripts','evaluacion_front_script' );
/**
 *AGREGA SCRIPTS AL ADMIN 
 */
  
if(!function_exists('eva_admin_scripts'))
{
	function eva_admin_scripts($hook)
	{
		global $post;
		if($hook == 'post-new.php' || $hook == 'post.php')
		{
			if($post->post_type == 'evaluacion')
			{
		        wp_enqueue_style('eva_admn_css',plugins_url('../assets/css/eva_admin.css',__FILE__));
			}
		}
	}
}
add_action('admin_enqueue_scripts','eva_admin_scripts' );