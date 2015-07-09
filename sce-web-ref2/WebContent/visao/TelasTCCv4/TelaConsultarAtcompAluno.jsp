<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%@page import="br.sceweb.dominio.*"%>
<script type="text/javascript">
$(document).ready(function(){
$('#btnArquivo').change(function(){
    $('#txtArquivo').val($(this).val());
});

});

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultar Atcomp</title>
</head>

<body style= "background: #ABCFD6">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuAluno.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="background-color:#5DA9E9; height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">

<form class= "form-horizontal" role = "form" name="frmConsultarAtcompAluno" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="consultarAtCompAluno">
    	
          <!-- Alteração deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Consulta de Atividade Complementar - Detalhes</h3>
  						
	 <br> <br>
	 <fieldset disabled>
	 <%
	 
	 Atcomp a = (Atcomp)request.getAttribute("atcomp");
	 %>
	 
	 <div class="form-group">
        <label name="lblCodigo" for="lblCodigo" class="col-sm-2 control-label">Código</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCodigo" id="txtCodigo" class="form-control" style="width: 25em" value="<%=a.getCodigo() %>" />
        </div>
        </div>
        
         <div class="form-group has-success has-feedback">
         <label name="lblStatus" for="lblStatus" class="col-sm-2 control-label">Status</label>
        
          <div class="col-sm-10">
             <input type="text" name="txtStatus" id="txtStatus" class="form-control"  style="width: 25em" value="<%=a.getStatus()%>" />
  	     </div>
        </div>
        
	 	<div class="form-group">	
	 	
      	<label name="lblAreaAtividade" for="lblAreaAtividade" class="col-sm-2 control-label">Área da Atividade</label>
      
        <div class="col-sm-10">
        	 <select id="sltAreaAtividade" name="sltAreaAtividade" style="width: 25em" class="form-control" >
                  		<option value="00">-- Selecione a área -- </option>
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
                  		<option value="100">-- Selecione o código -- </option>
                  		<option value="101">101 - Cinema</option>
                  		<option value="102">102 - Teatro</option>
                  		<option value="103">103 - Museu</option>
              </select>
        </div>
        </div>
    
               
        <div class="form-group">
        <label name="lbldataInicioAtividade" for="lblDataInicioAtividade" class="col-sm-2 control-label">Data de Início da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtDataInicioAtividade" id="txtDataInicioAtividade" class="form-control" style="width: 25em" value="<%=a.getDataInicio()%>" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblHoraInicioAtividade" for="lblHoraInicioAtividade" class="col-sm-2 control-label">Hora de Início da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtHoraInicioAtividade" id="txtHoraInicioAtividade" class="form-control" style="width: 25em" value="<%=a.getHoraInicio()%>" />
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblDataTerminoAtividade" for="lblDataTerminoAtividade" class="col-sm-2 control-label">Data de Término da Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtDataTerminoAtividade" id="txtDataTerminoAtividade" class="form-control" style="width: 25em" value="<%=a.getDataFim()%>" />
        </div>
        </div>
        
        
       <div class="form-group">
        <label name = "lblHoraTerminoAtividade" for="lblHoraTerminoAtividade" class="col-sm-2 control-label">Hora de Término da Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtHoraTerminoAtividade" id="txtHoraTerminoAtividade" class="form-control" style="width: 25em" value="<%=a.getHoraFim() %>" />
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblDescricaoAtividade" for="lblDescricaoAtividade" class="col-sm-2 control-label">Descricao da Atividade</label>
        <div class="col-sm-10">
             <textarea name="txtDescricaoAtividade" rows="4" cols="4" class="form-control" style="width: 25em" ><%=a.getDescricao() %></textarea>
        </div>
        </div>
        
       <div class="form-group">
        <label name="lblAbrirArquivo" class="sr-only" for="inputfile">Abrir Arquivo</label>
        <input type="file" id="inputfile">
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