<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<script type="text/javascript">
$(document).ready(function(){
$('#btnArquivo').change(function(){
    $('#txtArquivo').val($(this).val());
});

});

</script>
<jsp:include page="ValidarTelas.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Cadastrar Atcomp</title>
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

<jsp:include page="ValidarTelas.jsp" />

<form  ENCTYPE="multipart/form-data" class= "form-horizontal" role = "form" id="frmCadastrarAtcompProfessor" name="frmCadastrarAtcompProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="CadastrarAtCompProfessor">
    	
          <!-- Alteração deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Cadastro de Atividade Complementar</h3>
  						
	 <br> <br>
	 
	 <div class="form-group">
         <label name="lblAreaCurso" for="lblAreaCurso" class="col-sm-2 control-label">Área do Curso</label>
      
         <div class="col-sm-10">
             <select id="sltAreaCurso" name="sltAreaCurso" style="width: 25em" class="form-control" >
                  		<option value="">--- Selecione ---</option>
                  		<option value="biologicas">Biológicas</option>
                  		<option value="exatas">Exatas</option>
                  		<option value="humanas">Humanas</option>
              </select>
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblCurso" for="lblCurso" class="col-sm-2 control-label">Curso</label>
        
        <div class="col-sm-10">
             <select id="sltCurso" name="sltCurso" style="width: 25em" class="form-control" >
                  		<option value="SI">Sistemas de Informação</option>
                  		<option value="CC">Ciências da Computação</option>
                  		<option value="EC">Engenharia da Computação</option>
              </select>
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblTurma" for="lblTurma" class="col-sm-2 control-label">Turma</label>
        
        <div class="col-sm-10">
             <select id="sltTurma" name="sltTurma" style="width: 25em" class="form-control" >
                  		<option value="1ASIN">1ASIN</option>
                  		<option value="2ASIN">2ASIN</option>
                  		<option value="3ASIN">3ASIN</option>
              </select>
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblAluno" for="lblAluno" class="col-sm-2 control-label">Aluno</label>
        
        <div class="col-sm-10">
             <select id="sltAluno" name="sltAluno" style="width: 25em" class="form-control" >
                  		<option value="aluno1">Aluno1</option>
                  		<option value="aluno1">Aluno2</option>
                  		<option value="aluno1">Aluno3</option>
              </select>
        </div>
        </div>
        
	 
	 	<div class="form-group">	
	 	
      	<label name="lblAreaAtividade" for="lblAreaAtividade" class="col-sm-2 control-label">Área da Atividade</label>
      
        <div class="col-sm-10">
        	 <select id="sltAreaAtividade" name="sltAreaAtividade" style="width: 25em" class="form-control" >
                  		<option value="">-- Selecione a área -- </option>
                  		<option value="01">Formação Tecnológica </option>
                  		<option value="02">Formação Sócio-Cultural</option>
                  		<option value="03">Formação Sócio-Cidadã</option>
              </select>
      	</div>
    	</div>

		 <div class="form-group">
         <label name="lblCodigoAtividade" for="codigoAtividade" class="col-sm-2 control-label">Código da Atividade</label>
      
         <div class="col-sm-10">
             <select id="sltCodigoAtividade" name="sltCodigoAtividade" style="width: 25em" class="form-control" >
                  		<option value="">-- Selecione o código -- </option>
                  		<option value="101">101 - Cinema</option>
                  		<option value="102">102 - Teatro</option>
                  		<option value="103">103 - Museu</option>
              </select>
        </div>
        </div>
    
               
        <div class="form-group">
        <label name="lbldataInicioAtividade" for="lblDataInicioAtividade" class="col-sm-2 control-label">Data de Início da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtDataInicioAtividade" id="txtDataInicioAtividade" class="form-control" style="width: 25em" placeholder="Data de início" value="" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblHoraInicioAtividade" for="lblHoraInicioAtividade" class="col-sm-2 control-label">Hora de Início da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtHoraInicioAtividade" id="txtHoraInicioAtividade" class="form-control" style="width: 25em" placeholder="Hora de início" value="" />
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblDataTerminoAtividade" for="lblDataTerminoAtividade" class="col-sm-2 control-label">Data de Término da Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtDataTerminoAtividade" id="txtDataTerminoAtividade" class="form-control" style="width: 25em" placeholder="Data de término" value="" />
        </div>
        </div>
        
        
       <div class="form-group">
        <label name = "lblHoraTerminoAtividade" for="lblHoraTerminoAtividade" class="col-sm-2 control-label">Hora de Término da Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtHoraTerminoAtividade" id="txtHoraTerminoAtividade" class="form-control" style="width: 25em" placeholder="Hora de término" value="" />
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
        <input type="file" name = "inputFile" id="inputfile">
      </div>
        
     <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
       <button name="btnCadastrar" type="submit" class="btn btn-primary">Cadastrar</button>
      </div>
     </div>
            
    



<!--  Termino Das Alterações -->

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>