<?php 
if(!defined('ABSPATH')) exit;

/**
 * Crea columnas adicionales en la sección de administrador de examenes 
 */
  
if(!function_exists('bwc_examen_add_columnas'))
{
	function bwc_examen_add_columnas($defaults)
	{
		$defaults['shortcode'] = 'shortcode';
		return $defaults;		
	}
	add_filter('manage_examenes_posts_columns','bwc_examen_add_columnas' );
}

/**
 * Muestra el valor de la columna creada 
 */
  if(!function_exists('bwc_show_column_value'))
  {
  	function bwc_show_column_value($columna)
  	{
  		if($columna === 'shortcode')
  		{
  			$examen_id = get_the_ID();
  			echo "[quizbook_examen preguntas='' orden='' id='$examen_id']";
  		}
  	}
  	add_filter('manage_examenes_posts_custom_column','bwc_show_column_value' );
  }