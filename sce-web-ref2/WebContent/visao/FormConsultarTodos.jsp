<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.*"%>
	<%@ page import="br.sceweb.dominio.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
label {
	font: normal 12px courier !important;
}
</style>
<title>Consultar Todas Empresas</title>
<link rel="stylesheet" type="text/css"
	href="/sce-web-ref2/CSS/formato.css">
<script type="text/javascript" language="javascript">
	function voltar() {
		history.go(-1)
	}
</script>
</head>
</head>
<body>
	<jsp:include page="Cabecalho.jsp" />
	<div id="relatorio">
		<div id="titulo">
			<h3>Relatório de Empresas</h3>
		</div>
		<hr>
		<div id="formulario">
			<form name="formEmpresaConsultaTodos" action="/sce-web-ref2/ServletControle" method="post">

				<table id="tabcampos">

					<tr id="cabecalho">
						<td> CNPJ      </td>
						<td> Nome Empresa       </td>
						<td> Endereço           </td>
						<td> Responsavel</td>
						<td> Telefone Responsável</td>
						<td> email</td>
					</tr>
					<%
					ArrayList<Empresa> lista = (ArrayList<Empresa>) request.getAttribute("empresas");
					if ((lista!=null)&& (lista.size()>0)){
					    Empresa e = null;
						for (int i = 0; i < lista.size(); i++) {
							
							    e = (Empresa) lista.get(i);
								out.println("<TR>");
								out.println("<TD>" + e.getCnpj().trim()+ "</TD>");
								out.println("<TD>" + e.getNomeDaEmpresa() + "</TD>");
								out.println("<TD>" + e.getEndereco() + "</TD>");
								out.println("<TD>" + e.getResponsavel() + "</TD>");
								out.println("<TD>" + e.getTelefoneResponsavel() + "</TD>");
								out.println("<TD>" + e.getEmail() + "</TD>");
								out.println("</TR>");
							}
						
						}
						else{
							out.println("</TR><TD> <BR> </TD> <TD> <BR> </TD> </TR>");
							out.println("</TR><TD> <BR> </TD> <TD><BR></TD></TR>");
						}
					%>
					<tr>
						<td colspan=6 id="botoes" align="center">
						
					    <input id="botao" type=button name=btnVoltar onclick=voltar() value=Voltar>
					    </td>
					</tr>
				

		
				</table>
			</form>
		</div>
	</div>
<jsp:include page="Rodape.jsp" />
</body>
</html>