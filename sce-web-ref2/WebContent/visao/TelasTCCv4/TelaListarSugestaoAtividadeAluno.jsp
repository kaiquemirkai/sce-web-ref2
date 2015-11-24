<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<!-- %@ PARA PUXAR O IMPORT DE .JAVA -->
 <%@page import="br.sceweb.dominio.*"%>
 <%@page import="java.util.*"%>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultar Sugestão</title>

</head>
<body id="fundo">

	<!-- Import do Cabecalho -->
	<div id="cabecalho" style="background-color: #0058a5">
		<jsp:include page="Cabecalho.jsp" />
	</div>

	<!-- Div do Menu -->
	<div id="menu" style="background-color: #0058a5; margin-top: -10px">
		<jsp:include page="MenuAluno.jsp" />
	</div>

	<!-- Div da Linha colorida -->
	<div id="linhaColorida" style="height:16px;"> </div>

	<div class="container">



		<!-- INICIO DO FORM -->
		
<form class="form-horizontal" role="form" id="frmListarSugestaoAluno" name="frmListarSugestaoAluno" action="/sce-web-ref2/ServletControle" method="post">

			<input type="hidden"  id="acao" name="acao" >
	
			
<h3 align="center">Consulta de Sugestões de Atividade Complementar</h3>

			<br> <br>
			<!--  BUSCA -->
			<div class="form-group">

				<div class="col-sm-2" style="width: 25em">
					<input type="text" class="form-control" id="txtBusca"
						name="txtBusca" placeholder="buscar">
				</div>

				<div class="col-sm-10">
					<label class="radio-inline"> <input type="radio"
						name="rdBusca" id="rdTema" value="tema"> Tema
					</label> <label class="radio-inline"> <input type="radio"
						name="rdBusca" id="rdArea" value="area"> Área
					</label> 
					<button type="#" class="btn btn-primary" onclick="buscar()">Buscar</button>
					<!-- <button type="#" class="btn btn-primary" onclick="cadastrar()">Cadastrar</button>  -->
					<button type="#" class="btn btn-primary" onclick="consultar()">Consultar</button>
					<button type="#" class="btn btn-primary" onclick="alterar()">Alterar</button>
					<button type="#" class="btn btn-primary" onclick="excluir()">Excluir</button>
					
					
					
					<br> <br>
				

				</div>
			</div>
			<!--  Termino BUSCA -->


			<br> <br>

<% 
String erro = (String)request.getAttribute("erro");

if(erro == null)
{
	erro = "";	
}
else{
if (erro.equals("Você não é o criador desta sugestão por este motivo ela não pode ser excluída!"));
{
		%>
	<script type="text/javascript"> 
	
	$(document).ready(function() {
		alert('<%=erro%>');
	});
	
	
	
	</script>
		
<% }%>


<% if (erro.equals("Registro excluído com sucesso!"))
{
	
	%>
	
	<script type="text/javascript"> 
	
	$(document).ready(function() {
		alert('<%=erro%>');
	});
	
	
	
	</script>
	
<% 
}
}
%>


			<table name="tdListaSugestaoAtividade" class="table table-striped">

				<tr>

					<td><label>Código</label></td>

					<td><label>Tema/Nome</label></td>

					<td><label>Quem Cadastrou</label></td>

					<td><label>Data do Cadastro</label></td>

					<td><label>Área</label></td>

				

				</tr>


<% 
	         
ArrayList<SugestaoAtividade> lista = (ArrayList<SugestaoAtividade>) request.getAttribute("sugestaoAtividades");
    
				if ((lista!=null)&&(lista.size()>0)){
                SugestaoAtividade sa = null;
                
	               for (int i = 0; i < lista.size(); i++) {
	            	   String selected = "";
	            	   if(i== 0)
	            	   {
	            		   selected = "checked";
	            	   }
	            		   
		        sa = (SugestaoAtividade) lista.get(i);
				String area = "";
				if(sa.getArea().equals("01"))
				{
					area = "Tecnológica";
				}
				if(sa.getArea().equals("02"))
				{
					area = "Sóciocultural";
				}
				if(sa.getArea().equals("03"))
				{
					area = "Cidadã";
				}
				%>
<!-- SERÁ CARREGADO TODAS AS SUGESTÕES DE ATIVIDADES DO BANCO  -->
<tr>

<td> <label><input <%=selected%> type="radio" name="codigoRadio" value="<%=sa.getCodigo()%>"> </label> </td>

<td> <label><%=sa.getNomeSugestaoAtividade()%> </label> </td>
     
<td> <label><%=sa.getQuemCadastrou()%></label> </td>

<td> <label><%=sa.getDataCadastro()%></label> </td>

<td> <label><%=area%></label> </td>



<tr>
<%

	               } //FIM DO FOR PARA CARREGAR TODOS OS OBJETOS
             
				}//FIM DO IF
	               %>


       
			</table>
  
			<!--  Termino Das Alterações -->


<script>


   function buscar(){
	   document.getElementById('frmListarSugestaoAluno').acao.value = "ListarSugestaoAtividadeAluno";
	      
	   
   }
   
   function consultar(){
	   document.getElementById('frmListarSugestaoAluno').acao.value = "ConsultarSugestaoAtividadeAluno";
   }

   function alterar(){
	   document.getElementById('frmListarSugestaoAluno').acao.value = "ConsultarAlterarSugestaoAtividadeAluno";
   }
   
   function excluir(){
	   document.getElementById('frmListarSugestaoAluno').acao.value = "ExcluirSugestaoAtividadeAluno";
   }
</script>


		</form>
		<!-- FIM DO FORM -->




	</div>
	<!-- Fim da Div Conteudo -->


</body>
</html>