<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

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
  						
	 <br> <br>


<div class="controls controls-row">
  <h3 align> <span class="span4 label label-primary">Total de horas realizadas: 30 </span></h3>
  <h3 align> <span class="span1 label label-info">Total de horas à cumprir:  70 </span></h3>
  </div>

    
    <br> <br>
 
  <!--  BUSCA -->
	<div class="form-group">
	
	<div class="col-sm-2" style="width: 35em"  >
      <input type="text" class="form-control" id="txtBusca" name="txtBusca" placeholder="buscar">
     </div>
    
    <div class="col-sm-10">
      
      <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdDescricao" value="descricao"> Descrição
	</label>
	
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdStatus" value="status"> Status
	</label>
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdCategoria" value="categoria"> Categoria
	</label>
    
    <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdDataRealizacao" value="dataRealizacao"> Data de Realização
	</label>
	<br><br>
    <button type="submit" class="btn btn-primary">Buscar</button>
  </div>
</div> <!--  Termino BUSCA -->
	
	       
    <br> <br>
     
<table name="tdListaAtcomp" class="table table-hover">
  
<tr> 

<td> <label>Código da Atividade</label> </td>
    
<td> <label>Data de Realização da Atividade</label> </td>
    
<td> <label>Descrição da Atividade</label> </td>

<td> <label>Carga Horária</label> </td>

<td> <label>Status</label> </td>

</tr>

<tr> 

<td> <label>1</label> </td>
    
<td> <label>2</label> </td>
    
<td> <label>3</label> </td>

<td> <label>4</label> </td>

<td> <label>5</label> </td>

</tr>


</table>
  
  
  


</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>