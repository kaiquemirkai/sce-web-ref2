<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Controle de Estagio</title>
<link rel="stylesheet" type="text/css" href="/sce-web-ref2/CSS/formato.css">
<script type="text/javascript" language="javascript">
	function empresa() {
		document.formMenu.acao.value = "MostraFormMenuEmpresa";
		document.formMenu.submit();
	}
	function sair() {
		//window.close();
		history.go(-1)
	}
</script>
</head>
<body>
	<jsp:include page="Cabecalho.jsp" />
	<div id="principal">
		<div id="titulo">
			<h3 align=center>Menu Principal</h3>
		</div>
		<div id="menuSuperior">
		<form name="formMenu" action="/sce-web-ref2/ServletControle" method="post">
		<table id="tabmenu">
		<tr>
		<td>
		<input id="botao" type="button"	name="btnEmpresa" onclick="empresa()" value="Empresas">
		</td>
		<td>
		<input id="botao" type="button"	name="btnEstagio" onclick="estagio()" value="Estagio">
		</td>
		<td>
		<input id="botao" type="button"	name="btnSair" onclick="sair()" value="Sair">
		</td>
		<tr>
	
		</table>
		<input type="hidden" name="acao" value="">
		<input type="hidden" name="menu" value="principal">	
		</form>
		</div>
	</div>
	<jsp:include page="Rodape.jsp" />
</body>
</html>