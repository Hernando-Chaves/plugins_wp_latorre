<?php 
if(!defined('ABSPATH')) exit;

if(!function_exists('solo_filtrar_rtas'))
{
	function solo_filtrar_rtas($llave)
	{
		return strpos($llave,'solo_');
	}
}
