<?php 

	if(!function_exists('practica_add_rol'))
	{
		function practica_add_rol()
		{
			add_role( 'practica2', 'Practica 2');
		}
	}

	if(!function_exists('practica_remove_rol'))
	{
		function practica_remove_rol()
		{
			remove_role( 'practica2');
		}
	}

	if(!function_exists('practica_add_capabilities'))
	{
		function practica_add_capabilities()
		{
			$eva_cap = ['administrator','editor','practica2'];

			foreach($eva_cap as $the_role)
			{
				$role = get_role($the_role);

				$role->add_cap('read');
				$role->add_cap('edit_quizes');
				$role->add_cap('publish_quizes');
				$role->add_cap('edit_published_quizes');
				$role->add_cap('edit_others_quizes');
				$role->add_cap('delete_others_quizes');
			}

			$admins = ['administrator','editor'];

			foreach($admins as $the_role)
			{
				$role = get_role($the_role);

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

	if(!function_exists('practica_remove_capabilities'))
	{
		function practica_remove_capabilities()
		{
			$admins = ['administrator','editor'];

			foreach($admins as $the_role)
			{
				$role = get_role($the_role);

				$role->remove_cap('read');
				$role->remove_cap('publish_practicas');
				$role->remove_cap('edit_others_practicas');
				$role->remove_cap('edit_published_practicas');
				$role->remove_cap('read_private_practicas');
				$role->remove_cap('edit_others_practicas');
				$role->remove_cap('edit_private_practicas');
				$role->remove_cap('delete_private_practicas');
				$role->remove_cap('delete_published_practicas');
				$role->remove_cap('delete_others_practicas');
			}
		}
	}
	
	
	
