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
					required : "Selecione a �rea"

				},

				txtDataInicioAtividade : {
					required : "Digite a data do in�cio da atividade",
					date: "Digite uma data v�lida"
				},

				txtHoraInicioAtividade : {
					required : "Digite a hora do in�cio da atividade"
				},

				txtDataTerminoAtividade : {
					required : "Digite a data do t�rmino da atividade",
					date: "Digite uma data v�lida"
				},

				txtHoraTerminoAtividade : {
					required : "Digite a hora de t�rmino da atividade"
				},

				txtDescricaoAtividade : {
					required : "Digite uma descri��o da atividade"

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
					required : "Digite o c�digo da atividade"

				},

				txtQuantidadeAtividadePermitida : {
					required : "Digite a quantidade m�xima de horas permitida"
				},

				txtCargaHorariaAtividade : {
					required : "Digite a carga hor�ria por atividade"
				},

				txtDataInicioAtividade : {
					required : "Digite a data do in�cio da atividade"
				},

				txtDataTerminoAtividade : {
					required : "Digite a data do t�rmino da atividade"
				},

				txtDescricaoRegra : {
					required : "Digite uma breve descri��o"

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
					required : "Digite o c�digo da atividade"

				},

				txtQuantidadeAtividadePermitida : {
					required : "Digite a quantidade de atividade permitida"
				},

				txtCargaHorariaAtividade : {
					required : "Digite a carga hor�ria da atividade"
				},

				txtDataInicioAtividade : {
					required : "Digite a data do inicio da atividade"
				},

				txtDataTerminoAtividade : {
					required : "Digite a hora do termino da atividade"
				},

				txtDescricaoAtividade : {
					required : "Digite uma breve descri��o"

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
					required : "Digite o c�digo"

				},

				txtQuantidadeHorasPermitida : {
					required : "Digite a quantidade de horas permitidas"
				},

				txtCargaHorariaAtividade : {
					required : "Digite a carga hor�ria da atividade"
				},

				txtArea : {
					required : "Digite a �rea"
				},

				txtAno : {
					required : "Digite o ano"
				},

				txtDescricaoAtividade : {
					required : "Digite uma breve descri��o"

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
					required : "Digite o c�digo"

				},

				txtQuantidadeHorasPermitida : {
					required : "Digite a quantidade de horas permitidas"
				},

				txtCargaHorariaAtividade : {
					required : "Digite a carga hor�ria da atividade"
				},

				txtArea : {
					required : "Digite a �rea"
				},

				txtAno : {
					required : "Digite o ano"
				},

				txtDescricaoAtividade : {
					required : "Digite uma breve descri��o"

				}

			}

		});

	});

	
	//Tela Cadastrar Sugest�o Professor
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
					required : "Selecione a �rea"

				},

				txtTema : {
					required : "Digite o t�tulo da sugest�o"
				},

				txtCategoria : {
					required : "Digite a categoria"
				},
				
				txtDataCadastroInicio : {
					required : "Digite a data de in�cio",
					date : "Digite uma data v�lida"
				},

				txtDataCadastroFim : {
					required : "Digite a data de fim",
					date: "Digite uma data v�lida"
				},

				txtDescricaoAtividade : {
					required : "Digite uma descri��o da sugest�o"

				}

			}

		});

	});

	//Tela Cadastrar Sugest�o Aluno

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
					required : "Selecione a �rea"

				},

				txtTema : {
					required : "Digite o t�tulo da sugest�o"
				},

				txtCategoria : {
					required : "Digite a categoria"
				},
				
				txtDataCadastroInicio : {
					required : "Digite a data de in�cio",
					date : "Digite uma data v�lida"
				},

				txtDataCadastroFim : {
					required : "Digite a data de fim",
					date: "Digite uma data v�lida"
				},

				txtDescricaoAtividade : {
					required : "Digite uma descri��o da sugest�o"

				}

			}

		});

	});

	
	//Tela Alterar SUGEST�O Aluno
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
					required : "Selecione a �rea"

				},

				txtTema : {
					required : "Digite o t�tulo da sugest�o"
				},

				txtCategoria : {
					required : "Digite a categoria"
				},
				
				txtDataCadastroInicio : {
					required : "Digite a data de in�cio",
					date : "Digite uma data v�lida"
				},

				txtDataCadastroFim : {
					required : "Digite a data de fim",
					date: "Digite uma data v�lida"
				},

				txtDescricaoAtividade : {
					required : "Digite uma descri��o da sugest�o"

				}

			}

		});

	});

	
	//Tela Alterar Sugest�o Professor

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
					required : "Selecione a �rea"

				},

				txtTema : {
					required : "Digite o t�tulo da sugest�o"
				},

				txtCategoria : {
					required : "Digite a categoria"
				},
				
				txtAreaAtividade: {
					required : "Digite a �rea da atividade"
				},
				
				
				txtDataCadastroInicio : {
					required : "Digite a data de in�cio",
					date : "Digite uma data v�lida"
				},

				txtDataCadastroFim : {
					required : "Digite a data de fim",
					date: "Digite uma data v�lida"
				},

				txtDescricaoAtividade : {
					required : "Digite uma descri��o da sugest�o"

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
					required : "Selecione a �rea"

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
					required : "Digite a data do �nicio da atividade",
					number: "apenas numeros, rapaz"
				},

				txtHoraInicioAtividade : {
					required : "Digite a hora do �nicio da atividade"
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
					required : "Digite uma breve descri��o"

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