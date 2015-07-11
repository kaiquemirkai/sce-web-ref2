<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultar Sugest�o</title>
</head>
<body style= "background: #ABCFD6">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuProfessor.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="background-color:#5DA9E9; height:16px;"> </div>

<div class="container">

<form class= "form-horizontal" role = "form" name="frmListarRegraAtcompProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
   
    <input type="hidden" name="acao" value="listarRegraAtcompProfessor">
    
        						<h3 align="center">Consulta de Sugest�es de Atividade Complementar</h3>
  						
	 <br> <br>
	<!--  BUSCA -->
	<div class="form-group">
	
	<div class="col-sm-2" style="width: 25em"  >
      <input type="text" class="form-control" id="txtBusca" name="txtBusca" placeholder="buscar">
     </div>
    
    <div class="col-sm-10">
      <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdCodigoCategoria" value="codigoCategoria"> C�digo da categoria
	</label>
	
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdArea" value="area"> �rea
	</label>
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdDescricao" value="descricao"> Descri��o
	</label>
    
 <button type="submit" class="btn btn-primary">Buscar</button>
  </div>
</div> <!--  Termino BUSCA -->
	
	       
    <br> <br>
     
<table name="tdListaRegraAtcomp" class="table table-striped">
  
<tr> 
    
<td> <label>C�digo</label> </td>

<td> <label>�rea </label> </td>
     
<td> <label>C�digo da Atividade</label> </td>

<td> <label>Qntde de Horas Permitidas</label> </td>

<td> <label>Carga hor�ria por Atividade</label> </td>

<td> <label>Ano da Atividade</label> </td>

<td> <label>Data In�cio</label> </td>

<td> <label>Data Fim</label> </td>

<td> <label>Descri��o</label> </td>

<td> <label>Status (Ativa/inativa)</label> </td>

</tr>

</table>

<!--  Termino Das Altera��es -->

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->


</body>
</html>