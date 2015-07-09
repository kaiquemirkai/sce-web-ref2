<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="br.sceweb.dominio.*"%>
    <%@page import="java.util.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<div class="container">

<form class= "form-horizontal" role = "form" name="frmListarAtcompAluno" action="/sce-web-ref2/ServletControle" method="post">   
    	
   
    <input type="hidden" name="acao" value="ListarAtCompAluno">
    
        						<h3 align="center">Consulta de Atividade Complementar</h3>
  						
	 <br> <br>
	<!--  BUSCA -->
	<div class="form-group">
	
	<div class="col-sm-2" style="width: 30em"  >
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
  		<input type="radio" name="rdBusca" id="rdDataRealizacao" value="dataRealizacao"> Data de Realização
	</label>

	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdArea" value="area"> Área
	</label>

    <button type="submit" class="btn btn-primary">Buscar</button>
  </div>
</div> <!--  Termino BUSCA -->
	
	       
    <br> <br>
     
<table name="tdListaAtcomp" class="table table-striped">
  
<tr> 
<td> <label>Código</label> </td>   

<td> <label>Área da Atividade</label> </td>

<td> <label>Código da Atividade</label> </td>
    
<td> <label>Data de Realização da Atividade</label> </td>
    
<td> <label>Descrição da Atividade</label> </td>

<td> <label>Carga Horária</label> </td>

<td> <label>Status</label> </td>

</tr>

<%

ArrayList<Atcomp> lista = (ArrayList<Atcomp>) request.getAttribute("atcomps");
if ((lista!=null)&& (lista.size()>0)){
    Atcomp a = null;
	for (int i = 0; i < lista.size(); i++) {
		    
		    a = (Atcomp) lista.get(i);
			
		    %><tr> 
		    <td><input type="radio" name="codigoradio" value="<%=a.getCodigo()%>"> </td>
		    
		    <td> <label><%=a.getAreaAtividade()%><label></td>

		    <td><label> <%=a.getCodigoAtividade()%><label> </td>
		        
		    <td> <label><%=a.getDataInicio()%></label> </td>
		        
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


</body>
</html>