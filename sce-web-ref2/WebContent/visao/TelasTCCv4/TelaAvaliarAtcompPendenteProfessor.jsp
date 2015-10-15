<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%@page import="br.sceweb.dominio.*"%>
    <%@page import="java.util.*"%>
<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<script type="text/javascript">
     function VerAnexo()
     {
    	 document.getElementById('acao').value = "AbrirAnexo";
     }
     function Aprovar()
     {
  	   document.getElementById('frmAvaliarAtcompPendenteProfessor').acao.value = "AlterarStatusAtcomp";

     }
     function Reprovar()
     {
    	   document.getElementById('frmAvaliarAtcompPendenteProfessor').acao.value = "AlterarStatusAtcompReprovado";
     }
    
    
 </script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Avaliar Atcomp</title>
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

<form class= "form-horizontal" role = "form" id="frmAvaliarAtcompPendenteProfessor" name="frmAvaliarAtcompPendenteProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" id="acao" name="acao" >
    	           			
    	<h3 align="center">Atividade Complementar Pendente de Avaliação</h3>
  			
						  			 <%
	 
	 Atcomp a = (Atcomp)request.getAttribute("atcomp");
	 //Manter sessão Ativa
	 session.setAttribute("atcomp2", a);
	 %>
	 			
 	 <input type="hidden" name="txtCodigoHidden" id="txtCodigo" class="form-control" style="width: 25em" value="<%=a.getCodigo() %>" />
  				
  			  			
  						
	 <br> <br>	 
	 
	  <!-- Divisão da tela -->
        
  <div class="row" style="margin-top: 20px;">
  
   <!-- Divisão da tela: Parte Principal -->
  <div class="col-md-8">
  
 <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
           <!-- Comando para abrir em outra ABA -->
            <a href="javascript:void(0);" onclick="javascript:window.open('/sce-web-ref2/visao/TelasTCCv4/TelaExibirAnexo.jsp');" class="popup">Visualizar Documento</a>
      </div>
     </div>
	 <fieldset disabled>
	 <div class="form-group">
        <label name="lblCodigo" for="lblCodigo" class="col-sm-2 control-label">Código</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCodigo" id="txtCodigo" class="form-control" style="width: 25em" value="<%=a.getCodigo() %>" />
        </div>
        </div>
        
        
        
        <div class="form-group">
        <label name="lblCurso" for="lblCurso" class="col-sm-2 control-label">Curso</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtCurso" id="txtCurso" class="form-control" style="width: 25em"  value="<%=a.getCodigo()%>" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblTurma" for="lblTurma" class="col-sm-2 control-label">Turma</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtTurma" id="txtTurma" class="form-control" style="width: 25em"  value="<%=a.getCodigo()%>" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblAluno" for="lblTurma" class="col-sm-2 control-label">Aluno</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtAluno" id="txtAluno" class="form-control" style="width: 25em"  value="<%=a.getCodigo()%>" />
        </div>
        </div>
        
	 
	 	<div class="form-group">	
	 	
      	<label name="lblAreaAtividade" for="lblAreaAtividade" class="col-sm-2 control-label">Área da Atividade</label>
      
        <div class="col-sm-10">
             
             <% String area = "";
      		 String areaatcomp = a.getAreaAtividade();
             if(areaatcomp.equals("01"))
             {
            	 area = "Tecnológica";
             }
             if(areaatcomp.equals("02"))
             {
            	 area = "Sociocultural";
             }
             if(areaatcomp.equals("03"))
             {
            	 area = "Cidadã";
             }
             
             %>
        	 <input type="text" name="txtAreaAtividade" id="txtAreaAtividade" class="form-control" style="width: 25em"  value="<%=area%>" />
      	</div>
    	</div>

		 <div class="form-group">
         <label name="lblCodigoAtividade" for="codigoAtividade" class="col-sm-2 control-label">Código da Atividade</label>
      
         <div class="col-sm-10">
            <input type="text" name="txtCodigoAtividade" id="txtCodigoAtividade" class="form-control" style="width: 25em"  value="<%=a.getCodigoAtividade()%>" />
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
             <input type="text" name="txtHoraInicioAtividade" id="txtHoraInicioAtividade" class="form-control" style="width: 25em"  value="<%=a.getHoraInicio()%>" />
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
             <input type="text" name="txtHoraTerminoAtividade" id="txtHoraTerminoAtividade" class="form-control" style="width: 25em" value="<%=a.getHoraFim()%>" />
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblDescricaoAtividade" for="lblDescricaoAtividade" class="col-sm-2 control-label">Descricao da Atividade</label>
        <div class="col-sm-10">
             <textarea name="txtDescricaoAtividade" rows="4" cols="4" class="form-control" style="width: 25em" ><%=a.getDescricao()%></textarea>
        </div>
        </div>
         </fieldset>
          
 </div> <!-- Final Parte Principal -->
 
 
 <div class="col-md-4"> 
 
 <div class="form-group" align="center">
 <button type="submit" class="btn btn-success" onclick="Aprovar()">
  	<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Aprovar
 </button>
 
<button type="submit" class="btn btn-danger" onclick="Reprovar()">
  	<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Reprovar
 </button>
 
</div>
 
 
 		<div class="form-group" align="center">
        <label name = "lblJustificativa" for="lblJustificativa" class="control-label">Justificativa para Reprovação</label>
        
             <textarea name="txtJustificativa" rows="4" cols="4" class="form-control" style="width: 25em" placeholder="Justificativa"></textarea>
        
        </div>
 
 </div>
 
 </div> <!-- Final Row -->



</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->




</body>
</html>