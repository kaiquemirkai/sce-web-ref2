<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<script> 

function HomeProfessor(){
	   document.getElementById('frmMenuProfessor').acao.value = "HomeProfessor";
	   document.getElementById('frmMenuProfessor').submit();
}


function ListarAtComp(){
	   document.getElementById('frmMenuProfessor').acao.value = "ListarAtCompProfessor";
	   document.getElementById('frmMenuProfessor').submit();
}


function CadastrarAtComp(){
	   document.getElementById('frmMenuProfessor').acao.value = "RedirecionaCadastroAtcompProfessor";
	   document.getElementById('frmMenuProfessor').submit();
}


function ListarRegraAtComp(){
	   document.getElementById('frmMenuProfessor').acao.value = "ListarRegraAtcompProfessor";
	   document.getElementById('frmMenuProfessor').submit();
}


function CadastrarRegraAtComp(){
	   document.getElementById('frmMenuProfessor').acao.value = "RedirecionaCadastroRegraAtcompProfessor";
	   document.getElementById('frmMenuProfessor').submit();
}



function ListarSugestao(){
	   document.getElementById('frmMenuProfessor').acao.value = "ListarSugestaoAtividadeProfessor";
	   document.getElementById('frmMenuProfessor').submit();
}


function CadastrarSugestao(){
	   document.getElementById('frmMenuProfessor').acao.value = "RedirecionaCadastroSugestaoProfessor";
	   document.getElementById('frmMenuProfessor').submit();
}


function ConsultaPrincipal(){
	   
	   document.getElementById('frmMenuProfessor').acao.value = "ConsultarPrincipalProfessor";
	   document.getElementById('frmMenuProfessor').submit();
}




</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>



</head>
<body>
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
    <li><a onclick="ListarAtComp()">Consultar</a></li>
    <li><a onclick="CadastrarAtComp()">Cadastrar</a></li>
   </ul>
 </div>
 
 <div class="btn-group">
   <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    REGRAS <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a onclick="ListarRegraAtComp()">Consultar</a></li>
    <li><a onclick="CadastrarRegraAtComp()">Cadastrar</a></li>
    <li><a onclick="ListarRegraAtComp()">Alterar</a></li>
    <li><a onclick="ListarRegraAtComp()">Excluir</a></li>
  </ul>
</div>


 
 <div class="btn-group">
   <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    SUGESTÕES <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a onclick="ListarSugestao()">Consultar </a></li>
    <li><a onclick="CadastrarSugestao()">Cadastrar</a></li>
    <li><a onclick="ListarSugestao()">Alterar</a></li>
    <li><a onclick="ListarSugestao()">Excluir</a></li>
    
  </ul>
</div>

 <div class="btn-group">
   <button type="button" onclick="ConsultaPrincipal()" class="btn btn-primary dropdown-toggle data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    CONSULTAS <span class="caret"></span>
  </button>

</div>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>


<form id="frmMenuProfessor" class= "form-horizontal" role = "form" name="frmMenuProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input id="acao" type="hidden" name="acao" value="HomeProfessor">
</form>


</body>
</html>