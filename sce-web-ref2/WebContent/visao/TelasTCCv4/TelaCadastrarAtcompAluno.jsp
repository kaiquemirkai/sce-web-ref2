<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="br.sceweb.dominio.*"%>
     <%@page import="java.util.*"%>
     <%@page import="org.hibernate.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<script type="text/javascript" src="js/jquery-1.11.1.js"></script>

<script type="text/javascript" src="ajax.js"></script>

<script type="text/javascript">



function Mudar()
{
	
	
	 var select = document.getElementById('sltCategoriaAtividade');
	 var hidden = document.getElementById('CategoriaAtividade');
	 hidden.value = select.options[select.selectedIndex].text;
	 alert(hidden.value);
	 document.getElementById('form1').submit();
	 
}

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Cadastrar Atcomp</title>
</head>

<body id="fundo" >

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuAluno.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">

<jsp:include page="ValidarTelas.jsp" />

<form  ENCTYPE="multipart/form-data" class= "form-horizontal" role = "form" id="form1"  name="frmCadastrarAtcompAluno" action="/sce-web-ref2/ServletControle" method="post" >   
    	
		<input type="hidden" id="acao"  name="acao" value="CadastrarAtCompAluno">
    	<input type="hidden" id="CategoriaAtividade"  name="CategoriaAtividade" value="">
          <!-- Altera��o deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Cadastro de Atividade Complementar</h3>
  						
	 <br> <br>

	 
	 	<div class="form-group">	
	 	
      	<label name="lblAreaAtividade" for="lblAreaAtividade" class="col-sm-2 control-label">�rea da Atividade</label>
      
        <div class="col-sm-10">
        	 <select id="sltAreaAtividade" name="sltAreaAtividade" style="width: 25em" class="form-control">
                  		<option value="00">-- Selecione a �rea -- </option>
                  		<option value="01">Forma��o Tecnol�gica </option>
                  		<option value="02">Forma��o S�cio-Cultural</option>
                  		<option value="03">Forma��o S�cio-Cidad�</option>
                  		        </select>
        </div>
        </div>
       
                  		
		 <div class="form-group">
         <label name="lblCodigoAtividade" for="codigoAtividade" class="col-sm-2 control-label">C�digo da Atividade</label>
      
  
         <div class="col-sm-10" id="newSelect">
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
        
       <div class="form-group">
        <label name="lblAbrirArquivo" class="sr-only" for="inputfile">Abrir Arquivo</label>
        <input type="file" name = "inputFile" id="inputFile">
      </div>
        
     <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
       <button name="btnCadastrar" type="button" onclick="Mudar()"  class="btn btn-primary">Cadastrar</button>
      </div>
     </div>
            
    



<!--  Termino Das Altera��es -->

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>