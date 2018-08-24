<?php 
  if(!defined('ABSPATH')) exit;

/**
 * Cre los capabilities de Previas 
 */
 if(!function_exists('eva_add_previas_capabilities'))
  {
  	function eva_add_previas_capabilities()
  	{
  		$roles = ['administrator','editor','evaluacion'];

  		foreach($roles as $the_role)
  		{
  			$role = get_role($the_role);
  			$role->add_cap('read');
  			$role->add_cap('edit_previas');
  			$role->add_cap('publish_previas');
  			$role->add_cap('edit_other_previas');
  			$role->add_cap('edit_published_previas');
  		}

  		$manage_role = ['administrator','editor'];

  		foreach($manage_role as $the_role)
  		{
  			$role = get_role( $the_role );
  			$role->add_cap('read_private_previas');
  			$role->add_cap('edit_private_previas');
  			$role->add_cap('edit_others_previas');
  			$role->add_cap('delete_previas');
  			$role->add_cap('delete_others_previas');
  			$role->add_cap('delete_private_previas');
  			$role->add_cap('delete_published_previas');
  		}
  	}
  	
  }
/**
 * Remueve los capabilities de Previas 
 */
  if(!function_exists('eva_remove_previas_capabilities'))
  {
  	function eva_remove_previas_capabilities()
  	{
  		$roles = ['administrator','editor'];
  		
  		foreach($roles as $the_role)
  		{
  			$role = get_role($the_role);
  			$role->remove_cap('read_private_previas');
  			$role->remove_cap('edit_others_previas');
  			$role->remove_cap('edit_private_previas');
  			$role->remove_cap('delete_previas');
  			$role->remove_cap('delete_others_previas');
  			$role->remove_cap('delete_published_previas');
  			$role->remove_cap('delete_private_previas');
  		}
  	}
  	
  }
