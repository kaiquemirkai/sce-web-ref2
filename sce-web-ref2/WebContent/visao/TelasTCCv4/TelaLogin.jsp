<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Login</title>
    

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body id="fundo">
	<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>
    	
		<div id="linhaColorida" style="height:16px; margin-top:-10px;"> </div>
    	
    	
<div>
     
<div id="formulario">

<form id="frmLogin" name="frmLogin" action="/sce-web-ref2/ServletControle" method="post">   
   
 <jsp:include page="Validacao/LoginValidar.jsp" />
    	
<input type="hidden" name="acao" value="AcessarLogin">

<% 
String erro = (String)request.getAttribute("erro");

if (erro == null)
{
	erro = "";	
}

else
{
   String divInicio = "<div class='alert alert-default' role='alert' align='center' style ='color: red'>";
   String icone = "<span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true'></span>";
   String divFim = "</div>";
   String labelInicio = "<label>";
   String labelFim = "</label>";

%>

<%=divInicio %>
<%=icone %>
<%=labelInicio %> <%=erro%> <%=labelFim %>
<%=divFim %>


    <% 
}
    %>

   			 
<!--Login-->
    
    <div class="input-group col-sm-offset-4 col-sm-4" style="padding:10px; padding-top:50px; ">
    	<div class="input-group-addon"> <span class="glyphicon glyphicon-user"> </span> </div>
      		<input type="text" class="form-control" id="txtLogin" name="txtLogin" placeholder="Login">
     
    </div>


            
             <!--Senha-->
    <div class="input-group col-sm-offset-4 col-sm-4" style="padding:10px;">
    	<div class="input-group-addon"> <span class="glyphicon glyphicon-lock"> </span> </div>
      		<input type="password" class="form-control" id="txtSenha" name="txtSenha" placeholder="Senha">
     
    </div>



   <div class="input-group col-sm-offset-5 col-sm-5" style="padding:10px; padding-left:5%; padding-bottom:150px; ">
      
     <button class="btn btn-success" type="submit"> Login <span class="glyphicon glyphicon-ok-sign"></span>
     </button>
  </div>
  
  	
    	
 </form>  
 </div> <!-- Final do Div formulario -->
 </div>

 <div id="rodape">
		<jsp:include page="Rodape.jsp" />
</div>
</body>
</html>
