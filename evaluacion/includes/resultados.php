<?php 
	if(!defined('ABSPATH')) exit;

	if(!function_exists('evaluacion_rtas'))
	{
		function evaluacion_rtas()
		{
			if(isset($_POST['data']))
			{
				$respuestas = $_POST['data'];
			}

			$resultado = 0;

			foreach($respuestas as $resp)
			{
				$info    = explode(':',$resp);
				$db_info = get_post_meta($info[0],'eva_correcta',true);
				$rta_cta = explode(':',$db_info);

				if($rta_cta[1] === $info[1] )
				{
					$resultado += 20;
				}

			}
			$total_examen = [
				'respuesta'=> $resultado
			];

			header('Content-type: application/json');
			echo json_encode($total_examen);
			die();
		}
		add_action('wp_ajax_nopriv_evaluacion_rtas','evaluacion_rtas' );
		add_action('wp_ajax_evaluacion_rtas','evaluacion_rtas' );
	}