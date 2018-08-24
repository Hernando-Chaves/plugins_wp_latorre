<?php 
  if(!defined('ABSPATH')) exit;
/**
 * Crea los capabilities del post type examenes 
 */
  if(!function_exists('bwc_add_examenes_capabilities'))
  {
  	function bwc_add_examenes_capabilities()
  	{
  		$roles = ['administrator','editor','quizbook'];

  		foreach($roles as $the_role)
  		{
  			$role = get_role($the_role);
  			$role->add_cap('read');
  			$role->add_cap('edit_examenes');
  			$role->add_cap('publish_examenes');
  			$role->add_cap('edit_others_examenes');
  			$role->add_cap('edit_published_examenes');
  		}

  		$manager_role = ['administrator','editor'];

  		foreach($manager_role as $the_role)
  		{
  			$role = get_role($the_role);
        $role->add_cap('read_private_examenes');
        $role->add_cap('edit_other_examenes');
        $role->add_cap('edit_private_examenes');
  			$role->add_cap('delete_examenes');
        $role->add_cap('delete_others_examenes');
        $role->add_cap('delete_private_examenes');
        $role->add_cap('delete_published_examenes');
  		}
  	}
  	
  }

/**
 * Remueve los capabilities 
 */
  if(!function_exists('bwc_remove_examenes_capabilities'))
  {
  	function bwc_remove_examenes_capabilities()
  	{
  		$manager_role = ['administrator','editor'];

  		foreach($manager_role as $the_role)
  		{
  			$role = get_role($the_role);
  			$role->remove_cap('read');
  			$role->remove_cap('edit_examenes');
  			$role->remove_cap('delete_examenes');
  			$role->remove_cap('publish_examenes');
  			$role->remove_cap('edit_other_examenes');
  			$role->remove_cap('edit_private_examenes');
  			$role->remove_cap('read_private_examenes');
  			$role->remove_cap('delete_others_examenes');
  			$role->remove_cap('edit_published_examenes');
  			$role->remove_cap('delete_private_examenes');
  			$role->remove_cap('delete_published_examenes');
  		}
  	}
  	
  }

