(function($){
	$('#evalua_rta ul li .respuesta').on('click',function(){
		$(this).siblings().removeClass('seleccionada');
		$(this).siblings().removeAttr('data-seleccionada');
		$(this).addClass('seleccionada');
		$(this).attr('data-seleccionada',true);
	});
	$('#evalua_rta').on('submit',function(e){
		e.preventDefault();

		var rta = $('[data-seleccionada]');
		var respuestas = [];

		$.each(rta,function(llave,valor){
		 	respuestas.push(valor.id);
		 	// console.log(respuestas);
		 });
	 	var rtas = {
	 		action : 'evaluacion_rtas',
	 		data : respuestas
	 	}
	 	$.ajax({
	 		url : admin_url.ajax_url,
	 		type: 'post',
	 		data: rtas
	 	}).done(function(respuesta){
	 		if (respuesta.respuesta >= 60)
	 		{
	 			$('#resultado').addClass('aprobado');
	 		}else {
	 			$('#resultado').addClass('reprobado');
	 		}
	 		// console.log(respuesta);
	 		$('#resultado').append('Resutado final : '+ respuesta.respuesta);
	 		$('#enviar').remove();
	 	});
	});
	 	// console.log(admin_url);
}(jQuery));