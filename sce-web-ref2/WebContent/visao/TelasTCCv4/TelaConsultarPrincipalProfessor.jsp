<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<script type="text/javascript">
$(document).ready(function(){
$('#btnArquivo').change(function(){
    $('#txtArquivo').val($(this).val());
});

});

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consultas Professor</title>
</head>

<body id="fundo">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuProfessor.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">

<form class= "form-horizontal" role = "form" name="frmConsultarPrincipalProfessor" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" name="acao" value="consultarPrincipalProfessor">
	
			<h3 align="center">Consultas</h3>
	
<br><br>
    	
 <div class="media">
  <div class="media-left media-middle">
    <a href="#">
      <img class="media-object" src="/sce-web-ref2/visao/TelasTCCv4/Imagens/aluno_turma.png" width="80" height="70">
    </a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Atividade Complementar por Aluno/Turma</h4>
    Aqui você encontra análise,média e prospecção das Atividades Complementares por Aluno/Turma. 
  </div>
</div>
 
 <br><br>
 
  <div class="media">
  <div class="media-left media-middle">
    <a href="#">
      <img class="media-object" src="/sce-web-ref2/visao/TelasTCCv4/Imagens/pendente_avaliacao.png" width="80" height="70">
    </a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Atividade Complementar Pendente de Aprovação</h4>
     <p>Aqui você encontra todas as atividades que estão pendentes de sua avaliação.</p>
     <p> 
     <span class="label label-primary"> Atenção! Você tem: 42 atividades para avaliar! </span>  </p>
  </div>
</div>

<br><br>

 <div class="media">
  <div class="media-left media-middle">
    <a href="#">
      <img class="media-object" src="/sce-web-ref2/visao/TelasTCCv4/Imagens/status.png" width="80" height="70">
    </a>
  </div>
  <div class="media-body">
    <h4 class="media-heading" align="left">Atividade Complementar por Status</h4>
     Aqui você pode visualizar as atividades por status.
  </div>
</div>

<br><br>

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>