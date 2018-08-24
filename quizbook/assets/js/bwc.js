(function($){
	$('#quizbook ul li .respuesta').on('click',function(){
		$(this).siblings().removeAttr('data-seleccionada');
		$(this).siblings().removeClass('seleccionada');
		$(this).addClass('seleccionada');
		$(this).attr('data-seleccionada',true);
	});
	$('#quizbook_enviar').on('submit',function(e){
		e.preventDefault();

		var rta = $('[data-seleccionada');
		var id_rta = [];

		$.each(rta,function(llave,valor){
			id_rta.push(valor.id);
		});
		var datos = {
			action: "quizbook_resultados",
			data : id_rta
		}
		$.ajax({
			url : admin_url.ajax_url,
			type: 'post',
			data: datos
		}).done(function(respuesta){
			var clase;
			if(respuesta.total >= 60)
			{
				clase = 'aprobado';
			} else {
				clase = 'noaprobado';
			}
			$('#quizbook_resultado').append('Total: '+ respuesta.total ).addClass(clase);
			$('#quizbook_btn_submit').remove();
		});
	});
})(jQuery);