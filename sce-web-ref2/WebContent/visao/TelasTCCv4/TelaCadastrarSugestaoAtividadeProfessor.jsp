<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Cadastrar Sugestão</title>
</head>

<body id="fundo">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuProfessor.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">

<jsp:include page="Validacao/CadastrarSugestaoAtividadeProfessorValidar.jsp" />

<!-- INICIO DO FORMULARIO -->

<form class= "form-horizontal" role = "form" id = "frmCadastrarSugestaoProfessor" name="frmCadastrarSugestaoProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="CadastrarSugestaoAtividadeProfessor">
    	
          <!-- Alteração deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Cadastro de Sugestão</h3>
  						
	 <br> <br>
	 

  <!-- CAMPO PARA CARREGAR AS CATEGORIAS (EX: tecnólogica) -->
			<div class="form-group">
				<label name="lblAreaAtividade" for="lblAreaAtividade"
					class="col-sm-2 control-label">Área da Atividade</label>		
			<div class="col-sm-10">
					<select id="sltAreaAtividade" name="sltAreaAtividade"
						style="width: 25em" class="form-control">
						<option value="00">-- Selecione a área --</option>
						<option value="01">Tecnológica</option>
						<option value="02">Sociocultural</option>
						<option value="03">Cidadã</option>
					</select>
			</div>
			</div>

    <!-- TÍTULO PARA O NOME DA SUGESTÃO ATIVIDADE -->
			<div class="form-group">
				<label name="lblTema" for="lblTema" class="col-sm-2 control-label">Nome da Sugestão</label>
				<div class="col-sm-10">
					<input type="text" name="txtTema" id="txtTema" class="form-control"
						style="width: 25em" placeholder="Digite o nome da Sugestão" value="" />
				</div>
			</div>

          
        <div class="form-group">
        <label name="lblCategoria" for="lblCategoria" class="col-sm-2 control-label">Categoria</label>
        <div class="col-sm-10">
             <input type="text" name="txtCategoria" id="txtCategoria" class="form-control" style="width: 25em" placeholder="Categoria" value="" />
        </div>
        </div>
         

  <!--DATA INÍCIO DA ATIVIDADE SUGESTÃO -->
			<div class="form-group">
				<label name="lblDataCadastroInicio" for="lblDataCadastroInicio"
					class="col-sm-2 control-label">Data Início</label>
				<div class="col-sm-10">
					<input type="date" name="txtDataCadastroInicio"
						id="txtDataCadastroInicio" class="form-control"
						style="width: 25em" placeholder="Data de início" value="" />
				</div>
			</div>
			
    <!-- DATA FIM - DATA EM QUE TERMINARÁ A SUGESTÃO ATIVIDADE-->
			<div class="form-group">
				<label name="lblDataCadastroFim" for="lblDataCadastroFim"
					class="col-sm-2 control-label">Data Fim</label>
				<div class="col-sm-10">
					<input type="date" name="txtDataCadastroFim"
						id="txtDataCadastroFim" class="form-control"
						style="width: 25em" placeholder="Data Fim" value="" />
				</div>
			</div>

    <!-- DATA FIM - DATA EM QUE TERMINARÁ A SUGESTÃO ATIVIDADE-->
			<div class="form-group">
				<label name="lblDescricaoAtividade" for="lblDescricaoAtividade"
				class="col-sm-2 control-label">Descrição</label>
				<div class="col-sm-10">
					<textarea name="txtDescricaoAtividade" rows="4" cols="4" 
						class="form-control" style="width: 25em"
						placeholder="Descreva sua sugestão aqui"></textarea>
				</div>
			</div>

       <!-- BOTÃO CADASTRAR-->
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button name="btnCadastrar" type="submit" class="btn btn-primary">Cadastrar
						Nova Sugestão</button>
				</div>
			</div>



<!--  Termino Das Alterações -->

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>