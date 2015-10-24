<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="br.sceweb.dominio.*"%>
<%@page import="java.util.*"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>


<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Logoff</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

</head>

<body id="fundo">
	
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>
    	
<div id="linhaColorida" style="height:16px; margin-top:-10px;"> </div>


<%
//Destroi as sessions
HttpSession sessao = request.getSession(false);

sessao.invalidate();


response.sendRedirect("/sce-web-ref2/visao/TelasTCCv4/TelaLogin.jsp");

%>


</body>
</html>