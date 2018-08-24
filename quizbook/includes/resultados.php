<?php 
  if(!defined('ABSPATH')) exit;

  /**
   * RECIBE PARAMETROS DE quizbook.js Y DEVUELVE UN RESULTADO AJAX 
   */
    
    if(!function_exists('quizbook_resultados'))
    {
      function quizbook_resultados()
      {
        if(isset($_POST['data']))
        {
          $rtas = $_POST['data'];
        }

        $resultado = 0;
        foreach($rtas as $resp)
        {
          $pregunta = explode(':',$resp);
          $correcta = get_post_meta($pregunta[0],'quizbook_correcta',true);
          $letra_correcta = explode(':',$correcta);

          if($pregunta[1] === $letra_correcta[1])
          {
            $resultado +=20;
          }          

        }
        $total_examen = [
          'total'=> $resultado,
        ];

        header('Content-type: application/json');
        echo json_encode($total_examen);
        die();
      }
      add_action('wp_ajax_nopriv_quizbook_resultados','quizbook_resultados' );
      add_action('wp_ajax_quizbook_resultados','quizbook_resultados' );
    }