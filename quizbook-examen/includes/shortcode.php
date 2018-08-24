<?php 
	if(!defined('ABSPATH')) exit;

/**
 *CREA EL SHORTCODE ,QUIZBOOK USO [quizbook_examen preguntas="" orden="" id=""] 
 */
  
	if(!function_exists('bwc_add_examen_shortcode'))
	{
		function bwc_add_examen_shortcode($atts)
		{
			//Leer el ID de el shortcode para el examen
			$examen_id    = (int) $atts['id'];
			$preguntas    = maybe_unserialize(get_post_meta($examen_id,'examen_select',true));

			$args = [
				'post_type'       => 'quiz',
				'post__in'        => $preguntas,
				'orderby'         => $atts['orden'],
				'posts_per_page'  => $atts['preguntas'],
			];
			$quizbook = new WP_query($args);
			
		?>

			<form name="quizbook_enviar" id="quizbook_enviar">
				<div class="quizbook" id="quizbook">
					<ul>
						<?php if($quizbook->have_posts()) : ?>

							<?php while($quizbook->have_posts()) : $quizbook->the_post() ?>

								<li>
									<h2><?php the_title() ?></h2>
									<?php the_content() ?>
									<?php 
										$opciones = get_post_meta(get_the_ID());

										foreach($opciones as $llave => $opcion)
										{
											$resultado = bwc_filtra_rtas($llave);
											if($resultado === 0)
											{ 
												$numero = explode('_',$llave);
											?>

												<div id="<?php echo get_the_id() . ':' . $numero[2]; ?>" class="respuesta">
													<?php echo $opcion[0] ?>
												</div>

											<?php
											}
										}

									?>
									<!-- <pre><?php //var_dump($opciones) ?></pre> -->
								</li>

							<?php endwhile;wp_reset_postdata(); ?>

						<?php endif; ?>
					</ul>
					<div class="submit">
						<input  type="submit" id="quizbook_btn_submit">
					</div>
					<div id="quizbook_resultado"></div>
				</div>

			</form>
			
		<?php	
		}
		add_shortcode('quizbook_examen','bwc_add_examen_shortcode');
	}