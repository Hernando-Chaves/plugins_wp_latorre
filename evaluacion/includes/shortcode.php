<?php 
	if(!defined('ABSPATH'))	exit;
/* 
 **************************************************************************
    CREA EL SHORTCODE EVALUACION USO [evaluacion numero="" orden=""]
 **************************************************************************
*/
	

	if(!function_exists('eva_add_shortcode'))
	{
		function eva_add_shortcode($atts)
		{ 
			$args = [
				'post_type'       => 'evaluacion',
				'orderby'         => $atts['orden'],
				'posts_per_page'  => $atts['numero']
			];
			$eva = new WP_Query($args);
		?>

			<form id="evalua_rta">
				<div id="">
					<ul>
						<?php if($eva->have_posts()) : ?>
							<?php while($eva->have_posts()) : $eva->the_post() ?>

								<li>
									<?php the_title('<h2>','</h2>') ?>
									<?php the_content();
									$opciones = get_post_meta(get_the_ID());

										// echo "<pre>";
										// 	var_dump($opciones);
										// echo "</pre>";

									foreach($opciones as $llave => $opcion)
									{
										$resultado = eva_filtra_rtas($llave);
										// echo "<pre>resultado es :";
										// 	var_dump($resultado);
										// echo "</pre>";
										// $name = "chaves_mi_perro";
										// $res = strpos($name,'_');
										// echo $res;
										// echo "<pre> a llave es: ";
										// 	var_dump($llave);
										// echo "</pre>";
										$numero = explode('_',$llave);
										// echo "<pre>";
										// 	var_dump($numero);
										// echo "</pre>";
										
										if($resultado === 0)
										{ 
												// echo "<pre>";
												// 	var_dump($numero);
												// echo "</pre>";
										?>
											
											<div class="respuesta" id="<?php echo get_the_ID(). ':' . $numero[2] ?>">
												<?php echo $opcion[0] ?>
											</div>

										<?php

										}
									}

									?>

								</li>

							<?php endwhile;wp_reset_postdata(); ?>
						<?php endif; ?>
					</ul>
					<div id="resultado"></div>
					<div id="enviar">
						<input type="submit">
					</div>
				</div>
			</form>

		<?php
		}
	}
	add_shortcode('evaluacion','eva_add_shortcode');