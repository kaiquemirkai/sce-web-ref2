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


Atcomp ac = (Atcomp)session.getAttribute("atcomp2");


response.setContentType("application/pdf");
response.setContentLength(ac.getAnexo().length);
/*Fornece um fluxo de sa�da para o envio de dados bin�rios para o cliente. 
Um objeto ServletOutputStream normalmente � recuperado atrav�s do m�todo ServletResponse.getOutputStream()
Esta � uma classe abstrata que implementa o cont�iner servlet. 
Subclasses desta classe deve implementar o m�todo java.io.OutputStream.write (int). */
ServletOutputStream ouputStream = response.getOutputStream();
ouputStream.write(ac.getAnexo(), 0, ac.getAnexo().length);
ouputStream.flush();
ouputStream.close();

%>

</body>
</html>