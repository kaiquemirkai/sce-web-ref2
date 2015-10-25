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
<title>UATComp - Consultar Regra</title>
</head>
<body id="fundo">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuProfessor.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

<div class="container">

<form class= "form-horizontal" role = "form" id="frmListarRegraAtcompProfessor" name="frmListarRegraAtcompProfessor" action="/sce-web-ref2/ServletControle" method="post">   
<input type="hidden" id="acao" name="acao" value="ListarRegraAtcompProfessor">
    
        						<h3 align="center">Consulta de Regras de Atividade Complementar</h3>
  						
	 <br> <br>
	<!--  BUSCA -->
	<div class="form-group">
	
	<div class="col-sm-2" style="width: 25em"  >
      <input type="text" class="form-control" id="txtBusca" name="txtBusca" placeholder="buscar">
     </div>
    
    
	
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdArea" value="area"> Área
	</label>
	
	<label class="radio-inline">
  		<input type="radio" name="rdBusca" id="rdDescricao" value="descricao"> Descrição
	</label>
    <br><br>
 <button type="submit" class="btn btn-primary">Listar</button>
 <button type="submit" id="btnConsultar" class="btn btn-primary" onclick="Consultar()">Consultar</button>


     <button type="submit" id="btnExcluir" class="btn btn-primary" onclick="Excluir()">Excluir</button>



     <button type="submit" id="btnAlterar" class="btn btn-primary" onclick="Alterar()">Alterar</button>
  </div>
</div> <!--  Termino BUSCA -->
<br> <br>
     
<table id="tdListaRegraAtcomp" name="tdListaRegraAtcomp" class="table table-condensed table-hover">
<thead>
<tr>     
<th> <label>Código</label> </th>

<th> <label>Área </label> </th>
     
<th> <label>Código da Atividade</label> </th>

<th> <label>Qntde de Horas Permitidas</label> </th>

<th> <label>Carga Horária por Atividade</label> </th>

<th> <label>Data Início</label> </th>

<th> <label>Data Fim</label> </th>

<th> <label>Descrição</label> </th>

</tr>
</thead>
<%
ArrayList<RegraAtcomp> lista = (ArrayList<RegraAtcomp>) request.getAttribute("regraAtcomps");
if ((lista!=null)&& (lista.size()>0)){
    RegraAtcomp ra = null;
    
	for (int i = 0; i < lista.size(); i++) {
		    
		String selected = "";
 	   if(i== 0)
 	   {
 		   selected = "checked";
 	   }
		
		    ra = (RegraAtcomp) lista.get(i);
		    
		    String descricao = "";
	        
	        if (ra.getDescricaoRegra().length() >= 100)
	        {
	        	descricao = ra.getDescricaoRegra().substring(0,99)+" ...";	
	        }
	        
	        else
	        {
	        	descricao = ra.getDescricaoRegra();
	        }
		    
    
		    String area = "";
			if(ra.getArea().equals("01"))
			{
				area = "Tecnológica";
			}
			if(ra.getArea().equals("02"))
			{
				area = "Sóciocultural";
			}
			if(ra.getArea().equals("03"))
			{
				area = "Cidadã";
			}
%>
<tbody>
<tr>
<td> <label><input <%=selected%> type="radio" name="codigoRadio" value="<%=ra.getCodigo()%>"> </label> </td>

<td> <label><%=area%> </label> </td>
<td> <label><%=ra.getCodigoAtividade()%></label> </td>
<td> <label><%=ra.getQuantidadeDeAtividadePermitida()%></label> </td>
<td> <label><%=ra.getCargaHoraria()%></label> </td>
<td> <label><%=ra.getDataInicioAtividade()%></label> </td>
<td> <label><%=ra.getDataTerminoAtividade()%></label> </td>
<td> <label><%=descricao%></label> </td>

<%    
	
		}
	
	}
%>
</tr>
</tbody>
</table> 
<!--  Termino Das Alterações -->

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->

<script type="text/javascript">
     function Consultar()
     {
    	 document.getElementById('frmListarRegraAtcompProfessor').acao.value = "ConsultarRegraAtcompProfessor";
     }
     
     function Listar()
     {
    	 document.getElementById('frmListarRegraAtcompProfessor').acao.value = "ListarRegraAtcompProfessor";
     }
     
     function Excluir()
     {
    	 document.getElementById('frmListarRegraAtcompProfessor').acao.value = "ExcluirRegraAtcompProfessor";
     }
     
     function Alterar()
     {
    	 document.getElementById('frmListarRegraAtcompProfessor').acao.value = "Consultar2RegraAtcompProfessor";
     }
    
    
 </script>


</body>
</html>