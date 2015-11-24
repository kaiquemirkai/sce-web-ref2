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

   function Consultar(){
	   document.getElementById('frmListarAtcompPendenteProfessor').acao.value = "ConsultarAtcompPendenteProfessor";
}
function Listar(){
	   document.getElementById('frmListarAtcompPendenteProfessor').acao.value = "ListarAtCompPendenteProfessor";
}

    
 </script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultar Atcomp Pendente</title>
</head>
<body id="fundo">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuProfessor.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

<div class="container">

<form class= "form-horizontal" role = "form"  id="frmListarAtcompPendenteProfessor" name="frmListarAtcompPendenteProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
   
    <input type="hidden" id="acao" name="acao" value="ListarAtCompPendenteProfessor" >
    
        			<h3 align="center">Atividades Complementares Pendentes de Avaliação</h3>
  						
	 <br> <br>
	<!--  BUSCA -->
	<div class="form-group">
	
	<div class="col-sm-2" style="width:25em"  >
      <input type="text" class="form-control" id="txtBusca" name="txtBusca" placeholder="buscar">
     </div>
	
    <label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdNomeAluno" value="nomeAluno"> Nome do Aluno
	</label>

	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdTurma" value="turma"> Turma
	</label>
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdCurso" value="curso"> Curso
	</label>
	

 	<button type="submit" class="btn btn-primary" onclick="Listar()">Buscar</button>
     </div>
          
    <br> <br>
     
<table name="tdListaAtcompPendente" class="table table-hover">
  
<tr> 

<td> <label>Código</label> </td> <!-- Campo que receberá codigo radio -->

<td> <label>Aluno</label> </td>

<td> <label>RA</label> </td>

<td> <label>Turma</label> </td>

<td> <label>Curso</label> </td>

<td> <label>Descrição</label> </td>

</tr>

<%

ArrayList<AtcompPendenteAprovacaoTO> lista = (ArrayList<AtcompPendenteAprovacaoTO>) request.getAttribute("atcomps");

if ((lista!=null)&& (lista.size()>0)){
    AtcompPendenteAprovacaoTO atcompPendenteAprovacaoTO = null;
    
	for (int i = 0; i < lista.size(); i++) {
		
		  String selected = "";
   	   if(i== 0)
   	   {
   		   selected = "checked";
   	   }
		    
		    atcompPendenteAprovacaoTO = (AtcompPendenteAprovacaoTO) lista.get(i);
			
		    if(atcompPendenteAprovacaoTO.getStatus().equals("Pendente")){
		    %>

<tr> 

<td> <input <%=selected%> type="radio" name="codigoRadio" value="<%=atcompPendenteAprovacaoTO.getCodigoAtcomp()%>"> </td> <!-- Campo que receberá codigo radio -->

<td> <label><%=atcompPendenteAprovacaoTO.getNomeAluno()%></label> </td>

<td> <label><%=atcompPendenteAprovacaoTO.getRa() %></label> </td>

<td> <label><%=atcompPendenteAprovacaoTO.getTurma() %></label> </td>

<td> <label><%=atcompPendenteAprovacaoTO.getCurso() %></label> </td>

<td> <label><%=atcompPendenteAprovacaoTO.getDescricao()%></label> </td>


</tr>

<%
		    }//Fim do IF EQUALS

	               } //FIM DO FOR PARA CARREGAR TODOS OS OBJETOS
             
				}//FIM DO IF
	               %>

</table>

<br> <br>


 <center>
 <button type="submit" class="btn btn-success" onclick="Consultar()">
  	<span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Avaliar
 </button>
</center>

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->





</body>
</html>