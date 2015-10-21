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

<div class="container">

<form class= "form-horizontal" role = "form" id="frmListarAtcompProfessor" name="frmListarAtcompProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
   
    <input type="hidden" id="acao" name="acao" >
    
        						<h3 align="center">Consulta de Atividade Complementar</h3>
  						
	 <br> <br>
	<!--  BUSCA -->
	<div class="form-group">
	
	<div class="col-sm-2" style="width:57em"  >
      <input type="text" class="form-control" id="txtBusca" name="txtBusca" placeholder="buscar">
     </div>
    
    <div class="col-sm-10">
      <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdDescricao" value="descricao"> Descrição
	</label>
	
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdStatus" value="status"> Status
	</label>
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdCategoria" value="categoria"> Categoria
	</label>
    
    <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdArea" value="area"> Área
	</label>
    
    <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdDataRealizacao" value="dataRealizacao"> Data de Realização
	</label>

	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdRa" value="ra"> RA Aluno
	</label>
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdTurma" value="turma"> Turma
	</label>
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdCurso" value="curso"> Curso
	</label>
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdAno" value="ano"> Ano
	</label>

 	<button type="#" class="btn btn-primary" onclick="listar()">Listar</button>
    <button type="#" class="btn btn-primary" onclick="consultar()">Consultar</button>
					
          
    <br> <br>
     
<table name="tdListaAtcomp" class="table table-striped">
  
<tr> 
    
<td> <label>Área da Atividade</label> </td>

<td> <label>Código da Atividade</label> </td>
    
<td> <label>Data de Realização da Atividade</label> </td>
    
<td> <label>Descrição da Atividade</label> </td>

<td> <label>Carga Horária</label> </td>

<td> <label>Aluno</label> </td>

<td> <label>RA</label> </td>

<td> <label>Turma</label> </td>

<td> <label>Curso</label> </td>

<td> <label>Status</label> </td>

</tr>


<%

ArrayList<Atcomp> lista = (ArrayList<Atcomp>) request.getAttribute("atcomps");

if ((lista!=null)&& (lista.size()>0)){
    Atcomp a = null;
	for (int i = 0; i < lista.size(); i++) {
		
		String selected = "";
 	   if(i== 0)
 	   {
 		   selected = "checked";
 	   }
		    
		    a = (Atcomp) lista.get(i);
		    
		    String area = "";
			if(a.getAreaAtividade().equals("01"))
			{
				area = "Tecnológica";
			}
			if(a.getAreaAtividade().equals("02"))
			{
				area = "Sóciocultural";
			}
			if(a.getAreaAtividade().equals("03"))
			{
				area = "Cidadã";
			}
			
		    %><tr> 
		    <td><input <%=selected%> type="radio" name="codigoRadio" value="<%=a.getCodigo()%>"> </td>
		    
		    <td> <label><%=area%><label></td>

		    <td><label> <%=a.getCodigoAtividade()%><label> </td>
		        
		    <td> <label><%=a.getDescricao()%></label> </td>

		    <td> <label><%=a.getHorasLancadas()%></label> </td>

		    <td> <label><%=a.getStatus()%></label> </td>

		    </tr>
<%    
		    
		}
	
	}
%>



</table>

<!--  Termino Das Alterações -->

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->


<script>
function listar(){
	   document.getElementById('frmListarAtcompProfessor').acao.value = "ListarAtCompProfessor";
}

function consultar(){
	   document.getElementById('frmListarAtcompProfessor').acao.value = "ConsultarAtcompProfessor";
}
    
 </script>

</body>
</html>