<?php 
	if(!defined('ABSPATH')) exit;

	if(!function_exists('eva_filtra_rtas'))
	{
		function eva_filtra_rtas($llave)
		{
			return strpos($llave,'rt_');
		}
	}
	