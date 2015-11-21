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
<%
String grafico = "" + request.getAttribute("grafico");
%>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>

<script type="text/javascript"
          src="https://www.google.com/jsapi?autoload={
            'modules':[{
              'name':'visualization',
              'version':'1',
              'packages':['corechart']
            }]
          }"></script>

    <script type="text/javascript">
      google.setOnLoadCallback(drawChart);

      function drawChart() {
    	  var data = google.visualization.arrayToDataTable(<%=grafico%>);

        var options = {
        title: " Quantidade de Horas por Ano e Área ",
        width: 800,
        height: 350,
        curveType: 'function',
        legend: { position: 'bottom' },
        backgroundColor:{fill:'transparent'}
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Prospecção de Horas</title>
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

<form class= "form-horizontal" role = "form" id="frmProspecacaoAluno" name="frmProspecacaoAluno" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" id="acao" name="acao" value="ProspecaoAluno">
 <br>
 
 <div class="page-header" align="center"><h3>Histórico Atividade Complementar<br> 
    	<small>Por ano e área</small></h3>
</div>
 
   <!-- Grafico-->
<div class="row" align="center">
 	<div class="col-md-12">
    	 
    	 <div id="chart_div"></div>   	
    	
  	</div>
</div>


   <!-- Histórico-->

<div class="row">

	   
 
  
  
</div> <!-- Fim historico -->



</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>