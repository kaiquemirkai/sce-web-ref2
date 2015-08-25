<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel='stylesheet' type='text/css' href='Background.css' />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultar Categoria</title>
</head>
<body id="fundo">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuProfessor.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>




<div class="container">

<form class= "form-horizontal" role = "form" name="frmListarCategoriaProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
   
    <input type="hidden" name="acao" value="listarCategoriaProfessor">
    
        						<h3 align="center">Consulta de Categoria de Atividade Complementar</h3>
  						
	 <br> <br>
	<!--  BUSCA -->
	<div class="form-group">
	
	<div class="col-sm-2" style="width:28em"  >
      <input type="text" class="form-control" id="txtBusca" name="txtBusca" placeholder="buscar">
     </div>
    
    <div class="col-sm-10">
      <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdDescricao" value="descricao"> Descrição
	</label>
	
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdCodigo" value="codigo"> Código Atividade
	</label>
    
    <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdArea" value="area"> Área
	</label>
    
  
       <button name="btnBuscar" type="submit" class="btn btn-primary">Buscar</button>
      </div>
     
  </div>  <!--  Termino BUSCA -->
          
    <br> <br>
     
<table name="tdListaAtcomp" class="table table-striped">
  
<tr> 
    
<td> <label>Código da Atividade</label> </td>
    
<td> <label>Quantidade de Horas Permitida</label> </td>
    
<td> <label>Carga Horária por Atividade</label> </td>

<td> <label>Área</label> </td>

<td> <label>Descrição</label> </td>

<td> <label>Ano da Atividade</label> </td>

</tr>

</table>


</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->


</body>
</html>