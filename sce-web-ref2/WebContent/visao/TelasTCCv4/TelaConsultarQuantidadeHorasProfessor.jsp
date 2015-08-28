<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consulta de Horas</title>
</head>

<body id="fundo">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuProfessor.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">

<form class= "form-inline" role = "form" name="frmConsultarQuantidadeHorasProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="consultarQuantidadeHorasProfessor">
    	
       			
    		<h3 align="center">Consulta de Horas por Aluno/Turma</h3>
	 <br> <br>
	 
	 
	<div class="form-group">
	<div class="radio">
  		<label> <input type="radio" name="rdRelatorio" id="rdRelatorioAluno" value="relatorioAluno" checked>
  		Consulta por Aluno </label>
	</div>
	
	
	<div class="radio">
  		<label> <input type="radio" name="rdRelatorio" id="rdRelatorioTurma" value="relatorioTurma">
    	Consulta por Turma </label>
	</div>
	</div>
	
	<br> <br>

 <div class="form-group">	
	 	
      	<label name="lblArea" for="lblArea" class="col-sm-2 control-label">Area</label>
      
        <div class="col-sm-10">
        	 <select id="sltArea" name="sltArea" style="width: 25em" class="form-control" >
                  		<option value="1">20</option>
                  		<option value="2">21</option>
                  	
              </select>
      	</div>
 </div>
 
 
 <div class="form-group">	
	 	
      	<label name="lblAno" for="lblAno" class="col-sm-2 control-label">Ano</label>
      
        <div class="col-sm-10">
        	 <select id="sltAno" name="sltAno" style="width: 25em" class="form-control" >
                  		<option value="1">2012</option>
                  		<option value="2">2013</option>
                  	
              </select>
      	</div>
 </div>
 
 <br> <br>
 
   <div class="form-group">	
	 	
      	<label name="lblCurso" for="lblCurso" class="col-sm-2 control-label">Curso</label>
      
        <div class="col-sm-10">
        	 <select id="sltCurso" name="sltCurso" style="width: 25em" class="form-control" >
                  		<option value="00">-- Selecione o curso -- </option>
                  		<option value="01">Todos</option>
                  		<option value="SI">Sistemas de Informação</option>
                  		<option value="CC">Ciências da Computação</option>
                  	
              </select>
      	</div>
 </div>
  
  <div class="form-group">	
	 	
      	<label name="lblTurma" for="lblTurma" class="col-sm-2 control-label">Turma</label>
      
        <div class="col-sm-10">
        	 <select id="sltTurma" name="sltTurma" style="width: 25em" class="form-control" >
                  		<option value="00">-- Selecione a turma -- </option>
                  		<option value="SI">Todos</option>
                  		<option value="SI">1ASIN</option>
                  		<option value="CC">1ACCN</option>
                  	
              </select>
      	</div>
 </div>
 
 <br> <br>
 
   <div class="form-group">	
	 	
      	<label name="lblAluno" for="lblAluno" class="col-sm-2 control-label">Aluno</label>
      
        <div class="col-sm-10">
        	 <select id="sltAluno" name="sltAluno" style="width: 25em" class="form-control" >
                  		<option value="1">Zé</option>
                  		<option value="2">Zé Mané</option>
                  	
              </select>
      	</div>
 </div>
 
 
 <br> <br>
 <div class="form-group col-md-6 col-md-offset-3">
 
 <button type="button" class="btn btn-primary">
  	<span class="glyphicon glyphicon-equalizer" aria-hidden="true"></span> Tempo Médio de Horas
 </button>
 
 
 <button type="button" class="btn btn-warning">
  	<span class="glyphicon glyphicon-th" aria-hidden="true"></span> Prospecção de Horas
 </button>
 
 </div>




</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>