<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>


<script> 

function ConsultaAtcompPendente(){
	   document.getElementById('frmConsultarPrincipalProfessor').acao.value = "ListarAtCompPendenteProfessor";
	   document.getElementById('frmConsultarPrincipalProfessor').submit();
}

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultas Professor</title>
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

<%
 String quantidadePendente = "" + request.getAttribute("quantidadePendente");
 
%>

<form class= "form-horizontal" role = "form" id="frmConsultarPrincipalProfessor" name="frmConsultarPrincipalProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="consultarPrincipalProfessor">
	
			<h3 align="center">Consultas</h3>
	
<br><br>

 
  <div class="media">
  <div class="media-left media-middle">
    <a href="#" onClick="ConsultaAtcompPendente()">
      <img class="media-object" src="/sce-web-ref2/visao/TelasTCCv4/Imagens/pendente_avaliacao.png" width="80" height="70">
    </a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Atividade Complementar Pendente de Aprova��o</h4>
     <p>Aqui voc� encontra todas as atividades que est�o pendentes de sua avalia��o.</p>
     <p> 
     <span class="label label-primary"> Aten��o! Voc� tem: <%=quantidadePendente %> atividades para avaliar! </span>  </p>
  </div>
</div>


</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>