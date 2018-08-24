<?php 
  if(!defined('ABSPATH')) exit;

/**
 * Agrega scripts al admin 
 */
  if(!function_exists('bwc_examen_scripts'))
  {
  	function bwc_examen_scripts($hook)
  	{
  		global $post;

  		if($hook = 'post-new.php' || $hook = 'post.php')
  		{
  			if($post->post_type == 'examenes')
  			{
         		wp_enqueue_style( 'chosen_css', plugins_url('../assets/css/chosen.min.css',__FILE__ ));
         		wp_enqueue_script('chosen_js',plugins_url('../assets/js/chosen.jquery.min.js',__FILE__),['jquery'],'1.8.7',true);
         		wp_enqueue_script('scripts_js',plugins_url('../assets/js/scriptsJs.js',__FILE__),['jquery'],'1.0',true);
  			}
  		}
  	}
  	add_action('admin_enqueue_scripts','bwc_examen_scripts' );
  }