<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<script> 

function HomeAluno(){
	   document.getElementById('frmMenuAluno').acao.value = "HomeAluno";
	   document.getElementById('frmMenuAluno').submit();
}


function ListarAtComp(){
	   document.getElementById('frmMenuAluno').acao.value = "ListarAtCompAluno";
	   document.getElementById('frmMenuAluno').submit();
}


function CadastrarAtComp(){
	   document.getElementById('frmMenuAluno').acao.value = "RedirecionaCadastroAtcompAluno";
	   document.getElementById('frmMenuAluno').submit();
}



function ListarSugestao(){
	   document.getElementById('frmMenuAluno').acao.value = "ListarSugestaoAtividadeAluno";
	   document.getElementById('frmMenuAluno').submit();
}


function CadastrarSugestao(){
	   document.getElementById('frmMenuAluno').acao.value = "RedirecionaCadastroSugestaoAluno";
	   document.getElementById('frmMenuAluno').submit();
}


function ConsultaPrincipal(){
	   
	   document.getElementById('frmMenuAluno').acao.value = "RelatorioQuantidadeHorasAlunos";
	   document.getElementById('frmMenuAluno').submit();
}

</script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>


</head>
<body>
<!-- Single button -->
<!-- Single button -->
<div class="btn-group">
  <button  type="button"  onclick="HomeAluno()" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
    SUGESTÕES <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
    <li><a onclick="ListarSugestao()">Consultar</a></li>
    <li><a onclick="CadastrarSugestao()">Cadastrar</a></li>
    <li><a onclick="ListarSugestao()">Alterar</a></li>
    <li><a onclick="ListarSugestao()">Excluir</a></li>
  </ul>
</div>
 <div class="btn-group">
   <button type="button" onclick="ConsultaPrincipal()" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    CONSULTAS <span class="caret"></span>
  </button>
</div>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<form id="frmMenuAluno" class= "form-horizontal" role = "form" name="frmMenuAluno" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input id="acao" type="hidden" name="acao" value="HomeAluno">
</form>



</body>
</html>