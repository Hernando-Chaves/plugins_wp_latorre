<?php 
	if(!defined('ABSPATH')) exit;
/**
 *AGREGA ESTILOS AL FRONT END 
 */
  
 	if(!function_exists('bwc_add_front_scripts'))
	{
		function bwc_add_front_scripts()
		{
			wp_enqueue_style( 'bwc_css', plugins_url('../assets/css/bwc.css',__FILE__));
			wp_enqueue_script('bwc_js',plugins_url('../assets/js/bwc.js',__FILE__),['jquery'],'1.0.0',true);
			wp_localize_script('bwc_js','admin_url',[
				'ajax_url'=> admin_url('admin-ajax.php')
			]);
		}
	}
	add_action('wp_enqueue_scripts','bwc_add_front_scripts');
/**
 *AGREGA ESTILOS AL ESCRITORIO 
 */
  
	if(!function_exists('bwc_add_admin_scripts'))
	{
		function bwc_add_admin_scripts($hook)
		{
            global $post;

            if($hook == 'post-new.php' || $hook == 'post.php')
            {
            	if($post->post_type === 'quiz')
            	{
					wp_enqueue_style('bwc_admin_css', plugins_url('../assets/css/bwc_admin.css',__FILE__));
            	}
            }
		}
	}
	add_action('admin_enqueue_scripts','bwc_add_admin_scripts' );