<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

 <%@page import="br.sceweb.dominio.*"%>
<script type="text/javascript">
$(document).ready(function(){
$('#btnArquivo').change(function(){
    $('#txtArquivo').val($(this).val());
});

});

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultar Regras</title>
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

<jsp:include page="Validacao/AlterarRegraAtcompProfessorValidar.jsp" />

<form class= "form-horizontal" role = "form" id="frmAlterarRegraAtcompProfessor" name="frmAlterarRegraAtcompProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="AlterarRegraAtcompProfessor">
    	
          <!-- Alteração deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Alteração de Regras de Atividade Complementar</h3>
  						
	 <br> <br>
	 
	  <%
	  RegraAtcomp a = (RegraAtcomp)request.getAttribute("atcomp");
	  String area ="";
	  if(a.getArea().equals("01"))
	  {
		  area = "Tecnológica";
	  }
	  if(a.getArea().equals("02"))
	  {
		  area = "Sociocultural";
	  }
	  if(a.getArea().equals("03"))
	  {
		  area = "Cidadã";
	  }
	  
	  %>
	  <input  type="hidden" name="codigoRadio" value="<%=a.getCodigo()%>">    
	  <fieldset disabled>	       
          <div class="form-group">
        <label name="lblCodigo" for="lblCodigo" class="col-sm-2 control-label">Código</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCodigo" id="txtCodigo" class="form-control" style="width: 25em" value="<%=a.getCodigo()%>" />
        </div>
        </div>
        </fieldset>
        
        <div class="form-group">
        <label name="lblArea" for="lblArea" class="col-sm-2 control-label">Área</label>
        
         <div class="col-sm-10">
              <input type="text" name="txtArea" id="txtArea" class="form-control" style="width: 25em" value="<%=area%>" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblCodigoAtividade" for="lblCodigoAtividade" class="col-sm-2 control-label">Código da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCodigoAtividade" id="txtCodigoAtividade" class="form-control" style="width: 25em" value="<%=a.getCodigoAtividade()%>" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblQuantidadeAtividadePermitida" for="lblQuantidadeAtividadePermitida" class="col-sm-2 control-label">Quantidade de Horas Permitida por Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtQuantidadeAtividadePermitida" id="txtQuantidadeAtividadePermitida" class="form-control" style="width: 25em" value="<%=a.getQuantidadeDeAtividadePermitida() %>" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblCargaHorariaAtividade" for="lblCargaHorariaAtividade" class="col-sm-2 control-label">Carga Horária por Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCargaHorariaAtividade" id="txtCargaHorariaAtividade" class="form-control" style="width: 25em"  value="<%=a.getCargaHoraria() %>" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lbldataInicioAtividade" for="lblDataInicioAtividade" class="col-sm-2 control-label">Data de Início da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtDataInicioAtividade" id="txtDataInicioAtividade" class="form-control" style="width: 25em"  value="<%=a.getDataInicioAtividade() %>" />
        </div>
        </div>
        
         <div class="form-group">
        <label name="lblDataTerminoAtividade" for="lblDataTerminoAtividade" class="col-sm-2 control-label">Data de Término da Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtDataTerminoAtividade" id="txtDataTerminoAtividade" class="form-control" style="width: 25em" value="<%=a.getDataTerminoAtividade() %>" />
        </div>
        </div>
        
          <div class="form-group">
        <label name="lblDescricaoRegra" for="lblDescricaoRegra" class="col-sm-2 control-label">Descricao da Regra</label>
        <div class="col-sm-10">
             <textarea name="txtDescricaoRegra" rows="4" cols="4" class="form-control" style="width: 25em" ><%=a.getDescricaoRegra() %></textarea>
        </div>
        </div>
        
     
     <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
       <button name="btnVoltar" type="submit" class="btn btn-primary">Alterar</button>
      </div>
     </div>
            
    

