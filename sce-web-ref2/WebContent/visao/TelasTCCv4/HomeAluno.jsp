<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%@page import="br.sceweb.dominio.*"%>
    <%@page import="java.util.*"%>
    
    <% 
    //Dados usuário
    String nomeAluno = ""+ request.getAttribute("nomeAluno");
    
    
    //Relatório    
    String tecnologica = "" + request.getAttribute("tecnologica");
    String tecnologicadif = "" + request.getAttribute("tecnologicadif");
    
    String cidada = "" + request.getAttribute("cidada");
    String cidadadif = "" + request.getAttribute("cidadadif");
    
    String cultural = "" + request.getAttribute("cultural");
    String culturaldif = "" + request.getAttribute("culturaldif");
     
    
    String aprovado = "" + request.getAttribute("aprovado");
    String pendente = "" + request.getAttribute("pendente");
    
   
     %>
     
<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>

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
          var data = google.visualization.arrayToDataTable([
        ['Horas', 'Horas realizadas', 'Horas a cumprir', { role: 'annotation' } ],
        ['Tecnológica', <%=tecnologica %>, <%=tecnologicadif %>,''],
        ['Cidadã', <%=cidada %>, <%=cidadadif %>,''],
        ['Sócio-Cultural', <%=cultural %>, <%=culturaldif %>, '']
      ]);

      var options = {
        
        title: " Atividade Complementar: Horas por Área ",
    	width: 500,
        height: 300,
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Home Aluno</title>
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

<form class= "form-horizontal" role = "form" name="frmHomeAluno" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="HomeAluno">

 <!-- Divisão da tela -->
        
  <div class="row"  style="margin-top: 20px;">
  
   <!-- Divisão da tela: Parte Principal -->
  <div class="col-md-2">
  	
  	<!--Bem vindo-->
  <div class="media">
  	<div class="media-left media-middle">
 		<img class="media-object" src="/sce-web-ref2/visao/TelasTCCv4/Imagens/aluno.jpg" width="60" height="60">
  	</div>
  	<div class="media-body">
    	<h4 class="media-heading">Bem-vindo!</h4>
    		<small><%=nomeAluno %></small>
    		<br>
    		<small> <a href="#"> Encerrar sessão </a> </small>
  	</div>
  </div>

  
  </div>
  
  <div class="col-md-6">
  
  
  
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
  
  		<div class="alert alert-success alert-dismissible" role="alert">
  		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  		<strong>Atenção!</strong> Faltam 2 dias para começar o SIMTECCE. Aproveite e acumule mais horas de atividade complementar!
		</div>
  
  
  		<ul class="list-group">
  			<li class="list-group-item">
    			<span class="badge"><%=aprovado %></span> Atividades Complementares Aprovadas:
  			</li>
  			<li class="list-group-item">
    			<span class="badge"><%=pendente %></span> Atividades Complementares em Análise:
  			</li>
		</ul>
  
   
  </div>
  
   <!-- Bloco Sugestão -->
  <div class="row"> 
  
  	<div class="col-md-12">
  		<div class="panel panel-warning">
  		  <div class="panel-heading">
  		  <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/sugestao.jpg"> 
  		  <b>Sugestões</b>
  		  </div>

  <!-- Tabela: Sugestões -->
  			<table class="table table-hover">
  				 <tr>
    				<td> Sugestao:</td>
    				<td> Categoria:</td>
    				<td> Data:</td>
    				<td> Descrição:</td>
    			</tr>
				
				<% 
				ArrayList<SugestaoAtividade> lista = (ArrayList<SugestaoAtividade>) request.getAttribute("sugestaoAtividadesRecentes");
    
				if ((lista!=null)&&(lista.size()>0)){
                SugestaoAtividade sa = null;
                
	               for (int i = 0; i < lista.size(); i++) {
		    
		        sa = (SugestaoAtividade) lista.get(i);
				
				
				%>
				
				
				
				<tr>
    				

				<td> <label><%=sa.getNomeSugestaoAtividade()%> </label> </td>
     
				<td> <label><%=sa.getCategoria()%></label> </td>

				<td> <label><%=sa.getDataVigenciaInicio()%></label> </td>

				<td> <label><%=sa.getDescricao()%></label> </td>
    			
    			</tr>
    			
    			
    			<%

	               } //FIM DO FOR PARA CARREGAR TODOS OS OBJETOS
             
				}//FIM DO IF
	               %>


       
    			
    			    			
  			</table>
		</div> <!-- Final Painel Sugestao-->
  
  	</div>  <!-- Final Coluna Sugestao -->
  
  
  </div>  <!-- Final Bloco Sugestao -->
  
  </div> <!-- Final Divisão Tela: Bloco Info/Sugestao -->
  
</div> <!-- Final Row Container -->
				
    
</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>