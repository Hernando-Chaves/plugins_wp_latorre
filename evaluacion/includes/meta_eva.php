<?php 
	if(!function_exists('eva_add_metaboxes'))
	{
		function eva_add_metaboxes()
		{
			add_meta_box( 'evaluacion', 'Evaluaciones', 'eva_add_html', 'evaluacion', 'normal', 'high', null );
		}
	}
	add_action('add_meta_boxes','eva_add_metaboxes' );


	if(!function_exists('eva_add_html'))
	{
		function eva_add_html($post)
		{ ?>

			<h2>Crea tus evaluaciones</h2>
			<table class="form-table">
				<tr>
					<th class="row-title">
						<label for="">A - </label>
					</th>
					<td>
						<input value="<?php echo get_post_meta( $post->ID, 'rt_eval_a', true ) ?>" type="text" name="rt_eval_a" class="regular-text">
					</td>
				</tr>

				<tr>
					<th class="row-title">
						<label for="">B - </label>
					</th>
					<td>
						<input value="<?php echo get_post_meta( $post->ID, 'rt_eval_b', true ) ?>" type="text" name="rt_eval_b" class="regular-text">
					</td>
				</tr>

				<tr>
					<th class="row-title">
						<label for="">C - </label>
					</th>
					<td>
						<input value="<?php echo get_post_meta( $post->ID, 'rt_eval_c', true ) ?>" type="text" name="rt_eval_c" class="regular-text">
					</td>
				</tr>

				<tr>
					<th class="row-title">
						<label for="">D - </label>
					</th>
					<td>
						<input value="<?php echo get_post_meta( $post->ID, 'rt_eval_d', true ) ?>" type="text" name="rt_eval_d" class="regular-text">
					</td>
				</tr>

				<tr>
					<th class="row-title">
						<label for="">Respuesta Correcta </label>
					</th>
					<td>
						<?php $rt_cta = get_post_meta($post->ID,'eva_correcta',true) ?>
						<select name="eva_correcta" id="" class="postbox">
							<option value="">Selecciona una Opción</option>
							<option <?php selected($rt_cta,'rt_correcta:a') ?> value="rt_correcta:a" >a</option>
							<option <?php selected($rt_cta,'rt_correcta:b') ?> value="rt_correcta:b" >b</option>
							<option <?php selected($rt_cta,'rt_correcta:c') ?> value="rt_correcta:c" >c</option>
							<option <?php selected($rt_cta,'rt_correcta:d') ?> value="rt_correcta:d" >d</option>
						</select>
					</td>
				</tr>
			</table>
			
		<?php		
		}
	}

	if(!function_exists('eva_save_metaboxes'))
	{
		function eva_save_metaboxes($post_id,$post,$update)
		{
			$rta1 = $rta2 = $rta3 = $rta4 = $rt__cta = '';

			if(isset($_POST['rt_eval_a']))
			{
				$rta1 = sanitize_text_field($_POST['rt_eval_a']);
				update_post_meta( $post_id, 'rt_eval_a', $rta1 );
			}

			if(isset($_POST['rt_eval_b']))
			{
				$rta2 = sanitize_text_field($_POST['rt_eval_b']);
				update_post_meta( $post_id, 'rt_eval_b', $rta2 );
			}

			if(isset($_POST['rt_eval_c']))
			{
				$rta3 = sanitize_text_field($_POST['rt_eval_c']);
				update_post_meta( $post_id, 'rt_eval_c', $rta3 );
			}

			if(isset($_POST['rt_eval_d']))
			{
				$rta4 = sanitize_text_field($_POST['rt_eval_d']);
				update_post_meta( $post_id, 'rt_eval_d', $rta4 );
			}

			if(isset($_POST['eva_correcta']))
			{
				$rt_cta = sanitize_text_field($_POST['eva_correcta']);
				update_post_meta( $post_id, 'eva_correcta', $rt_cta );
			}
		}
	}
	add_action('save_post','eva_save_metaboxes',10,3 );
	