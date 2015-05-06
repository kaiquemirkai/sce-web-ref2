<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
    
	
 
    <link href="..\CSS\boilerplate.css" rel="stylesheet" type="text/css">
    <link href="..\TelasTCCv3\CSS\bootstrap.css" rel="stylesheet" type="text/css">



<style type="text/css">

.background {
	background-color: #003;
	height:300px;
	margin-left:-15px; 
}

.label {
	text-align:center;
	font-family:tahoma;
	font-size:medium;  
	text-decoration:none;
	color:white; 
	font-weight:bold; 
	
	
}
.botao {
    margin-top:20px;
	text-align:center;
	font-family:tahoma;
	font-size:medium;  
	text-decoration:none;
	font-weight:normal; 
	border-radius:5px;
	box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
    }
    
.input {
    margin-top:25px;
    margin-bottom:5px:
	text-align:center;
	font-family:tahoma;
	font-size:medium;  
	text-decoration:none;
	color:black; 
	font-weight:normal; 
	margin-left:10px; 
    width:350px;
    border-radius:5px;

    
		
}
.input:focus, select:focus, textarea:focus{
      background: #D6F5FF;
 
		
}

a:link { /*cor do link quando não foi visitado*/
	color: #FFF;
	text-decoration: none;
}
a:visited {  /*cor lilas quando visitado o link*/
	color: #909;
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
</style>


</head>

<body>
	<div id="cabecalho">
		<jsp:include page="Cabecalho.jsp" />
	</div>

	<div id="formulario">
 		<form name="frmLogin" action="/sce-web-ref2/ServletControle" method="post">   
    	<input type="hidden" name="acao" value="AcessarLogin">
    	
    	<div id="campo" class="background">
   			 
                <div class="col-md-3 label "  >   
                	<label class="col-md-3" >Login</label>&nbsp;  
                	<input type="text" id="txtLogin" name="txtLogin" class="input" width="150">
                </div>
           
            
             <!--Senha-->
                                
              <div class="col-md-3 label"  >   
                <label class="col-md-3">Senha</label>
                <input type="password" id="txtSenha" name="txtSenha" class="input" width="400">
              </div>
          

             <!--Botão de Login-->
            <div class="col-md-3 label"  > 
            <label class="label col-md-5">&nbsp;
               <input type="submit" id="botao" class="btn btn-danger botao " name="botao" value="Login" /> 
			  			   
            </label>          
           </div>
        
</div> <!--  Final do Div campos -->

 </form>  
 </div> <!-- Final do Div formulario -->
 <div id="rodape">
		<jsp:include page="Rodape.jsp" />
	</div>
</body>
</html>
