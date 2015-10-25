<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

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
          var data = google.visualization.arrayToDataTable([<%=grafico %>  ]);

      var options = {
        
        title: " Área Cidadã: Horas por Categoria ",
    	width: 800,
        height: 350,
        legend: { position: 'bottom', maxLines: 3 },
        bar: { groupWidth: '50%' },
        isStacked: true,
        backgroundColor:{fill:'transparent'}
      };

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>


<%@page import="br.sceweb.dominio.*"%>
    <%@page import="java.util.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consulta Área Cidadã</title>
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

<form class= "form-horizontal" role = "form" name="frmConsultarQuantidadeHorasAreaCidadaAluno" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="consultarQuantidadeHorasAreaCidadaAluno">
    	
       			
    	<div class="page-header" align="center"><h3>Consulta de Quantidade de Horas - Área Cidadã<br> 
    	<small>(Detalhes)</small></h3>
		</div>
<%

String cidada = "" + request.getAttribute("cidada");
String cidadaDiferenca = "" + request.getAttribute("cidadaDiferenca");

%>
<div class="row">
  
  <div class="col-md-2" align="left">
  <br><br>
  <h4 align> <span class="span4 label label-primary">Total de horas realizadas: <%=cidada%> </span></h3>
  <br>
  <h4 align> <span class="span1 label label-info">Total de horas à cumprir:  <%=cidadaDiferenca%> </span></h3>
  </div>
  
  <div class="col-md-10" align="center">  <div id="chart_div"></div>  </div>
  
</div>
    
    <br> <br>
     
<table name="tdListaAtcomp" class="table table-hover">
  
<tr> 

<td> <label>Código da Atividade</label> </td>
    
<td> <label>Data de Realização da Atividade</label> </td>
    
<td> <label>Descrição da Atividade</label> </td>

<td> <label>Carga Horária</label> </td>


</tr>

<%

ArrayList<Atcomp> lista = (ArrayList<Atcomp>) request.getAttribute("atcomps");

if ((lista!=null)&& (lista.size()>0)){
    Atcomp a = null;
	for (int i = 0; i < lista.size(); i++) {
		    
		    a = (Atcomp) lista.get(i);
			
		    %><tr>  
		    <td><label><%=a.getCodigoAtividade()%></label></td>

		    <td><label> <%=a.getDataInicio()%><label> </td>
		        
		    <td> <label><%=a.getDescricao()%></label> </td>
		        
		    <td> <label><%=a.getHorasLancadas()%></label> </td>



		  
		    </tr>
<%    
		    
		}
	
	}
%>



</table>
  
  
  


</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>