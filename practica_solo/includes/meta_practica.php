<?php 
	if(!function_exists('practica_add_metaboxes'))
	{
		function practica_add_metaboxes()
		{
			add_meta_box( 'practica', 'Practica', 'practica_add_html', 'practica', 'normal', 'high', null );
		}
	}
	add_action('add_meta_boxes','practica_add_metaboxes' );


	if(!function_exists('practica_add_html'))
	{
		function practica_add_html($post)
		{ ?>

			<h2>Crea tus practicaluaciones</h2>
			<table class="form-table">
				<tr>
					<th class="row-title">
						<label for="">1- </label>
					</th>
					<td>
						<input value="<?php echo get_post_meta( $post->ID, 'rta_practica1', true ) ?>" type="text" name="rta_practica1" class="regular-text">
					</td>
				</tr>

				<tr>
					<th class="row-title">
						<label for="">2- </label>
					</th>
					<td>
						<input value="<?php echo get_post_meta( $post->ID, 'rta_practica2', true ) ?>" type="text" name="rta_practica2" class="regular-text">
					</td>
				</tr>

				<tr>
					<th class="row-title">
						<label for="">3- </label>
					</th>
					<td>
						<input value="<?php echo get_post_meta( $post->ID, 'rta_practica3', true ) ?>" type="text" name="rta_practica3" class="regular-text">
					</td>
				</tr>

				<tr>
					<th class="row-title">
						<label for="">4- </label>
					</th>
					<td>
						<input value="<?php echo get_post_meta( $post->ID, 'rta_practica4', true ) ?>" type="text" name="rta_practica4" class="regular-text">
					</td>
				</tr>

				<tr>
					<th class="row-title">
						<label for="">Respuesta Correcta </label>
					</th>
					<td>
						<?php $rta_cta = get_post_meta($post->ID,'practica_rta_correcta',true) ?>
						<select name="practica_rta_correcta" id="" class="postbox">
							<option value="">Selecciona una Opción</option>
							<option <?php selected($rta_cta,'practica_rta_correcta:1') ?> value="practica_rta_correcta:1" >1</option>
							<option <?php selected($rta_cta,'practica_rta_correcta:2') ?> value="practica_rta_correcta:2" >2</option>
							<option <?php selected($rta_cta,'practica_rta_correcta:3') ?> value="practica_rta_correcta:3" >3</option>
							<option <?php selected($rta_cta,'practica_rta_correcta:4') ?> value="practica_rta_correcta:4" >4</option>
						</select>
					</td>
				</tr>
			</table>
			
		<?php		
		}
	}

	if(!function_exists('practica_save_metaboxes'))
	{
		function practica_save_metaboxes($post_id,$post,$update)
		{
			$rta1 = $rta2 = $rta3 = $rta4 = $rta_cta = '';

			if(isset($_POST['rta_practica1']))
			{
				$rta1 = sanitize_text_field($_POST['rta_practica1']);
				update_post_meta( $post_id, 'rta_practica1', $rta1 );
			}

			if(isset($_POST['rta_practica2']))
			{
				$rta2 = sanitize_text_field($_POST['rta_practica2']);
				update_post_meta( $post_id, 'rta_practica2', $rta2 );
			}

			if(isset($_POST['rta_practica3']))
			{
				$rta3 = sanitize_text_field($_POST['rta_practica3']);
				update_post_meta( $post_id, 'rta_practica3', $rta3 );
			}

			if(isset($_POST['rta_practica4']))
			{
				$rta4 = sanitize_text_field($_POST['rta_practica4']);
				update_post_meta( $post_id, 'rta_practica4', $rta4 );
			}

			if(isset($_POST['practica_rta_correcta']))
			{
				$rta_cta = sanitize_text_field($_POST['practica_rta_correcta']);
				update_post_meta( $post_id, 'practica_rta_correcta', $rta_cta );
			}
		}
	}
	add_action('save_post','practica_save_metaboxes',10,3 );
	