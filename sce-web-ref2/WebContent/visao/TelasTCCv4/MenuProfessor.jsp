<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<script> 

function HomeProfessor(){
	   document.getElementById('acao').value = "HomeProfessor";
	   document.getElementById('frmMenuProfessor').submit();
}

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>



</head>
<body>
<!-- Single button -->
<!-- Single button -->
<div class="btn-group">
  <button type="submit" onclick="HomeProfessor()" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   HOME <span class="caret"></span>
  </button>
 </div>



<div class="btn-group">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    ATCOMP <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a href="#">Consultar</a></li>
    <li><a href="#">Cadastrar</a></li>
    <li><a href="#">Excluir	</a></li>
    </ul>
 </div>
 
 <div class="btn-group">
   <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    CATEGORIAS <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a href="#">Consultar</a></li>
    <li><a href="#">Cadastrar</a></li>
    <li><a href="#">Alterar</a></li>
    <li><a href="#">Excluir</a></li>
  </ul>
</div>
 
 <div class="btn-group">
   <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    SUGESTÕES <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a href="#">Consultar</a></li>
    <li><a href="#">Cadastrar</a></li>
    <li><a href="#">Alterar</a></li>
    <li><a href="#">Excluir</a></li>
  </ul>
</div>

 <div class="btn-group">
   <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    CONSULTAS <span class="caret"></span>
  </button>

</div>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>


<form id="frmMenuProfessor" class= "form-horizontal" role = "form" name="frmMenuProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="HomeProfessor">
</form>


</body>
</html>