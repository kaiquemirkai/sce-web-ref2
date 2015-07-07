<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
$(document).ready(function(){
$('#btnArquivo').change(function(){
    $('#txtArquivo').val($(this).val());
});

});

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consulta de Horas</title>
</head>

<body style= "background: #ABCFD6">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuAluno.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="background-color:#5DA9E9; height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">

<form class= "form-horizontal" role = "form" name="frmConsultarQuantidadeHorasAluno" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="consultarQuantidadeHorasAluno">
    	
       			
    						<h3 align="center">Consulta de Horas</h3>
  						
	 <br> <br>

<div class="alert alert-success" role="alert" align="center"> 
<label> Voc� est� na m�dia de horas para atingir o total! Parab�ns! </label> 
</div>

   <!-- Divis�o das �reas-->

<div class="row">

	   <!-- Area t�cnica-->
 <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="/sce-web-ref2/visao/TelasTCCv4/tecnica2.png" width="130" height="130">
       <br>	
      <!-- barra progresso-->
      <div class="progress">
  		<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
  		40%
  		</div>
	  </div>
	  
      <div class="caption">
        <h4 align="center">�rea T�cnica </h4>
        <p> Aqui voc� encontra maiores informa��es sobre o andamento de suas atividades complemtentares da �rea t�cnica, clique e obtenha mais detalhes!</p>
        <p align="center"><a href="#" class="btn btn-success" role="button">Mais detalhes</a> </p>
      </div>
    </div>
  </div>

	<!-- Area social -->
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="/sce-web-ref2/visao/TelasTCCv4/social1.jpg" width="130" height="130">
      <br>	
      <!-- barra progresso-->
      <div class="progress">
  		<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
  	    40%
  	    </div>
	  </div>
      
      <div class="caption">
        <h4 align="center">�rea S�cio-Cultural</h4>
        <p> Aqui voc� encontra maiores informa��es sobre o andamento de suas atividades complemtentares da �rea s�cio-cultural, clique e obtenha mais detalhes!</p>
        <p align="center"><a href="#" class="btn btn-info" role="button">Mais detalhes</a> </p>
      </div>
    </div>
  </div>
  
  <!-- Area cidad�-->
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="/sce-web-ref2/visao/TelasTCCv4/cidada1.jpg" width="130" height="130">
      <br>	
      <!-- barra progresso-->
      <div class="progress">
  		<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"> 		
  	    40%
  	    </div>
	   </div>
      
      <div class="caption">
        <h4 align="center">�rea Cidad�</h4>
        <p> Aqui voc� encontra maiores informa��es sobre o andamento de suas atividades complemtentares da �rea Cidad�, clique e obtenha mais detalhes!</p>
        <p align="center"><a href="#" class="btn btn-warning" role="button">Mais detalhes</a> </p>
      </div>
    </div>
  </div>
  
  
</div> <!-- Fim divis�o areas -->



</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>