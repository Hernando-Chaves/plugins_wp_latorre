<?php 
	if(! defined('ABSPATH')) exit;

/**
 *CREA EL METABOXES 
 */
 	if(!function_exists('bwc_add_metaboxes'))
	{
		function bwc_add_metaboxes()
		{
			add_meta_box('Quizbook_meta_box','Respuestas','quizbook_metaboxes','quiz','normal','high',null);
		}
	}
	add_action('add_meta_boxes','bwc_add_metaboxes' );

/**
 *CREA TODO EL HTML 
 */
  
	function quizbook_metaboxes($post){ 
		wp_nonce_field( basename(__FILE__), 'quizbook_nonce');/*CREAMOS EL NONCE*/
	?>
		
		<table class="form-table">
			<tr>
				<th class="row-title">
					<h3>Añade las respuestas aquí</h3>
				</th>
			</tr>
			<tr>
				<th class="row-title">
					<label for="respuesta_a">a)</label>
				</th>
				<td>
					<input value="<?php echo esc_attr(get_post_meta( $post->ID, 'bwc_respuesta_a',true)) ?>" type="text" id="bwc_respuesta_a" name="bwc_respuesta_a" class="regular-text">
				</td>
			</tr>
			<tr>
				<th class="row-title">
					<label for="respuesta_b">b)</label>
				</th>
				<td>
					<input value="<?php echo esc_attr(get_post_meta($post->ID,'bwc_respuesta_b',true)) ?>" type="text" id="bwc_respuesta_b" name="bwc_respuesta_b" class="regular-text">
				</td>
			</tr>
			<tr>
				<th class="row-title">
					<label for="respuesta_c">c)</label>
				</th>
				<td>
					<input value="<?php echo esc_attr(get_post_meta($post->ID,'bwc_respuesta_c',true)) ?>" type="text" id="bwc_respuesta_c" name="bwc_respuesta_c" class="regular-text">
				</td>
			</tr>
			<tr>
				<th class="row-title">
					<label for="respuesta_d">d)</label>
				</th>
				<td>
					<input value="<?php echo esc_attr(get_post_meta($post->ID,'bwc_respuesta_d',true)) ?>" type="text" id="bwc_respuesta_d" name="bwc_respuesta_d" class="regular-text">
				</td>
			</tr>
			<tr>
				<th class="row-title">
					<label for="respuesta_e">e)</label>
				</th>
				<td>
					<input value="<?php echo esc_attr(get_post_meta($post->ID,'bwc_respuesta_e',true)) ?>" type="text" id="bwc_respuesta_e" name="bwc_respuesta_e" class="regular-text">
				</td>
			</tr>
			<tr>
				<th class="row-title">
					<label for="respuesta_correcta">Respuesta correcta</label>
				</th>
				<td>
					<?php $respuesta = esc_html(get_post_meta($post->ID,'quizbook_correcta',true)) ?>
					<select name="quizbook_correcta" id="respuesta_correcta" class="postbox">
						<option value="">Elige la respuesta correcta</option>
						<option <?php selected($respuesta,'bwc_correcta:a') ?> value="bwc_correcta:a">a</option>
						<option <?php selected($respuesta,'bwc_correcta:b') ?> value="bwc_correcta:b">b</option>
						<option <?php selected($respuesta,'bwc_correcta:c') ?> value="bwc_correcta:c">c</option>
						<option <?php selected($respuesta,'bwc_correcta:d') ?> value="bwc_correcta:d">d</option>
						<option <?php selected($respuesta,'bwc_correcta:e') ?> value="bwc_correcta:e">e</option>
					</select>
				</td>
			</tr>
		</table>
	<?php
	}

/**
 *GUARDA LOS METABOXES 
 */
  
	if(!function_exists('bwc_guarda_metaboxes'))
	{
		function bwc_guarda_metaboxes($post_id,$post,$update)
		{
			/**
			 *VERIFICAMOS EL NONCE 
			 */
			  
			
			 if(!isset($_POST['quizbook_nonce']) || !wp_verify_nonce($_POST['quizbook_nonce'],basename(__FILE__)))
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

			/**
			  *GUARDAMOS LOS CAMPOS 
			  */
			    

			$respuesta_a = $respuesta_b = $respuesta_c = $respuesta_d = $respuesta_e = $respuesta_correcta = '';

			if(isset($_POST['bwc_respuesta_a']))
			{
				$respuesta_a = sanitize_text_field($_POST['bwc_respuesta_a']);
			}
			update_post_meta( $post_id, 'bwc_respuesta_a', $respuesta_a);

			if(isset($_POST['bwc_respuesta_b']))
			{
				$respuesta_b = sanitize_text_field($_POST['bwc_respuesta_b']);
			}
			update_post_meta( $post_id, 'bwc_respuesta_b', $respuesta_b);

			if(isset($_POST['bwc_respuesta_c']))
			{
				$respuesta_c = sanitize_text_field($_POST['bwc_respuesta_c']);
			}
			update_post_meta( $post_id, 'bwc_respuesta_c', $respuesta_c);

			if(isset($_POST['bwc_respuesta_d']))
			{
				$respuesta_d = sanitize_text_field($_POST['bwc_respuesta_d']);
			}
			update_post_meta( $post_id, 'bwc_respuesta_d', $respuesta_d);

			if(isset($_POST['bwc_respuesta_e']))
			{
				$respuesta_e = sanitize_text_field($_POST['bwc_respuesta_e']);
			}
			update_post_meta( $post_id, 'bwc_respuesta_e', $respuesta_e);

			if(isset($_POST['quizbook_correcta']))
			{
				$respuesta_correcta = sanitize_text_field($_POST['quizbook_correcta']);
			}
			update_post_meta( $post_id, 'quizbook_correcta', $respuesta_correcta);
		}
	}
	add_action('save_post','bwc_guarda_metaboxes',10,3 );
		

