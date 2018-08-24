<?php 
if(!defined('ABSPATH')) exit;

if(!function_exists('bwc_filtra_rtas'))
{
	function bwc_filtra_rtas($llave)
	{
		return strpos($llave,'bwc_');
	}
}
