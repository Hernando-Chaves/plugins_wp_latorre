<?php 
if(!defined('ABSPATH')) exit;

/**
 *
 * Crea los mnetaboxes a la previa 
 */
  if(!function_exists('eva_add_metaboxes_previa'))
  {
  	function eva_add_metaboxes_previa()
  	{
  		add_meta_box( 'previa_metabox', 'Preguntas del Examen', 'eva_view_meta', 'previa', 'normal', 'high', null );
  	}
  	add_action('add_meta_boxes','eva_add_metaboxes_previa' );
  }
/**
 * Crea el html del metabox 
 */
  if(!function_exists('eva_view_meta'))
  {
  	function eva_view_meta()
  	{  ?>
      
      <table class="form-table">
        <tr>
          <th class="row-title" colspan="2"></th>
          <h2>Selecciona las preguntas a incluir en el examen</h2>
        </tr>
        <tr>
          <th class="row-title">
            <label for="">Selecciona de la lista</label>
            <?php 
              $args = [
                'posts_per_page' => -1,
                'post_type'      => 'evaluacion',
              ];
              $preguntas = get_posts($args);
              
            ?>
            <?php if($preguntas): ?>
              <select data-placeholder="Selecciona las preguntas..." class="previa-select" multiple tabindex="4">
                <option value=""></option>
                <?php foreach($preguntas as $pregunta): ?>
                  <option value="<?php echo $pregunta->ID ?>"><?php echo $pregunta->post_title ?></option>
                <?php endforeach; ?>
              </select>
            <?php else: ?>
              <h3>No hay preguntas todaia, crea la primera.</h3>
            <?php endif; ?>
          </th>
        </tr>
      </table>

    <?php }
  
  }

  