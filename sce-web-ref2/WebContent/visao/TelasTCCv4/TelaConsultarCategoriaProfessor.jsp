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
<title>UATComp - Cadastrar Categoria</title>
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

<form class= "form-horizontal" role = "form" name="frmConsultarCategoriaProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="consultarCategoriaProfessor">
    	
          <!-- Alteração deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Consulta de Categoria de Atividade Complementar - Detalhes</h3>
  						
	 <br> <br>
        <fieldset disabled>       
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
       </fieldset>
        
     <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
       <button name="btnCadastrar" type="submit" class="btn btn-primary">Voltar</button>
      </div>
     </div>


</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>