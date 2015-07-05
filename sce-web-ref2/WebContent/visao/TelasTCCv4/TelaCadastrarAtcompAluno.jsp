<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Cadastrar Atcomp</title>
</head>
<body>

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5">
		<jsp:include page="Cabecalho.jsp" />
</div>

<!-- Div do Menu -->
<div id="menu"   style="background-color:#0058a5; margin-top:-10px">
		<jsp:include page="MenuAluno.jsp" />
</div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="background-color:#5DA9E9; height:16px;">
</div>

<!-- Div do Conteudo  -->
<div>

	<div id="formulario"  >
	
 		<form name="frmLogin" action="/sce-web-ref2/ServletControle" method="post">   
    	
    		<input type="hidden" name="acao" value="AcessarLogin">
    	
<!-- Alteração deve ser feita A partir daqui -->
	 <div class="row">
             
             	<div class="col-md-3 col-md-offset-1"   >
                	<select id="ddlNucleo" name="nucleo" class="form-control" >
                  		<option value="00">---Selecione o núcleo --- </option>
                  		<option value="01">Formação Tecnológica </option>
                  		<option value="02">Formação Sócio-Cultural</option>
                  		<option value="03">Formação Sócio-Cidadã</option>
                	</select>
              </div>


<!--  Termino Das Alterações -->



</div><!-- Fim da Div formulario -->
</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->

<!--  Div do Rodapé -->
<div>
<jsp:include page="Rodape.jsp" />
</div>
</body>
</html>