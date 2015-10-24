<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.mask/0.9.0/jquery.mask.min.js"></script>

<script language="JavaScript" src="jquery/jquery.js" type="text/javascript"></script>
<script language="JavaScript" src="jquery/jquery.validate.js" type="text/javascript"></script>

<style type="text/css">
* 
label.error { font-family: Verdana; font-size: 50%; display: block; margin-top: 10px; float: none; color: red; margin: 0 .5em 0 0; vertical-align: top; font-size: 10px }
            p { clear: both; }
            .submit { margin-top: 1em; }
            em { font-weight: bold; padding-right: 1em; vertical-align: top; }

</style>

<script type="text/javascript">
	
$(document).ready(function() {
	$('#txtDataInicioAtividade').mask('00/00/0000');
	$('#txtDataTerminoAtividade').mask('00/00/0000');
});

$(document).ready(function() {
	
	$.validator.addMethod("dateBR",
		    function(value, element) {
		        return value.match(/^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/);
		    },
		    "Digite uma data válida"
		);
	
	$("#frmCadastrarRegraAtcompProfessor").validate({
		// Define as regras

		rules : {
			txtCodigoAtividade : {

				required : true
			},
			sltArea : {

				required : true
			},
			
			
			txtQuantidadeAtividadePermitida : {

				required : true,
				number: true
			},
			txtCargaHorariaAtividade : {

				required : true,
				number: true
			},

			txtDataInicioAtividade : {

				required : true,
				dateBR: true
			},

			txtDataTerminoAtividade : {

				required : true,
				dateBR: true
			},

			txtDescricaoRegra : {

				required : true

			},
		},

		// Define as mensagens de erro para cada regra

		messages : {

			sltArea : {

				required : "Selecione a área"
			},
			
			
			txtCodigoAtividade : {
				required : "Digite o código da atividade"

			},

			txtQuantidadeAtividadePermitida : {
				required : "Digite a quantidade máxima de horas permitida",
				number: "Digite apenas números"
			},

			txtCargaHorariaAtividade : {
				required : "Digite a carga horária por atividade",
				number: "Digite apenas números"
			},

			txtDataInicioAtividade : {
				required : "Digite a data do início da atividade"
			},

			txtDataTerminoAtividade : {
				required : "Digite a data do término da atividade"
			},

			txtDescricaoRegra : {
				required : "Digite uma breve descrição"

			}

		}

	});

});


</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

</body>
</html>