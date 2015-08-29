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

<form class= "form-horizontal" role = "form" name="frmListarRegraAtcompProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
   
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
 <button type="submit" class="btn btn-primary">Buscar</button>
 <button type="submit" id="btnConsultar" class="btn btn-primary" onclick="Consultar()">Consultar</button>


     <button type="submit" id="btnExcluir" class="btn btn-primary" onclick="Excluir()">Excluir</button>



     <button type="submit" id="btnAlterar" class="btn btn-primary" onclick="Alterar()">Alterar</button>
  </div>
</div> <!--  Termino BUSCA -->

     

   
	
	       
    <br> <br>
     
<table name="tdListaRegraAtcomp" class="table table-striped">
  
<tr> 
    
<td> <label>Código</label> </td>

<td> <label>Área </label> </td>
     
<td> <label>Código da Atividade</label> </td>

<td> <label>Qntde de Horas Permitidas</label> </td>

<td> <label>Carga horária por Atividade</label> </td>



<td> <label>Data Início</label> </td>

<td> <label>Data Fim</label> </td>

<td> <label>Descrição</label> </td>


</tr>

<%


ArrayList<RegraAtcomp> lista = (ArrayList<RegraAtcomp>) request.getAttribute("regraAtcomps");
if ((lista!=null)&& (lista.size()>0)){
    RegraAtcomp ra = null;
    
	for (int i = 0; i < lista.size(); i++) {
		    
		    ra = (RegraAtcomp) lista.get(i);
		    
    


%>
<tr>
<td> <label><input type="radio" name="codigoRadio" value="<%=ra.getCodigo()%>"> </label> </td>

<td> <label><%=ra.getArea()%> </label> </td>
     
<td> <label><%=ra.getCodigoAtividade()%></label> </td>

<td> <label><%=ra.getQuantidadeDeAtividadePermitida()%></label> </td>

<td> <label><%=ra.getCargaHoraria()%></label> </td>


<td> <label><%=ra.getDataInicioAtividade()%></label> </td>

<td> <label><%=ra.getDataTerminoAtividade()%></label> </td>

<td> <label><%=ra.getDescricaoRegra()%></label> </td>
<tr>

<%    
	
		}
	
	}
%>
</table>

<!--  Termino Das Alterações -->

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->
<script type="text/javascript">
     function Consultar()
     {
    	 document.getElementById('acao').value = "ConsultarRegraAtcompProfessor";
     }
     function Listar()
     {
    	 document.getElementById('acao').value = "ListarRegraAtcompProfessor";
     }
     
     function Excluir()
     {
    	 document.getElementById('acao').value = "ExcluirRegraAtcompProfessor";
     }
     
     function Alterar()
     {
    	 document.getElementById('acao').value = "Consultar2RegraAtcompProfessor";
     }
    
    
 </script>


</body>
</html>