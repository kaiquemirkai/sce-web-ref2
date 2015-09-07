<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

 <%@page import="br.sceweb.dominio.*"%>
 <%@page import="java.util.*"%>
 <%@page import="java.io.*"%>
 
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

<body id="fundo">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuAluno.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">

<form class= "form-horizontal" id=form1 role = "form" name="frmConsultarAtcompAluno"  method="post">   
    	
		<input type="hidden" name="acao" >
    	
          <!-- Alteração deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Consulta de Atividade Complementar - Detalhes</h3>
  			 <%
	 
	 Atcomp a = (Atcomp)request.getAttribute("atcomp");
  	 session.setAttribute("atcomp2", a);
	 %>
	 			
 	 <input type="hidden" name="txtCodigoHidden" id="txtCodigo" class="form-control" style="width: 25em" value="<%=a.getCodigo() %>" />
  						
	 <br> <br>
	 <fieldset disabled>
	
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
        
  
        
     
      </div>
</fieldset>

        
     <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
      <!-- Comando para abrir em outra ABA -->
      <a href="javascript:void(0);" onclick="javascript:window.open('/sce-web-ref2/visao/TelasTCCv4/TelaExibirAnexo.jsp');" class="popup">Visualizar Documento</a>
      </div>
     </div>
     
</form><!-- Fim do Form -->

<script type="text/javascript">
     function AbrirAnexo()
     {
    	 //window.open("http://localhost:8080/sce-web-ref2/TelaExibirAnexo.jsp");
    	alert("Olá");
    	 window.open('TelaExibirAnexo.jsp?method="post"'); 
    	 //document.form1.submit(); 
     }
     </script>

</div><!-- Fim da Div Conteudo -->



</body>
</html>