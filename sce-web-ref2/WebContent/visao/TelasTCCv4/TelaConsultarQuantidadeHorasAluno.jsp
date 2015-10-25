<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%@page import="br.sceweb.dominio.*"%>
    <%@page import="java.util.*"%>
<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<script> 

function AreaTecnica(){
	   document.getElementById('frmConsultarQuantidadeHorasAluno').acao.value = "ListarAreaTecnica";
	   document.getElementById('frmConsultarQuantidadeHorasAluno').submit();
}

function AreaSocioCultural(){
	   document.getElementById('frmConsultarQuantidadeHorasAluno').acao.value = "ListarAreaSocioCultural";
	   document.getElementById('frmConsultarQuantidadeHorasAluno').submit();
}
function AreaCidada(){
	   document.getElementById('frmConsultarQuantidadeHorasAluno').acao.value = "ListarAreaCidada";
	   document.getElementById('frmConsultarQuantidadeHorasAluno').submit();
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consulta de Horas</title>
</head>

<body id="fundo">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuAluno.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">

<form class= "form-horizontal" role = "form" id="frmConsultarQuantidadeHorasAluno" name="frmConsultarQuantidadeHorasAluno" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" id="acao" name="acao" value="RelatorioQuantidadeHorasAlunos">
    	
       			
    						<h3 align="center">Consulta de Horas</h3>
  						
	 <br> <br>

<div class="alert alert-success" role="alert" align="center"> 
<label> Você está na média de horas para atingir o total! Parabéns! </label> 
</div>

   <!-- Divisão das áreas-->

<div class="row">

	   <!-- Area técnica-->
 <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/tecnica2.png" width="130" height="130">
       <br>	
      <!-- barra progresso-->
      <div class="progress">
     <% String resultadoTecnologica = "" + request.getAttribute("tecnologica");
     String resultadoCidada = "" + request.getAttribute("cidada");
     String resultadoCultural = "" + request.getAttribute("cultural");
     
     
     %>
  		<div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="<%=resultadoTecnologica %>" aria-valuemin="0" aria-valuemax="100" style="width: <%=resultadoTecnologica %>%">
  		<%=resultadoTecnologica %>%
  		</div>
	  </div>
	  
      <div class="caption">
        <h4 align="center">Área Técnica </h4>
        <p> Aqui você encontra maiores informações sobre o andamento de suas atividades complemtentares da área técnica, clique e obtenha mais detalhes!</p>
        <p align="center"><input type="submit" class="btn btn-success" value="Mais detalhes" role="button" onclick="AreaTecnica()"> </p>
      </div>
    </div>
  </div>

	<!-- Area social -->
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/social1.jpg" width="130" height="130">
      <br>	
      <!-- barra progresso-->
      <div class="progress">
  		<div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="<%=resultadoCultural %>" aria-valuemin="0" aria-valuemax="100" style="width: <%=resultadoCultural %>%">
  	    <%=resultadoCultural %>%
  	    </div>
	  </div>
      
      <div class="caption">
        <h4 align="center">Área Sócio-Cultural</h4>
        <p> Aqui você encontra maiores informações sobre o andamento de suas atividades complemtentares da área sócio-cultural, clique e obtenha mais detalhes!</p>
        <p align="center"><a href="#" class="btn btn-info" role="button" onclick="AreaSocioCultural()">Mais detalhes</a> </p>
      </div>
    </div>
  </div>
  
  <!-- Area cidadã-->
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/cidada1.jpg" width="130" height="130">
      <br>	
      <!-- barra progresso-->
      <div class="progress">
  		<div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="<%=resultadoCidada %>" aria-valuemin="0" aria-valuemax="100" style="width: <%=resultadoCidada %>%"> 		
  	    <%=resultadoCidada %>%
  	    </div>
	   </div>
      
      <div class="caption">
        <h4 align="center">Área Cidadã</h4>
        <p> Aqui você encontra maiores informações sobre o andamento de suas atividades complemtentares da área Cidadã, clique e obtenha mais detalhes!</p>
        <p align="center"><a href="#" class="btn btn-warning" role="button" onclick="AreaCidada()">Mais detalhes</a> </p>
      </div>
    </div>
  </div>
  
  
</div> <!-- Fim divisão areas -->



</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>