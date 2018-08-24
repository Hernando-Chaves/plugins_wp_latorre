<?php 

	if(!function_exists('eva_add_rol'))
	{
		function eva_add_rol()
		{
			add_role( 'evaluacion', 'Evaluacion');
		}
	}

	if(!function_exists('eva_remove_rol'))
	{
		function eva_remove_rol()
		{
			remove_role( 'evaluacion');
		}
	}

	if(!function_exists('eva_add_capabilities'))
	{
		function eva_add_capabilities()
		{
			$eva_cap = ['administrator','editor','evaluacion'];

			foreach($eva_cap as $the_role)
			{
				$role = get_role($the_role);

				$role->add_cap('read');
				$role->add_cap('edit_evaluaciones');
				$role->add_cap('publish_evaluaciones');
				$role->add_cap('edit_others_evaluaciones');
				$role->add_cap('edit_published_evaluaciones');
			}

			$admins = ['administrator','editor'];

			foreach($admins as $the_role)
			{
				$role = get_role($the_role);

				$role->add_cap('read_private_evaluaciones');
				$role->add_cap('edit_others_evaluaciones');
				$role->add_cap('edit_private_evaluaciones');
				$role->add_cap('delete_evaluaciones');
				$role->add_cap('delete_private_evaluaciones');
				$role->add_cap('delete_published_evaluaciones');
				$role->add_cap('delete_others_evaluaciones');
			}
		}
	}

	if(!function_exists('eva_remove_capabilities'))
	{
		function eva_remove_capabilities()
		{
			$admins = ['administrator','editor'];

			foreach($admins as $the_role)
			{
				$role = get_role($the_role);

				$role->remove_cap('read');
				$role->remove_cap('publish_evaluaciones');
				$role->remove_cap('edit_others_evaluaciones');
				$role->remove_cap('edit_published_evaluaciones');
				$role->remove_cap('read_private_evaluaciones');
				$role->remove_cap('edit_others_evaluaciones');
				$role->remove_cap('edit_private_evaluaciones');
				$role->remove_cap('delete_private_evaluaciones');
				$role->remove_cap('delete_published_evaluaciones');
				$role->remove_cap('delete_others_evaluaciones');
			}
		}
	}
	
	
	
