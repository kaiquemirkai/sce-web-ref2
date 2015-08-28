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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Alterar Categoria</title>
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

<form class= "form-horizontal" role = "form" name="frmAlterarCategoriaProfessor" id = "frmAlterarCategoriaProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="alterarCategoriaProfessor">
    	
          <!-- Alteração deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Alteração de Categoria de Atividade Complementar</h3>
  						
	 <br> <br>
               
        <div class="form-group">
        <label name="lblCodigo" for="lblCodigo" class="col-sm-2 control-label">Código da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCodigo" id="txtCodigo" class="form-control" style="width: 25em" placeholder="Código" value="" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblQuantidadeHorasPermitida" for="lblQuantidadeHorasPermitida" class="col-sm-2 control-label">Quantidade de Horas Permitida</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtQuantidadeHorasPermitida" id="txtQuantidadeHorasPermitida" class="form-control" style="width: 25em" placeholder="Horas permitida" value="" />
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblCargaHorariaAtividade" for="lblCargaHorariaAtividade" class="col-sm-2 control-label">Carga Horária por Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtCargaHorariaAtividade" id="txtCargaHorariaAtividade" class="form-control" style="width: 25em" placeholder="Carga horária por atividade" value="" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblArea" for="lblArea" class="col-sm-2 control-label">Área</label>
        <div class="col-sm-10">
             <input type="text" name="txtArea" id="txtArea" class="form-control" style="width: 25em" placeholder="Área" value="" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblDescricao" for="lblDescricao" class="col-sm-2 control-label">Descricao</label>
        <div class="col-sm-10">
             <textarea name="txtDescricaoAtividade" rows="4" cols="4" class="form-control" style="width: 25em" placeholder=""></textarea>
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblAno" for="lblAno" class="col-sm-2 control-label">Ano da Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtAno" id="txtAno" class="form-control" style="width: 25em" placeholder="Ano da atividade" value="" />
        </div>
        </div>
        
     <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
       <button name="btnCadastrar" type="submit" class="btn btn-primary">Alterar</button>
      </div>
     </div>


</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>