<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultar Atcomp</title>
</head>
<body style= "background: #ABCFD6">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuProfessor.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="background-color:#5DA9E9; height:16px;"> </div>

<div class="container">

<form class= "form-horizontal" role = "form" name="frmListarAtcompProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
   
    <input type="hidden" name="acao" value="listarAtCompProfessor">
    
        						<h3 align="center">Consulta de Atividade Complementar</h3>
  						
	 <br> <br>
	<!--  BUSCA -->
	<div class="form-group">
	
	<div class="col-sm-2" style="width:57em"  >
      <input type="text" class="form-control" id="txtBusca" name="txtBusca" placeholder="buscar">
     </div>
    
    <div class="col-sm-10">
      <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdDescricao" value="descricao"> Descri��o
	</label>
	
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdStatus" value="status"> Status
	</label>
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdCategoria" value="categoria"> Categoria
	</label>
    
    <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdArea" value="area"> �rea
	</label>
    
    <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdDataRealizacao" value="dataRealizacao"> Data de Realiza��o
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
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdAno" value="ano"> Ano
	</label>
  </div>
</div> 
	
	<div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
       <button name="btnBuscar" type="submit" class="btn btn-primary">Buscar</button>
      </div>
     </div>  <!--  Termino BUSCA -->
          
    <br> <br>
     
<table name="tdListaAtcomp" class="table table-striped">
  
<tr> 
    
<td> <label>�rea da Atividade</label> </td>

<td> <label>C�digo da Atividade</label> </td>
    
<td> <label>Data de Realiza��o da Atividade</label> </td>
    
<td> <label>Descri��o da Atividade</label> </td>

<td> <label>Carga Hor�ria</label> </td>

<td> <label>Aluno</label> </td>

<td> <label>RA</label> </td>

<td> <label>Turma</label> </td>

<td> <label>Curso</label> </td>

<td> <label>Status</label> </td>

</tr>

</table>

<!--  Termino Das Altera��es -->

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->


</body>
</html>