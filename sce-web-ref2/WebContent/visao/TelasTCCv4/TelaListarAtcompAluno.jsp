<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="br.sceweb.dominio.*"%>
    <%@page import="java.util.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
     function Alterar()
     {
    	 document.getElementById('frmListarAtcompAluno').acao.value = "ConsultarAtcomp";
     }
     function Listar()
     {
    	 document.getElementById('frmListarAtcompAluno').acao.value = "ListarAtCompAluno";
     }
    
    
 </script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<title>UATComp - Consultar Atcomp</title>
</head>

<body id="fundo">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuAluno.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

<div class="container">

<form class= "form-horizontal" role = "form" id="frmListarAtcompAluno" name="frmListarAtcompAluno" action="/sce-web-ref2/ServletControle" method="post">   
    	
   
    <input type="hidden" id="acao" name="acao" value="ListarAtCompAluno">
    
        						<h3 align="center">Consulta de Atividade Complementar</h3>
 
 
 
<% 
String erro = (String)request.getAttribute("erro");
boolean invalido = false;

if(erro == null || erro.equals(""))
{
	erro = "";
	invalido = true;
}
else{
if (!erro.equals(""));
{
	String anexo = ""+request.getAttribute("anexo");
	String areaAtividade = ""+request.getAttribute("areaAtividade");
	String codigoAtividade = ""+request.getAttribute("codigoAtivdade");
	String horaInicio = ""+request.getAttribute("horaInicio");
	String horaFim = ""+request.getAttribute("horaFim");
	String dataInicio =""+ request.getAttribute("dataInicio");
	String dataFim =""+ request.getAttribute("dataFim");
	String descricao = ""+request.getAttribute("descricao");
	String cargaHorariaPermitida =""+ request.getAttribute("cargaHorariaPermitida");
	String cargaMaximaPermitida = ""+request.getAttribute("cargaMaximaPermitida");
	String dataMaior = "" +request.getAttribute("dataMaior" );
	
	erro+= "";
	if(!anexo.equals(""))
	{
		erro += anexo + "\n"; 
	}
	if(!areaAtividade.equals(""))
	{
		erro += areaAtividade + "\n"; 
	}
	if(!codigoAtividade.equals(""))
	{
		erro += codigoAtividade + "\n"; 
	}
	if(!horaInicio.equals(""))
	{
		erro += horaInicio + "\n"; 
	}
	if(!horaFim.equals(""))
	{
		erro += horaFim + "\n"; 
	}
	if(!dataInicio.equals(""))
	{
		erro += dataInicio + "\n"; 
	}
	if(!dataFim.equals(""))
	{
		erro += dataFim + "\n"; 
	}
	if(!descricao.equals(""))
	{
		erro += descricao + "\n"; 
	}
	if(!cargaHorariaPermitida.equals(""))
	{
		erro += cargaHorariaPermitida + "\n"; 
	}
	if(!cargaMaximaPermitida.equals(""))
	{
		erro += cargaMaximaPermitida + "\n"; 
	}
	if(!dataMaior.equals(""))
	{
		erro += dataMaior + "\n"; 
	}
	erro = "DEU RUIM";

		%>
	<script type="text/javascript"> 
	
	$(document).ready(function() {
		var erro = '<%=erro%>' ;
		var anexo = '<%=anexo%>';
		var areaAtividade = '<%=areaAtividade%>';
		var codigoAtividade = '<%=codigoAtividade%>';
		var horaInicio = '<%=horaInicio%>';
		var horaFim = '<%=horaFim%>';
		var dataInicio = '<%=dataInicio%>';
		var dataFim = '<%=dataFim%>';
		var descricao = '<%=descricao%>';
		var cargaHorariaPermitida = '<%=cargaHorariaPermitida%>';
		var cargaMaximaPermitida = '<%=cargaMaximaPermitida%>';
		var dataMaior = '<%=dataMaior%>';
		
		
			if(<%=invalido%> == false)
				{
				
				alert(erro + '\n' + anexo + '\n' + areaAtividade + '\n'
				+ codigoAtividade + '\n' + horaInicio + '\n' + horaFim + '\n'
				+ dataInicio + '\n' + dataFim + '\n' + descricao + '\n'
				+ cargaHorariaPermitida + '\n' + cargaMaximaPermitida + '\n'
				+ dataMaior+ '\n'
				);		
			
				}
		
	});
	
	
	
	</script>
		
<% }
}%>
 
 
  						
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

    <button type="submit" class="btn btn-primary" onclick="Listar()">Buscar</button>
  </div>
</div> <!--  Termino BUSCA -->
	
<div>
     <button type="submit" id="btnAlterar" class="btn btn-primary" onclick="Alterar()">Consultar</button>
</div>
	       
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
		    
		    String selected = "";
     	   if(i== 0)
     	   {
     		   selected = "checked";
     	   }
		    
     	   
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