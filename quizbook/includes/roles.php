<?php 
/**
 * CREAMOS UN NUEVO ROL 
 */ 
	if(!function_exists('bwc_add_role'))
	{
		function bwc_add_role()
		{
			add_role('quizbook','Quizbook');
		}
	}
/**
 * ELIMINAMOS EL ROL 
 */
  

	if(!function_exists('bwc_remove_role'))
	{
		function bwc_remove_role()
		{
			remove_role( 'quizbook' );
		}
	}
/**
 * AGREGAMOS CAPABILITIES AL NUEVO ROL 
 */
  
    if(!function_exists('bwc_add_capabilities'))
    {
    	function bwc_add_capabilities()
    	{
    		$roles = ['administrator','editor','quizbook'];

    		foreach ($roles as $the_role) 
    		{
    			$role = get_role($the_role);

    			$role->add_cap('read');
    			$role->add_cap('edit_quizes');
    			$role->add_cap('publish_quizes');
    			$role->add_cap('edit_published_quizes');
    			$role->add_cap('edit_others_quizes');
    			$role->add_cap('delete_others_quizes');
    		}

    		$manager_roles = ['administrator','editor'];

    		foreach($manager_roles as $the_role)
    		{
    			$role = get_role( $the_role );

    			$role->add_cap('read_private_quizes');
    			$role->add_cap('edit_others_quizes');
    			$role->add_cap('edit_private_quizes');
    			$role->add_cap('delete_quizes');
    			$role->add_cap('delete_published_quizes');
    			$role->add_cap('delete_private_quizes');
    			$role->add_cap('delete_others_quizes');
    		}
    	}
    }

 /**
  *REMOVEMOS CAPABILITIES 
  */
   
 	if(!function_exists('bwc_remove_capabilities'))
 	{
 		function bwc_remove_capabilities()
 		{
 			$manager_roles = ['administrator','editor'];

 			foreach($manager_roles as $the_role)
 			{
 				$role = get_role($the_role);

 				$role->remove_cap('read');
 				$role->remove_cap('edit_quizes');
 				$role->remove_cap('publish_quizes');
 				$role->remove_cap('edit_published_quizes');
 				$role->remove_cap('read_private_quizes');
 				$role->remove_cap('edit_others_quizes');
 				$role->remove_cap('edit_private_quizes');
 				$role->remove_cap('delete_quizes');
 				$role->remove_cap('delete_private_quizes');
 				$role->remove_cap('delete_published_quizes');
 				$role->remove_cap('delete_others_quizes');
 			}
 		}
 	}
 	
    	
			
