<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


 <%@page import="br.sceweb.dominio.*"%>
 <%@page import="java.util.*"%>
 <%@page import="java.io.*"%>

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
<title>UATComp - Consultar Atcomp</title>
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

<form class= "form-horizontal" role = "form" name="frmConsultarAtcompProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="AbrirAnexo">
    	
          <!-- Alteração deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Consulta de Atividade Complementar - Detalhes</h3>
  						
  						  			 <%
	 
	 Atcomp a = (Atcomp)request.getAttribute("atcomp");
  	 Aluno aluno = (Aluno)request.getAttribute("aluno");
     //Manter a Sessão Ativa
     session.setAttribute("atcomp2", a);
     
     String area = "";
		if(a.getAreaAtividade().equals("01"))
		{
			area = "Tecnológica";
		}
		if(a.getAreaAtividade().equals("02"))
		{
			area = "Sociocultural";
		}
		if(a.getAreaAtividade().equals("03"))
		{
			area = "Cidadã";
		}
		
	    
     
     
     
     
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
        
        <% 
         	String classe = "";
         
         	if(a.getStatus().equals("Pendente"))
         	{
         		classe = "form-group has-warning has-feedback";
         	}
         	
         	if(a.getStatus().equals("Aprovado"))
         	{
         		classe = "form-group has-success has-feedback";
         	}
         	
         	if(a.getStatus().equals("Reprovado"))
         	{
         		classe = "form-group has-error has-feedback";
         	}
         	
         	
         %>
         <div class="<%=classe %>">
         <label name="lblStatus" for="lblStatus" class="col-sm-2 control-label">Status</label>
        
          <div class="col-sm-10">
             <input type="text" name="txtStatus" id="txtStatus" class="form-control"  style="width: 25em" value= "<%=a.getStatus() %>" />
  	     </div>
        </div>
        
	 <div class="form-group">
         <label name="lblAreaCurso" for="lblAreaCurso" class="col-sm-2 control-label">Área do Curso</label>
      
         <div class="col-sm-10">
            <input type="text" name="txtAreaCurso" id="txtAreaCurso" class="form-control"  style="width: 25em" value= "<%=aluno.getArea()%>" /> 
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblCurso" for="lblCurso" class="col-sm-2 control-label">Curso</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCurso" id="txtCurso" class="form-control"  style="width: 25em" value= "<%=aluno.getCurso()%>" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblTurma" for="lblTurma" class="col-sm-2 control-label">Turma</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtTurma" id="txtTurma" class="form-control"  style="width: 25em" value= "<%=aluno.getTurma()%>" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblAluno" for="lblAluno" class="col-sm-2 control-label">Aluno</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtAluno" id="txtAluno" class="form-control"  style="width: 25em" value= "<%=aluno.getNome()%>" />
        </div>
        </div>
        
	 
	 	<div class="form-group">	
	 	
      	<label name="lblAreaAtividade" for="lblAreaAtividade" class="col-sm-2 control-label">Área da Atividade</label>
      
        <div class="col-sm-10">
        	 <input type="text" name="txtAreaAtividade" id="txtAreaAtividade" class="form-control"  style="width: 25em" value= "<%=area %>" />
      	</div>
    	</div>

		 <div class="form-group">
         <label name="lblCodigoAtividade" for="codigoAtividade" class="col-sm-2 control-label">Código da Atividade</label>
      
         <div class="col-sm-10">
            <input type="text" name="txtCodigoAtividade" id="txtCodigoAtividade" class="form-control"  style="width: 25em" value= "<%=a.getCodigoAtividade()%>" />
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
             <input type="text" name="txtHoraTerminoAtividade" id="txtHoraTerminoAtividade" class="form-control" style="width: 25em"  value="<%=a.getHoraFim()%>" />
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblDescricaoAtividade" for="lblDescricaoAtividade" class="col-sm-2 control-label">Descricao da Atividade</label>
        <div class="col-sm-10">
             <textarea name="txtDescricaoAtividade" rows="4" cols="4" class="form-control" style="width: 25em" ><%=a.getDescricao()%></textarea>
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

</div><!-- Fim da Div Conteudo -->



</body>
</html>