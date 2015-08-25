<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultar Atcomp Pendente</title>
</head>
<body style= "background: #ABCFD6">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuProfessor.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="background-color:#5DA9E9; height:16px;"> </div>

<div class="container">

<form class= "form-horizontal" role = "form" name="frmListarAtcompPendenteProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
   
    <input type="hidden" name="acao" value="listarAtCompPendenteProfessor">
    
        			<h3 align="center">Atividades Complementares Pendentes de Avaliação</h3>
  						
	 <br> <br>
	<!--  BUSCA -->
	<div class="form-group">
	
	<div class="col-sm-2" style="width:25em"  >
      <input type="text" class="form-control" id="txtBusca" name="txtBusca" placeholder="buscar">
     </div>
	
    <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdDataRealizacao" value="dataRealizacao"> Data de Realização
	</label>

	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdRa" value="ra"> RA Aluno
	</label>
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdTurma" value="turma"> Turma
	</label>
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdCurso" value="curso"> Curso
	</label>
	
       <button name="btnBuscar" type="submit" class="btn btn-primary">Buscar</button>
    
     </div>
          
    <br> <br>
     
<table name="tdListaAtcompPendente" class="table table-hover">
  
<tr> 

<td> <label>Código</label> </td> <!-- Campo que receberá codigo radio -->

<td> <label>Aluno</label> </td>

<td> <label>RA</label> </td>

<td> <label>Turma</label> </td>

<td> <label>Curso</label> </td>

<td> <label>Data Cadastro</label> </td>

</tr>

<tr> 

<td> <label>1</label> </td> <!-- Campo que receberá codigo radio -->

<td> <label>Zé Mané</label> </td>

<td> <label>2012120111</label> </td>

<td> <label>2ASIN</label> </td>

<td> <label>Sistemas de Informação</label> </td>

<td> <label>20/12/2015</label> </td>


</tr>


</table>

<br> <br>


 <center>
 <button type="button" class="btn btn-success">
  	<span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Avaliar
 </button>
</center>

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->


</body>
</html>