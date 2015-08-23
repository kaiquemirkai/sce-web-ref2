<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
$(document).ready(function(){
$('#btnArquivo').change(function(){
    $('#txtArquivo').val($(this).val());
});

});

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Alterar Sugest�o</title>
</head>

<body style= "background: #ABCFD6">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuProfessor.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="background-color:#5DA9E9; height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">
<jsp:include page="ValidarTelas.jsp" />
<form class= "form-horizontal" role = "form" name="frmAlterarSugestaoProfessor" id ="frmAlterarSugestaoProfessor"action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="alterarSugestaoProfessor">
    	
          <!-- Altera��o deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Altera��o de Sugest�o</h3>
  						
	 <br> <br>
	 <div class="form-group">
        <label name="lblCodigo" for="lblCodigo" class="col-sm-2 control-label">C�digo</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCodigo" id="txtCodigo" readonly="readonly" class="form-control" style="width: 25em" value="1" />
        </div>
        </div>
	 
	 
	 	<div class="form-group">	
	 	
      	<label name="lblAreaAtividade" for="lblAreaAtividade" class="col-sm-2 control-label">�rea da Atividade</label>
      
        <div class="col-sm-10">
        	 <select id="sltAreaAtividade" name="sltAreaAtividade" style="width: 25em" class="form-control" >
                  		<option value="00">-- Selecione a �rea -- </option>
                  		<option value="01">Tecnol�gica </option>
                  		<option value="02">S�cio-Cultural</option>
                  		<option value="03">S�cio-Cidad�</option>
              </select>
      	</div>
    	</div>
    
               
        <div class="form-group">
        <label name="lblTema" for="lblTema" class="col-sm-2 control-label">Tema</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtTema" id="txtTema" class="form-control" style="width: 25em" placeholder="Tema" value="" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblCategoria" for="lblCategoria" class="col-sm-2 control-label">Categoria</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCategoria" id="txtCategoria" class="form-control" style="width: 25em" placeholder="Categoria" value="" />
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblDescricaoAtividade" for="lblDescricaoAtividade" class="col-sm-2 control-label">Descricao</label>
        <div class="col-sm-10">
             <textarea name="txtDescricaoAtividade" rows="4" cols="4" class="form-control" style="width: 25em" placeholder="Descreva sua sugest�o aqui" value=""></textarea>
        </div>
        </div>
        
     <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
       <button name="btnCadastrar" type="submit" class="btn btn-primary">Alterar</button>
      </div>
     </div>
            
    



<!--  Termino Das Altera��es -->

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>