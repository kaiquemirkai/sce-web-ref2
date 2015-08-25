<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Login</title>
<link rel="stylesheet" type="text/css" href="/sce-web-ref2/visao/TelasTCCv3/CSS/simple-sidebar.css">    
<link rel="stylesheet" type="text/css" href="/sce-web-ref2/visao/TelasTCCv3/CSS/Template.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="/sce-web-ref2/visao/TelasTCCv3/CSS/styles.css">

   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>
	<div id="cabecalho">
		<jsp:include page="CabecalhoImagem.jsp" />
	</div>
<div id="Menu">
		<jsp:include page="Menu.jsp" />
	</div>

	<div id="formulario" class="">
 		<form name="frmLogin" action="/sce-web-ref2/ServletControle" method="post">   
    	<input type="hidden" name="acao" value="AcessarLogin">
    	
    	<div class="linhaBranca">
    	
    	</div>
    	<div id="campo" class="background">
   			 
                <!--Login-->
     <div class="input-group col-sm-offset-4 col-sm-4" style="padding:10px; padding-top:50px; ">
      <div class="input-group-addon">
      <span class="glyphicon glyphicon-user"></span>
      </div>
      <input type="text" class="form-control" id="txtLogin" name="txtLogin" placeholder="Login">
     
    </div>


            
             <!--Senha-->
       <div class="input-group col-sm-offset-4 col-sm-4" style="padding:10px;">
      <div class="input-group-addon">
      <span class="glyphicon glyphicon-lock"></span>
      </div>
      <input type="password" class="form-control" id="txtSenha" name="txtSenha" placeholder="Senha">
     
    </div>


   <div class="input-group col-sm-offset-5 col-sm-5" style="padding:10px; padding-left:5%;">
      
     <button class="btn btn-success"  data-toggle="popover" type="button">
     Login
     <span class="glyphicon glyphicon-ok-sign"></span>
    </button>
      </div>
 


        
       
</div> <!--  Final do Div campos -->
		<div class="linhaBranca">
    	
    	</div>
    	<div class="linhaAzulEscura">
    	
    	</div>
 </form>  
 </div> <!-- Final do Div formulario -->

</body>
</html>