<?php 
	if(!defined('ABSPATH'))	 exit;
/* 
 **************************************************************************
    AGREGA SHORTCODE SOLO USO [solo numero="" orden=""]
 **************************************************************************
*/
	
	if(!function_exists('solo_add_shortcode'))
	{
		function solo_add_shortcode($atts)
		{
			$args = [
				'post_type'       => 'solo',
				'orderby'         => $atts['orden'],
				'posts_per_paqge' => $atts['numero'],
			];

			$solo = new WP_Query($args);
		?>

			<form  class="form_solo">
				<div>
					<ul>
						<?php if($solo->have_posts()): ?>
							<?php while($solo->have_posts()) : $solo->the_post() ?>

								<li>
									<?php the_title() ?>
									<?php the_content() ?>
									<?php 
										$opciones = get_post_meta(get_the_ID());
										// echo "<pre>";
										// 	var_dump($opciones);
										// echo "</pre>";

										foreach($opciones as $llave => $opcion)
										{
											$resultado = solo_filtrar_rtas($llave);
											// echo "<pre>";
											// 	var_dump($resultado);
											// echo "</pre>";

											
											if($resultado === 0)
											{ 
												$numero = explode('_',$llave);
											?>

												<div id="<?php echo get_the_ID(). ':' . $numero[2] ?>">
														<?php echo $opcion[0] ?>
												</div>

											<?php

											}
										}
									?>
									
									
								</li>

							<?php endwhile;wp_reset_postdata() ?>
						<?php endif; ?>
					</ul>
				</div>
			</form>

		<?php
		}
	}
	add_shortcode('solo','solo_add_shortcode');

