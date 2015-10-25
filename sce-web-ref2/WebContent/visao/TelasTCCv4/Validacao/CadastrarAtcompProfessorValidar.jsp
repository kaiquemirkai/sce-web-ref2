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
	

	//Tela Cadastrar Sugestão Aluno

	$(document).ready(function() {
		$('#txtDataInicioAtividade').mask('00/00/0000');
		$('#txtHoraInicioAtividade').mask('99:99');
		$('#txtDataTerminoAtividade').mask('00/00/0000');
		$('#txtHoraTerminoAtividade').mask('99:99');
	});
	

	
	
	$(document).ready(function() {
		 $.validator.addMethod("dateBR",
				    function(value, element) {
				        return value.match(/^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/);
				    },
				    "Digite uma data válida"
				);
		
		 $("#frmCadastrarAtcompProfessor").validate({
			 rules : {
					sltAreaAtividade : {

						required : true
					},
					
					txtDataInicioAtividade : {

						required : true,
						dateBR: true
					},
					txtDataTerminoAtividade : {

						required : true,
						dateBR: true
					},

					txtHoraInicioAtividade : {

						required : true,
						time: true
					},

					txtHoraTerminoAtividade : {

						required : true,
						time: true
					},
					
					txtHoraLancadas : {

						required : true,
						number: true

					},

					txtDescricaoAtividade : {

						required : true,
						minlength : 15
						
					},
					
					inputFile : {

						required : true,

					},
				},

				// Define as mensagens de erro para cada regra

				messages : {

					sltAreaAtividade : {
						required : "Selecione a área"

					},
										
					txtDataInicioAtividade : {
						required : "Digite a data de início da atividade"
						
					},

					txtDataTerminoAtividade : {
						required : "Digite a data de término da atividade"
						
					},
					
					txtHoraInicioAtividade : {
						required : "Digite a hora de início da atividade",
						time: "Digite uma hora válida"
					},

					txtHoraTerminoAtividade : {
						required : "Digite a hora de término da atividade",
						time: "Digite uma hora válida"
						
					},
					
					txtHoraLancadas : {
						required : "Digite a quantidade de horas a lançar",
						number: "Digite apenas números"
					},

					txtDescricaoAtividade : {
						required : "Digite uma descrição da atividade",
						minlength : "Digite uma descrição de no mínimo 15 caracteres"

					},
					
					inputfile : {
						required : "Selecione um comprovante de atividade"

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