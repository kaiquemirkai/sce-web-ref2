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
	
	//Tela Cadastrar Atcomp Aluno
	$(document).ready(function() {
		$('#txtDataInicioAtividade').mask('00/00/0000');		
		$('#txtHoraInicioAtividade').mask('99:99');
		$('#txtDataTerminoAtividade').mask('00/00/0000');
		$('#txtHoraTerminoAtividade').mask('99:99');
	});

	$(document).ready(function() {
		$("#form1").validate({
			// Define as regras
			rules : {
				sltAreaAtividade : {

					required : true
				},

				txtDataInicioAtividade : {

					required : true,
					number: true
				},
				txtDataTerminoAtividade : {

					required : true
				},

				txtHoraInicioAtividade : {

					required : true
				},

				txtHoraTerminoAtividade : {

					required : true
				},
				
				txtHoraLancadas : {

					required : true,

				},

				txtDescricaoAtividade : {

					required : true,

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
					required : "Digite a data do início da atividade",
					date: "Digite uma data válida"
				},

				txtHoraInicioAtividade : {
					required : "Digite a hora do início da atividade"
				},

				txtDataTerminoAtividade : {
					required : "Digite a data do término da atividade",
					date: "Digite uma data válida"
				},

				txtHoraTerminoAtividade : {
					required : "Digite a hora de término da atividade"
				},

				txtDescricaoAtividade : {
					required : "Digite uma descrição da atividade"

				}

			}

		});

	});

	//Tela Cadastrar Atcomp Professor

	$(document).ready(function() {
		$('#txtDataInicioAtividade').mask('00/00/0000');
		$('#txtHoraInicioAtividade').mask('99:99');
		$('#txtDataTerminoAtividade').mask('00/00/0000');
		$('#txtHoraTerminoAtividade').mask('99:99');
		
		
	
	$(document).ready(function() {
		$("#frmCadastrarAtcompProfessor" ).validate({
			rules : {
						
				sltAreaAtividade : {

					required : true
				},

				txtDataInicioAtividade : {

					required : true,
					number: true
				},
				txtDataTerminoAtividade : {

					required : true
				},

				txtHoraInicioAtividade : {

					required : true
				},

				txtHoraTerminoAtividade : {

					required : true
				},
				
				txtHoraLancadas : {

					required : true,

				},

				txtDescricaoAtividade : {

					required : true,

				},
				
				inputFile : {

					required : true,

				},
			},

			// Define as mensagens de erro para cada regra

			messages : {

				sltAreaAtividade : {
					required : "Selecione a área",

				},

				txtDataInicioAtividade : {
					required : "Digite a data do início da atividade",
					date: "Digite uma data válida"
				},

				txtHoraInicioAtividade : {
					required : "Digite a hora do início da atividade"
				},

				txtDataTerminoAtividade : {
					required : "Digite a data do término da atividade",
					date: "Digite uma data válida"
				},

				txtHoraTerminoAtividade : {
					required : "Digite a hora de término da atividade"
				},

				txtDescricaoAtividade : {
					required : "Digite uma descrição da atividade"

				}

			}

		});

	});
	
	
	
	//Tela Listar AtcompAluno

	$(document).ready(function() {
		$("#frmListarAtcompAluno").validate({
			// Define as regras

			rules : {
				txtBusca : {

					required : true
				},


			},

			// Define as mensagens de erro para cada regra

			messages : {

				txtBusca : {
					required : "Digite a sua busca!"

				},

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