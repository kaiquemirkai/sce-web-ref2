<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css"	href="/sce-web-ref2/CSS/formato.css">
<style type="text/css">
label {
	font: normal 12px courier !important;
}
</style>
</head>
<body>
	<jsp:include page="Cabecalho.jsp" />
	<div id="principal">
		<div id="titulo">
			<h3>Login</h3>
		</div>
		<hr>
		<div id="formulario3">
			<form name="frmLogin" action="/sce-web-ref2/ServletControle"
				method="post">
				<table id="tabcampos">
					<tr>
						<td><label id="txt">Usuario: </label></td>
						<td><input type="text" id="campo" name="txtRA" /></td>
					</tr>
					<tr>
						<td><label id="txt">Senha: </label></td>
						<td><input type="password" id="campo" name="txtSenha" /></td>
					</tr>
					<tr>
						<td colspan="2" id="botoes"><input type="submit" id="botao"
							name="botao" value="Login" /> <a href="#">Esqueci minha
								Senha!</a> <input type="hidden" name="acao" value="Login"></td>
					</tr>
				</table>
				<%
					String erro = (String) request.getAttribute("erro");
					if (erro == null)
						erro = "";
				%>
				<label><%=erro%></label>
			</form>
		</div>
	</div>
	<jsp:include page="Rodape.jsp" />
</body>
</html>