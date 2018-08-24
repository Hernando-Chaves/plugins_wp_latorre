<?php 
  if(!defined('ABSPATH')) exit;

/**
 * CREA los metaboxes para Examenes 
 */
  
  if(!function_exists('bwc_add_metabox_examenes'))
  {
  	function bwc_add_metabox_examenes()
  	{
  		add_meta_box( 'bwc_examen_metabox', 'Preguntas del Examen', 'bwc_examenes', 'examenes', 'normal', 'high', null );
  	}
  	add_action('add_meta_boxes','bwc_add_metabox_examenes' );
  }

/**
 * Función callback que crea el HTML  del metabox 	
 */
  if(!function_exists('bwc_examenes'))
  {
  	function bwc_examenes($post)
  	{  
  		wp_nonce_field( basename(__FILE__),'examen_nonce');
  	?>
  		
		<table class="form-table">
			<tr>
				<th class="row-title" colspan="2"></th>
				<h2>Selecciona las respuestas a incluir en el examen</h2>
			</tr>
			<tr>
				<th class="row-title">
					<label for="">Selecciona de la lista</label>
					<td>
						<?php 
							$args = [
								'post_per_page'   => 1,
								'post_type'       => 'quiz',
							];
							$preguntas =get_posts($args);
							if($preguntas): ?>
								<?php $seleccionadas = maybe_unserialize(get_post_meta($post->ID,'examen_select',true));
                  
                ?>
								<select data-placeholder="Escoge una pregunta..." class="preguntas_select" multiple tabindex="4" name="examen_select[]">
								  <option value=""></option>
								  <?php 
								  	foreach($preguntas as $pregunta): ?>
                      <?php if($seleccionadas): ?>
                          <option <?php echo in_array($pregunta->ID, $seleccionadas) ? 'selected' : ''; ?> value="<?php echo $pregunta->ID ?>"><?php echo $pregunta->post_title ?></option>
                        <?php else: ?>
								  		    <option  value="<?php echo $pregunta->ID ?>"><?php echo $pregunta->post_title ?></option>
                      <?php endif; ?>
								  	<?php endforeach; ?>
								</select>

							<?php else:
								echo "<p>Comienza por agregar preguntas al quiz</p>";
							endif;
						?>
					</td>
				</th>
			</tr>
		</table>

  	<?php }
  	
  }

/**
 * Guarda los metaboxes 
 */
  if(!function_exists('bwc_guarda_metaboxes_examenes'))
  {
  	function bwc_guarda_metaboxes_examenes($post_id, $post, $update)
  	{
      if(!isset($_POST['examen_nonce']) || !wp_verify_nonce($_POST['examen_nonce'],basename(__FILE__)))
      {
        return $post_id;
      }

      if(!current_user_can( 'edit_post',$post_id ))
      {
        return $post_id;
      }

      if(defined('DOING_AUTOSAVE') && DOING_AUTOSAVE )
      {
        return $post_id;
      }


  		$respuestas = '';
      $arreglo_respuestas = [];

  		// echo "<pre>";
  		// 	var_dump($_POST['examen_select']);
  		// echo "</pre>";
      if(isset($_POST['examen_select']))
      {
        $respuestas = $_POST['examen_select'] ;

        foreach($respuestas as $respuesta)
        {
          $arreglo_respuestas[] = sanitize_text_field( $respuesta );
        }
      }
      // echo "<pre>";
      //   var_dump($arreglo_respuestas);
      // echo "</pre>";
      update_post_meta($post_id,'examen_select',maybe_serialize( $arreglo_respuestas ));
  	}
  	add_action('save_post','bwc_guarda_metaboxes_examenes',10,3 );
  }
  
