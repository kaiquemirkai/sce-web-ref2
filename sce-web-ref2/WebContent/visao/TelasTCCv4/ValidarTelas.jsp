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

	//Tela Cadastrar Regra Atcomp Professor
	$(document).ready(function() {
		$('#txtDataInicioAtividade').mask('00/00/0000');
		$('#txtDataTerminoAtividade').mask('00/00/0000');
	});

	$(document).ready(function() {
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

					required : true
				},
				txtCargaHorariaAtividade : {

					required : true
				},

				txtDataInicioAtividade : {

					required : true
				},

				txtDataTerminoAtividade : {

					required : true
				},

				txtDescricaoRegra : {

					required : true,

				},
			},

			// Define as mensagens de erro para cada regra

			messages : {

				txtCodigoAtividade : {
					required : "Digite o código da atividade"

				},

				txtQuantidadeAtividadePermitida : {
					required : "Digite a quantidade máxima de horas permitida"
				},

				txtCargaHorariaAtividade : {
					required : "Digite a carga horária por atividade"
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

	//Tela Alterar Regra

	$(document).ready(function() {
		$('#txtDataInicioAtividade').mask('00/00/0000');
		$('#txtDataTerminoAtividade').mask('00/00/0000');
	});

	$(document).ready(function() {
		$("#frmAlterarRegraAtcompProfessor").validate({
			// Define as regras

			rules : {
				txtCodigoAtividade : {

					required : true
				},

				txtQuantidadeAtividadePermitida : {

					required : true
				},
				txtCargaHorariaAtividade : {

					required : true
				},

				txtDataInicioAtividade : {

					required : true
				},

				txtDataTerminoAtividade : {

					required : true
				},

				txtDescricaoAtividade : {

					required : true,

				},
			},

			// Define as mensagens de erro para cada regra

			messages : {

				txtCodigoAtividade : {
					required : "Digite o código da atividade"

				},

				txtQuantidadeAtividadePermitida : {
					required : "Digite a quantidade de atividade permitida"
				},

				txtCargaHorariaAtividade : {
					required : "Digite a carga horária da atividade"
				},

				txtDataInicioAtividade : {
					required : "Digite a data do inicio da atividade"
				},

				txtDataTerminoAtividade : {
					required : "Digite a hora do termino da atividade"
				},

				txtDescricaoAtividade : {
					required : "Digite uma breve descrição"

				}

			}

		});

	});

	//Tela Cadastrar Categoria Professor


	$(document).ready(function() {
		$("#frmCadastrarCategoriaProfessor").validate({
			// Define as regras

			rules : {
				txtCodigo : {

					required : true
				},

				txtQuantidadeHorasPermitida : {

					required : true
				},
				txtCargaHorariaAtividade : {

					required : true
				},

				txtArea : {

					required : true
				},

				txtDescricaoAtividade : {

					required : true
				},
				txtAno : {

					required : true
				},

			},

			// Define as mensagens de erro para cada regra

			messages : {

				txtCodigo : {
					required : "Digite o código"

				},

				txtQuantidadeHorasPermitida : {
					required : "Digite a quantidade de horas permitidas"
				},

				txtCargaHorariaAtividade : {
					required : "Digite a carga horária da atividade"
				},

				txtArea : {
					required : "Digite a área"
				},

				txtAno : {
					required : "Digite o ano"
				},

				txtDescricaoAtividade : {
					required : "Digite uma breve descrição"

				}

			}

		});

	});

	//Tela Alterar Categoria Professor



	$(document).ready(function() {
		$("#frmAlterarCategoriaProfessor").validate({
			// Define as regras

			rules : {
				txtCodigo : {

					required : true
				},

				txtQuantidadeHorasPermitida : {

					required : true
				},
				txtCargaHorariaAtividade : {

					required : true
				},

				txtArea : {

					required : true
				},

				txtDescricaoAtividade : {

					required : true
				},
				txtAno : {

					required : true
				},

			},

			// Define as mensagens de erro para cada regra

			messages : {

				txtCodigo : {
					required : "Digite o código"

				},

				txtQuantidadeHorasPermitida : {
					required : "Digite a quantidade de horas permitidas"
				},

				txtCargaHorariaAtividade : {
					required : "Digite a carga horária da atividade"
				},

				txtArea : {
					required : "Digite a área"
				},

				txtAno : {
					required : "Digite o ano"
				},

				txtDescricaoAtividade : {
					required : "Digite uma breve descrição"

				}

			}

		});

	});

	
	//Tela Cadastrar Sugestão Professor
	$(document).ready(function() {
		$('#txtDataCadastroInicio').mask('00/00/0000');
		$('#txtDataCadastroFim').mask('00/00/0000');
	});
	

	$(document).ready(function() {
		$("#frmCadastrarSugestaoProfessor").validate({
			// Define as regras
			rules : {
				sltAreaAtividade : {

					required : true
				},

				txtTema : {

					required : true
				},
				txtCategoria : {

					required : true
				},
				
				txtDataCadastroInicio : {
					required : true,
					date: true
				},

				txtDataCadastroFim : {
					required : true,
					date : true 
					
				},

				txtDescricaoAtividade : {

					required : true
				},

			},

			// Define as mensagens de erro para cada regra

			messages : {

				sltAreaAtividade : {
					required : "Selecione a área"

				},

				txtTema : {
					required : "Digite o título da sugestão"
				},

				txtCategoria : {
					required : "Digite a categoria"
				},
				
				txtDataCadastroInicio : {
					required : "Digite a data de início",
					date : "Digite uma data válida"
				},

				txtDataCadastroFim : {
					required : "Digite a data de fim",
					date: "Digite uma data válida"
				},

				txtDescricaoAtividade : {
					required : "Digite uma descrição da sugestão"

				}

			}

		});

	});

	//Tela Cadastrar Sugestão Aluno

	$(document).ready(function() {
		$('#txtDataCadastroInicio').mask('00/00/0000');
		$('#txtDataCadastroFim').mask('00/00/0000');
	});

	$(document).ready(function() {
		$("#frmCadastrarSugestaoAluno").validate({
			// Define as regras

			rules : {
				sltAreaAtividade : {

					required : true
				},

				txtTema : {

					required : true
				},
				txtCategoria : {

					required : true
				},
				
				txtDataCadastroInicio : {
					required : true
				},

				txtDataCadastroFim : {
					required : true,
					date : true 
					
				},

				txtDescricaoAtividade : {

					required : true
				},

			},

			// Define as mensagens de erro para cada regra

			messages : {

				sltAreaAtividade : {
					required : "Selecione a área"

				},

				txtTema : {
					required : "Digite o título da sugestão"
				},

				txtCategoria : {
					required : "Digite a categoria"
				},
				
				txtDataCadastroInicio : {
					required : "Digite a data de início",
					date : "Digite uma data válida"
				},

				txtDataCadastroFim : {
					required : "Digite a data de fim",
					date: "Digite uma data válida"
				},

				txtDescricaoAtividade : {
					required : "Digite uma descrição da sugestão"

				}

			}

		});

	});

	
	//Tela Alterar SUGESTÃO Aluno
	$(document).ready(function() {
		$('#txtDataCadastroInicio').mask('00/00/0000');
		$('#txtDataCadastroFim').mask('00/00/0000');
	});


	$(document).ready(function() {
		$("#frmAlterarSugestaoAluno").validate({
			// Define as regras

			rules : {
				sltAreaAtividade : {

					required : true
				},

				txtTema : {

					required : true
				},
				txtCategoria : {

					required : true
				},
				
				txtDataCadastroInicio : {
					required : true
				},

				txtDataCadastroFim : {
					required : true,
					date : true 
					
				},

				txtDescricaoAtividade : {

					required : true
				},

			},

			// Define as mensagens de erro para cada regra

			messages : {

				sltAreaAtividade : {
					required : "Selecione a área"

				},

				txtTema : {
					required : "Digite o título da sugestão"
				},

				txtCategoria : {
					required : "Digite a categoria"
				},
				
				txtDataCadastroInicio : {
					required : "Digite a data de início",
					date : "Digite uma data válida"
				},

				txtDataCadastroFim : {
					required : "Digite a data de fim",
					date: "Digite uma data válida"
				},

				txtDescricaoAtividade : {
					required : "Digite uma descrição da sugestão"

				}

			}

		});

	});

	
	//Tela Alterar Sugestão Professor

	$(document).ready(function() {
		$('#txtDataCadastroInicio').mask('00/00/0000');
		$('#txtDataCadastroFim').mask('00/00/0000');
	});

	$(document).ready(function() {
		$("#frmAlterarSugestaoProfessor").validate({
			// Define as regras

			rules : {
				sltAreaAtividade : {

					required : true
				},

				txtTema : {

					required : true
				},
				
				txtAreaAtividade : {

					required : true
				},
				
				txtCategoria : {

					required : true
				},
				
				txtDataCadastroInicio : {
					required : true
				},

				txtDataCadastroFim : {
					required : true,
					date : true 
					
				},

				txtDescricaoAtividade : {

					required : true
				},

			},

			// Define as mensagens de erro para cada regra

			messages : {

				sltAreaAtividade : {
					required : "Selecione a área"

				},

				txtTema : {
					required : "Digite o título da sugestão"
				},

				txtCategoria : {
					required : "Digite a categoria"
				},
				
				txtAreaAtividade: {
					required : "Digite a área da atividade"
				},
				
				
				txtDataCadastroInicio : {
					required : "Digite a data de início",
					date : "Digite uma data válida"
				},

				txtDataCadastroFim : {
					required : "Digite a data de fim",
					date: "Digite uma data válida"
				},

				txtDescricaoAtividade : {
					required : "Digite uma descrição da sugestão"

				}

			}

		});

	});


		
	
	
	//Tela Login

	$(document).ready(function() {
		$("#frmLogin").validate({
			// Define as regras

			rules : {
				txtLogin : {

					required : true
				},

				txtSenha : {

					required : true
				},

			},

			// Define as mensagens de erro para cada regra

			messages : {

				txtLogin : {
					required : "Informe seu login"

				},

				txtSenha : {
					required : "Informe sua senha"
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


	
	//Tela Cadastrar Atcomp Professor

	$(document).ready(function() {
		$('#txtDataInicioAtividade').mask('00/00/0000');
		$('#txtHoraInicioAtividade').mask('99:99');
		$('#txtDataTerminoAtividade').mask('00/00/0000');
		$('#txtHoraTerminoAtividade').mask('99:99');
	});

	$(document).ready(function() {
		$("#frmCadastrarAtcompProfessor" ).validate({
			// Define as regras

			rules : {
				sltAreaAtividade : {

					required : true
				},
				
				inputfile : {

					required : true
				},
				
				sltCurso : {

					required : true
				},
				
				sltTurma : {

					required : true
				},
				
				sltAluno : {

					required : true
				},
				sltAreaCurso : {

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

				txtDescricaoAtividade : {

					required : true,

				},
			},

			// Define as mensagens de erro para cada regra

			messages : {

				sltAreaAtividade : {
					required : "Selecione a área"

				},
				
				sltCurso : {
					required : "Selecione o curso"

				},
				
				sltTurma : {
					required : "Selecione a turma"

				},
				
				sltAluno : {
					required : "Selecione o aluno"

				},
				
				sltAreaCurso : {
					required : "Selecione a area do curso"

				},


				txtDataInicioAtividade : {
					required : "Digite a data do ínicio da atividade",
					number: "apenas numeros, rapaz"
				},

				txtHoraInicioAtividade : {
					required : "Digite a hora do ínicio da atividade"
				},

				txtDataTerminoAtividade : {
					required : "Digite a data do termino da atividade"
				},

				txtHoraTerminoAtividade : {
					required : "Digite a hora do termino da atividade"
				},
				
				inputfile : {
					required : "Selecione o arquivo"
				},

				txtDescricaoAtividade : {
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