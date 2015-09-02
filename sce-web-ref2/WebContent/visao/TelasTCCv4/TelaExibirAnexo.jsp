<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@page import="br.sceweb.dominio.*"%>
 <%@page import="java.io.*"%>
 <%@page import="javax.servlet.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tela PDF</title>
</head>
<body>

<%


Atcomp a = (Atcomp)request.getAttribute("atcomp");


response.setContentType("application/pdf");  
response.setContentLength(a.getAnexo().length);  
ServletOutputStream ouputStream = response.getOutputStream();  
ouputStream.write(a.getAnexo(), 0, a.getAnexo().length);  
ouputStream.flush();  
ouputStream.close();
%>
</body>
</html>