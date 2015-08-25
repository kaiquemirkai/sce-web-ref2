<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel='stylesheet' type='text/css' href='Background.css' />

<!-- %@ PARA PUXAR O IMPORT DE .JAVA -->
 <%@page import="br.sceweb.dominio.*"%>
 <%@page import="java.util.*"%>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultar Sugestão</title>

<script>
   function buscar(){
	   document.getElementById('acao').value = "ListarSugestaoAtividadeProfessor";
   }
   function consultar(){
	   document.getElementById('acao').value = "ConsultarSugestaoAtividadeProfessor";
   }
   /*function cadatrar(){
	   document.getElementById('acao').value = "CadastrarSugestaoAtividadeProfessor";
   } */
   function alterar(){
	   document.getElementById('acao').value = "ConsultarAlterarSugestaoAtividadeProfessor";
   }
   function excluir(){
	   document.getElementById('acao').value = "ExcluirSugestaoAtividadeProfessor";
   }
</script>

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
<form class="form-horizontal" role="form" name="frmListarSugestaoProfessor" 
action="/sce-web-ref2/ServletControle" method="post">


			<input type="hidden"  id="acao" name="acao">

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
					</label> <label class="radio-inline"> <input type="radio"
						name="rdBusca" id="rdCategoria" value="categoria">
						Categoria
					</label>

					<button type="submit" class="btn btn-primary" onclick="buscar()">Listar</button>
					<button type="submit" class="btn btn-primary" onclick="consultar()">Consultar</button>
					<button type="submit" class="btn btn-primary" onclick="alterar()">Alterar</button>
					<button type="submit" class="btn btn-primary" onclick="excluir()">Excluir</button>
					
					
					
					<br> <br>
				

				</div>
			</div>
			<!--  Termino BUSCA -->


			<br> <br>

			<table name="tdListaSugestaoAtividade" class="table table-striped">

				<tr>

					<td><label>Código</label></td>

					<td><label>Tema/Nome</label></td>

					<td><label>Quem Cadastrou</label></td>

					<td><label>Data do Cadastro</label></td>

					<td><label>Área</label></td>

				

				</tr>


				<% 
				//LOCAL ONDE ATRAVÉS DO request.getAttribute SERÁ PEGO TODOS OS ELEMENTOS DO ARRAYLIST >>sugestaoAtividade
			    //instância lista  (ARRAY) terá todos os objetos 
	         
ArrayList<SugestaoAtividade> lista = (ArrayList<SugestaoAtividade>) request.getAttribute("sugestaoAtividades");
    
				if ((lista!=null)&&(lista.size()>0)){
                SugestaoAtividade sa = null;
                
	               for (int i = 0; i < lista.size(); i++) {
		    
		        sa = (SugestaoAtividade) lista.get(i);
				
				
				%>
<!-- SERÁ CARREGADO TODAS AS SUGESTÕES DE ATIVIDADES DO BANCO  -->
<tr>

<td> <label><input type="radio" name="codigoRadio" value="<%=sa.getCodigo()%>"> </label> </td>

<td> <label><%=sa.getNomeSugestaoAtividade()%> </label> </td>
     
<td> <label><%=sa.getQuemCadastrou()%></label> </td>

<td> <label><%=sa.getDataCadastro()%></label> </td>

<td> <label><%=sa.getArea()%></label> </td>



<tr>
<%

	               } //FIM DO FOR PARA CARREGAR TODOS OS OBJETOS
             
				}//FIM DO IF
	               %>


       
			</table>
  
			<!--  Termino Das Alterações -->

		</form>
		<!-- FIM DO FORM -->

	</div>
	<!-- Fim da Div Conteudo -->


</body>
</html>