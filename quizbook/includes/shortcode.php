<?php 
	if(!defined('ABSPATH')) exit;

/**
 *CREA EL SHORTCODE ,QUIZBOOK USO [quizbook2 preguntas="" orden=""] 
 */
  
	if(!function_exists('bwc_add_shortcode'))
	{
		function bwc_add_shortcode($atts)
		{
			$args = [
				'post_type'       => 'quiz',
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
		add_shortcode('quizbook2','bwc_add_shortcode');
	}