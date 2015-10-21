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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consulta Área Sócio-Cultural</title>
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

<form class= "form-horizontal" role = "form" name="frmConsultarQuantidadeHorasAreaSocialAluno" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="consultarQuantidadeHorasAreaSocialAluno">
    	
       			
    	<div class="page-header" align="center"><h3>Consulta de Quantidade de Horas - Área Sócio-Cultural<br> 
    	<small>(Detalhes)</small></h3>
		</div>
  						
	 <br> <br>

<%

String social = "" + request.getAttribute("social");
String socialDiferenca = "" + request.getAttribute("socialDiferenca");

%>

<div class="controls controls-row">
  <h3 align> <span class="span4 label label-primary">Total de horas realizadas: <%=social%> </span></h3>
  <h3 align> <span class="span1 label label-info">Total de horas à cumprir:  <%=socialDiferenca%></span></h3>
  </div>

    
    <br> <br>
      
<table name="tdListaAtcomp" class="table table-striped">
  
<tr> 

<td> <label>Código da Atividade</label> </td>
    
<td> <label>Data de Realização da Atividade</label> </td>
    
<td> <label>Descrição da Atividade</label> </td>

<td> <label>Carga Horária</label> </td>



</tr>



<%

ArrayList<Atcomp> lista = (ArrayList<Atcomp>) request.getAttribute("atcomps");

if ((lista!=null)&& (lista.size()>0)){
    Atcomp a = null;
	for (int i = 0; i < lista.size(); i++) {
		    
		    a = (Atcomp) lista.get(i);
			
		    %><tr>  
		    <td><label><%=a.getCodigoAtividade()%></label></td>

		    <td><label> <%=a.getDataInicio()%><label> </td>
		        
		    <td> <label><%=a.getDescricao()%></label> </td>
		        
		    <td> <label><%=a.getHorasLancadas()%></label> </td>



		  
		    </tr>
<%    
		    
		}
	
	}
%>

</table>
  
  
  


</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>