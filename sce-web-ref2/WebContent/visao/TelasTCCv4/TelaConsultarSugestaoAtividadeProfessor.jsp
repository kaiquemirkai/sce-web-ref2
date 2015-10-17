<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<!-- %@ PARA PUXAR O IMPORT DE .JAVA -->
 <%@page import="br.sceweb.dominio.*"%>
 <%@page import="java.util.*"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultar Sugest�o</title>
</head>

<body id="fundo">

	<!-- Import do Cabecalho -->
	<div id="cabecalho" style="background-color: #0058a5">
		<jsp:include page="Cabecalho.jsp" />
	</div>

	<!-- Div do Menu -->
	<div id="menu" style="background-color: #0058a5; margin-top: -10px">
		<jsp:include page="MenuProfessor.jsp" />
	</div>

	<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

	<!-- Div do Conteudo  -->
<div class="container">


		<!-- INICIO DO FORMUL�RIO -->

<form class="form-horizontal"  role="form"  name="frmListar" action="/sce-web-ref2/ServletControle" method="post">
		
	
			<input type="hidden" name="acao" value="ListarSugestaoAtividadeProfessor">

			<!-- Altera��o deve ser feita A partir daqui -->


			<h3 align="center">Consulta de Sugest�o - Detalhes</h3>

			<br> <br>
			
<!-- disabled USADO PARA BLOQUEAR A ALTERA��O DOS CAMPOS -->			
			<fieldset disabled>

<% 
				//LOCAL ONDE ATRAV�S DO request.getAttribute SER� PEGO TODOS OS ELEMENTOS DO ARRAYLIST >>sugestaoAtividade
			    //inst�ncia lista  (ARRAY) ter� todos os objetos 
	         
 SugestaoAtividade sa = (SugestaoAtividade)request.getAttribute("sugestaoAtividade");
    
				if (sa!=null){
					String area = "";
					if(sa.getArea().equals("01"))
					{
						area = "Tecnol�gica";
					}
					if(sa.getArea().equals("02"))
					{
						area = "S�ciocultural";
					}
					if(sa.getArea().equals("03"))
					{
						area = "Cidad�";
					}
				
	          		
				
				%>


		
      <!--C�DIGO -->
				<div class="form-group">
					<label name="lblCodigo" for="lblCodigo"
						class="col-sm-2 control-label">C�digo</label>
					<div class="col-sm-10">
						<input type="text" name="txtCodigo" id="txtCodigo"
							class="form-control" style="width: 25em" value="<%=sa.getCodigo()%>" />
					</div>
				</div>
				
   <!-- QUEM CADASTROU -->
				<div class="form-group">
					<label name="lblCadastrou" for="lblQuemCadstrou" class="col-sm-2 control-label">Quem cadastrou foi:</label>
					<div class="col-sm-10">
					<input type="text" name="txtQuemCadastrou" id="txtQuemCadastrou"
							class="form-control" style="width: 25em" value="<%=sa.getQuemCadastrou()%>" />
						
					</div>
				</div>				

     <!--�REA DA ATIVIDADE -->
				<div class="form-group">
					<label name="lblAreaAtividade" for="lblAreaAtividade"
						class="col-sm-2 control-label">�rea da Atividade</label>
					<div class="col-sm-10">
						<input type="text" name="txtAreaAtividade" id="txtAreaAtividade"
							class="form-control" style="width: 25em" value="<%=area%>" />
						
					</div>
				</div>

     <!-- TEMA OU NOME -->
				<div class="form-group">
					<label name="lblTema" for="lblTema" class="col-sm-2 control-label">Nome da Sugest�o</label>

					<div class="col-sm-10">
						<input type="text" name="txtTema" id="txtTema"
							class="form-control" style="width: 25em" value="<%=sa.getNomeSugestaoAtividade()%>" />
					</div>
				</div>

     <!--CATEGORIA EX: 101, 102 -->
				<div class="form-group">
					<label name="lblCategoria" for="lblCategoria"
						class="col-sm-2 control-label">Categoria</label>

					<div class="col-sm-10">
						<input type="text" name="txtCategoria" id="txtCategoria"
							class="form-control" style="width: 25em" value="<%=sa.getCategoria()%>" />
					</div>
				</div>

   <!--DATA EM QUE FOI CADASTRADO A ATIVIDADE SUGEST�O -->
			<div class="form-group">
				<label name="lblDataCadastro" for="lblDataCadastro"
					class="col-sm-2 control-label">Data do Cadastro</label>
				<div class="col-sm-10">
					<input type="date" name="txtDataCadastro"
						id="txtDataCadastro" class="form-control"
						style="width: 25em"  value="<%=sa.getDataCadastro()%>" />
				</div>
			</div>

    <!--DATA IN�CIO DA ATIVIDADE SUGEST�O -->
			<div class="form-group">
				<label name="lblDataCadastroInicio" for="lblDataCadastroInicio"
					class="col-sm-2 control-label">Data do in�cio:</label>
				<div class="col-sm-10">
					<input type="date" name="txtDataCadastroInicio"
						id="txtDataCadastroInicio" class="form-control"
						style="width: 25em"  value="<%=sa.getDataVigenciaInicio()%>" />
				</div>
			</div>
			
  <!-- DATA FIM - DATA EM QUE TERMINAR� A SUGEST�O ATIVIDADE-->
			<div class="form-group">
				<label name="lblDataCadastroFim" for="lblDataCadastroFim"
					class="col-sm-2 control-label">Data Fim:</label>
				<div class="col-sm-10">
					<input type="date" name="txtDataCadastroFim"
						id="txtDataCadastroInicio" class="form-control"
						style="width: 25em"  value="<%=sa.getDataVigenciaFim()%>" />
				</div>
			</div>

   <!-- DESCRI��O -->
			<div class="form-group">
				<label name="lblDescricaoAtividade" for="lblDescricaoAtividade"
				class="col-sm-2 control-label">Descri��o</label>
				<div class="col-sm-10">
					<textarea name="txtDescricaoAtividade" rows="4" cols="4" 
						class="form-control" style="width: 25em"><%=sa.getDescricao()%></textarea>
				</div>
			</div>



<%
				} //fim do IF 
%>

			</fieldset>
			
	<!-- BOT�O PARA IR NA TELA LISTAR -->
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button name="btnListar" type="submit" class="btn btn-primary">Voltar</button>
				</div>
			</div>			
			

		</form>
		<!-- Fim do Form -->

	</div>
	<!-- Fim da Div Conteudo -->



</body>
</html>