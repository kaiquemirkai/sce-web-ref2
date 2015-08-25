<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel='stylesheet' type='text/css' href='Background.css' />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Avaliar Atcomp</title>
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

<form class= "form-horizontal" role = "form" name="frmAvaliarAtcompPendenteProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="AvaliarAtcompPendenteProfessor">
    	           			
    	<h3 align="center">Atividade Complementar Pendente de Avalia��o</h3>
  						
	 <br> <br>	 
	 
	  <!-- Divis�o da tela -->
        
  <div class="row" style="margin-top: 20px;">
  
   <!-- Divis�o da tela: Parte Principal -->
  <div class="col-md-8">
  
	 <div class="form-group">
        <label name="lblVisualizar" class="col-sm-2 control-label" for="lblVisualizar">Visualizar Comprovante</label>
        <label> <a href="#">Arquivo.pdf </a></label>
      </div> 
	 
	 <div class="form-group">
        <label name="lblCodigo" for="lblCodigo" class="col-sm-2 control-label">C�digo</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCodigo" id="txtCodigo" class="form-control" style="width: 25em" value="1" />
        </div>
        </div>
        
	 <div class="form-group">
         <label name="lblAreaCurso" for="lblAreaCurso" class="col-sm-2 control-label">�rea do Curso</label>
      
         <div class="col-sm-10">
             <select id="sltAreaCurso" name="sltAreaCurso" style="width: 25em" class="form-control" >
                  		<option value="biologicas">Biol�gicas</option>
                  		<option value="exatas">Exatas</option>
                  		<option value="humanas">Humanas</option>
              </select>
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblCurso" for="lblCurso" class="col-sm-2 control-label">Curso</label>
        
        <div class="col-sm-10">
             <select id="sltCurso" name="sltCurso" style="width: 25em" class="form-control" >
                  		<option value="SI">Sistemas de Informa��o</option>
                  		<option value="CC">Ci�ncias da Computa��o</option>
                  		<option value="EC">Engenharia da Computa��o</option>
              </select>
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblTurma" for="lblTurma" class="col-sm-2 control-label">Turma</label>
        
        <div class="col-sm-10">
             <select id="sltTurma" name="sltCurso" style="width: 25em" class="form-control" >
                  		<option value="1ASIN">1ASIN</option>
                  		<option value="2ASIN">2ASIN</option>
                  		<option value="3ASIN">3ASIN</option>
              </select>
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblAluno" for="lblTurma" class="col-sm-2 control-label">Aluno</label>
        
        <div class="col-sm-10">
             <select id="sltAluno" name="sltCurso" style="width: 25em" class="form-control" >
                  		<option value="aluno1">Aluno1</option>
                  		<option value="aluno1">Aluno2</option>
                  		<option value="aluno1">Aluno3</option>
              </select>
        </div>
        </div>
        
	 
	 	<div class="form-group">	
	 	
      	<label name="lblAreaAtividade" for="lblAreaAtividade" class="col-sm-2 control-label">�rea da Atividade</label>
      
        <div class="col-sm-10">
        	 <select id="sltAreaAtividade" name="sltAreaAtividade" style="width: 25em" class="form-control" >
                  		<option value="00">-- Selecione a �rea -- </option>
                  		<option value="01">Forma��o Tecnol�gica </option>
                  		<option value="02">Forma��o S�cio-Cultural</option>
                  		<option value="03">Forma��o S�cio-Cidad�</option>
              </select>
      	</div>
    	</div>

		 <div class="form-group">
         <label name="lblCodigoAtividade" for="codigoAtividade" class="col-sm-2 control-label">C�digo da Atividade</label>
      
         <div class="col-sm-10">
             <select id="sltCodigoAtividade" name="sltCodigoAtividade" style="width: 25em" class="form-control" >
                  		<option value="100">-- Selecione o c�digo -- </option>
                  		<option value="101">101 - Cinema</option>
                  		<option value="102">102 - Teatro</option>
                  		<option value="103">103 - Museu</option>
              </select>
        </div>
        </div>
    
               
        <div class="form-group">
        <label name="lbldataInicioAtividade" for="lblDataInicioAtividade" class="col-sm-2 control-label">Data de In�cio da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtDataInicioAtividade" id="txtDataInicioAtividade" class="form-control" style="width: 25em" placeholder="Data de in�cio" value="" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblHoraInicioAtividade" for="lblHoraInicioAtividade" class="col-sm-2 control-label">Hora de In�cio da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtHoraInicioAtividade" id="txtHoraInicioAtividade" class="form-control" style="width: 25em" placeholder="Hora de in�cio" value="" />
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblDataTerminoAtividade" for="lblDataTerminoAtividade" class="col-sm-2 control-label">Data de T�rmino da Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtDataTerminoAtividade" id="txtDataTerminoAtividade" class="form-control" style="width: 25em" placeholder="Data de t�rmino" value="" />
        </div>
        </div>
        
        
       <div class="form-group">
        <label name = "lblHoraTerminoAtividade" for="lblHoraTerminoAtividade" class="col-sm-2 control-label">Hora de T�rmino da Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtHoraTerminoAtividade" id="txtHoraTerminoAtividade" class="form-control" style="width: 25em" placeholder="Data de t�rmino" value="" />
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblDescricaoAtividade" for="lblDescricaoAtividade" class="col-sm-2 control-label">Descricao da Atividade</label>
        <div class="col-sm-10">
             <textarea name="txtDescricaoAtividade" rows="4" cols="4" class="form-control" style="width: 25em" placeholder="Descreva sua atividade aqui"></textarea>
        </div>
        </div>
        
          
 </div> <!-- Final Parte Principal -->
 
 
 <div class="col-md-4"> 
 
 <div class="form-group" align="center">
 <button type="button" class="btn btn-success">
  	<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Aprovar
 </button>
 
<button type="button" class="btn btn-danger">
  	<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Reprovar
 </button>
 
</div>
 
 
 		<div class="form-group" align="center">
        <label name = "lblJustificativa" for="lblJustificativa" class="control-label">Justificativa para Reprova��o</label>
        
             <textarea name="txtJustificativa" rows="4" cols="4" class="form-control" style="width: 25em" placeholder="Justificativa"></textarea>
        
        </div>
 
 </div>
 
 </div> <!-- Final Row -->



</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>