<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<%
String grafico = "" + request.getAttribute("grafico");
%>
<script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
          var data = google.visualization.arrayToDataTable(<%=grafico%>);

      var options = {
        
        title: "Relatório Horas Médias Por Turma",
    	width: 500,
        height: 300,
        legend: { position: 'bottom', maxLines: 3 },
        bar: { groupWidth: '50%' },
       
        backgroundColor:{fill:'transparent'}
      };

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>



<script>
function EncerrarSessao(){
	   document.getElementById('frmHomeProfessor').acao.value = "EncerrarSessao";
	   document.getElementById('frmHomeProfessor').submit();
}

</script>
<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Home Professor</title>
</head>

<body id="fundo">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuProfessor.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida1" style="height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">
<%
 String quantidadePendente = "" + request.getAttribute("quantidadePendente");
 String nomeProfessor = "" + request.getAttribute("nomeProfessor");
%>

<form class= "form-horizontal" role = "form" id="frmHomeProfessor" name="frmHomeProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input id="acao" type="hidden" name="acao" value="HomeProfessor">

 <!-- Divisão da tela -->
        
  <div class="row" style="margin-top: 20px;">
  
   <!-- Divisão da tela: Parte Principal -->
  <div class="col-md-3">
  	
  	<!--Bem vindo-->
  <div class="media">
  	<div class="media-left media-middle">
 		<img class="media-object" src="/sce-web-ref2/visao/TelasTCCv4/Imagens/aluno.jpg" width="60" height="60">
  	</div>
  	<div class="media-body">
    	<h4 class="media-heading">Bem-vindo!</h4>
    		<small><%=nomeProfessor %></small>
    		<br> 
    		<button type="button" name="btnEncerrarSessao" type="submit" onclick="EncerrarSessao()" class="btn btn-primary btn-xs">Encerrar Sessão</button>
    		
  	</div>
  </div>

  
  </div>
  
  <div class="col-md-5">
  
  
  
  <!-- Gráfico -->
  <div id="chart_div"></div>

  </div> <!-- Final Divisão tela: Parte Principal -->
  
   <!-- Divisão da tela: Bloco de Info/Sugestao -->
   
  <div class="col-md-4">
  
   <!-- Bloco Informação -->
  <div class="panel panel-info">
  
  <!-- Painel Info -->
  <div class="panel-heading"> 
  <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/informacao.png"> 
  <b> Informações</b> 
  </div> 
  
  		<ul class="list-group">
  			<li class="list-group-item">
    			<span class="badge"><%=quantidadePendente %></span> Atividades Complementares para Análise:
  			</li>
  			
		</ul>
  
   
  </div>
  
</div>
  
  

  
  </div> <!-- Final ROW -->
 </form><!-- Fim do Form --> 
</div> <!-- Final Container -->

</body>
</html>