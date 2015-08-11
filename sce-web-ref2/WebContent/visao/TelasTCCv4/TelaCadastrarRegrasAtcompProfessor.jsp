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
<title>UATComp - Cadastrar Regras</title>
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

<form class= "form-horizontal" role = "form" name="frmCadastrarRegraAtcompProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="CadastrarRegraAtcompProfessor">
    	
          <!-- Alteração deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Cadastro de Regras de Atividade Complementar</h3>
  						
	 <br> <br>
	 
	 	               
      
        
        <div class="form-group">
        <label name="lblArea" for="lblArea" class="col-sm-2 control-label">Área</label>
        
        <div class="col-sm-10">
             <select id="sltArea" name="sltArea" style="width: 25em" class="form-control" >
                  		<option value="00">-- Selecione a área -- </option>
                  		<option value="01">Formação Tecnológica </option>
                  		<option value="02">Formação Sócio-Cultural</option>
                  		<option value="03">Formação Sócio-Cidadã</option>
              </select>
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblCodigoAtividade" for="lblCodigoAtividade" class="col-sm-2 control-label">Código da Atividade</label>
        
         <div class="col-sm-10">
             <input type="text" name="txtCodigoAtividade" id="txtCodigoAtividade" class="form-control" style="width: 25em" placeholder="Categoria da atividade" value="" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblQuantidadeAtividadePermitida" for="lblQuantidadeAtividadePermitida" class="col-sm-2 control-label">Quantidade de Horas Permitida por Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtQuantidadeAtividadePermitida" id="txtQuantidadeAtividadePermitida" class="form-control" style="width: 25em" placeholder="Quantidade atividade permitida" value="" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblCargaHorariaAtividade" for="lblCargaHorariaAtividade" class="col-sm-2 control-label">Carga Horária por Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCargaHorariaAtividade" id="txtCargaHorariaAtividade" class="form-control" style="width: 25em" placeholder="Carga horária por atividade" value="" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lbldataInicioAtividade" for="lblDataInicioAtividade" class="col-sm-2 control-label">Data de Início da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtDataInicioAtividade" id="txtDataInicioAtividade" class="form-control" style="width: 25em" placeholder="Data de início" value="" />
        </div>
        </div>
        
         <div class="form-group">
        <label name="lblDataTerminoAtividade" for="lblDataTerminoAtividade" class="col-sm-2 control-label">Data de Término da Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtDataTerminoAtividade" id="txtDataTerminoAtividade" class="form-control" style="width: 25em" placeholder="Data de término" value="" />
        </div>
        </div>
        
      <div class="form-group">
        <label name="lblDescricaoRegra" for="lblDescricaoRegra" class="col-sm-2 control-label">Descricao da Atividade</label>
        <div class="col-sm-10">
             <textarea name="txtDescricaoRegra" rows="4" cols="4" class="form-control" style="width: 25em" placeholder="Descreva sua regra aqui"></textarea>
        </div>
        </div>
        
       
        
     <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
       <button name="btnCadastrar" type="submit" class="btn btn-primary">Cadastrar Regra</button>
      </div>
     </div>
            
    



<!--  Termino Das Alterações -->

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>