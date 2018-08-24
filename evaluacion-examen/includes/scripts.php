<?php 
if(!defined('ABSPATH')) exit;

/**
 * Incluye los scripts 
 */
  if(!function_exists('eva_add_previa_scripts'))
  {
  	function eva_add_previa_scripts($hook)
  	{
  		global $post;

        if($hook = 'post-new.php' || $hook = 'post.php')
        {
        	if($post->post_type == 'previa')
        	{
        		wp_enqueue_style('chosenCss',plugins_url('../assets/css/chosen.min.css',__FILE__));
        		wp_enqueue_script('chosenJs',plugins_url('../assets/js/chosen.jquery.min.js',__FILE__),['jquery'],'1.8.7',true);
        		wp_enqueue_script('customJs',plugins_url('../assets/js/custom.js',__FILE__),['jquery'],'1.0.0',true);
        	}
        }
  	}
  	add_action('admin_enqueue_scripts','eva_add_previa_scripts' );
  }