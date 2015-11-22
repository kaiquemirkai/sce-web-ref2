<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%@page import="br.sceweb.dominio.*"%>
    <%@page import="java.util.*"%>
<style type="text/css">  
  @import url("/sce-web-ref2/visao/TelasTCCv4/CSS/Background.css");  
</style>

<script> 

function AreaTecnica(){
	   document.getElementById('frmConsultarQuantidadeHorasAluno').acao.value = "ListarAreaTecnica";
	   document.getElementById('frmConsultarQuantidadeHorasAluno').submit();
}

function AreaSocioCultural(){
	   document.getElementById('frmConsultarQuantidadeHorasAluno').acao.value = "ListarAreaSocioCultural";
	   document.getElementById('frmConsultarQuantidadeHorasAluno').submit();
}
function AreaCidada(){
	   document.getElementById('frmConsultarQuantidadeHorasAluno').acao.value = "ListarAreaCidada";
	   document.getElementById('frmConsultarQuantidadeHorasAluno').submit();
}

function Prospeccao(){
	   document.getElementById('frmConsultarQuantidadeHorasAluno').acao.value = "Prospeccao";
	   document.getElementById('frmConsultarQuantidadeHorasAluno').submit();
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Consulta de Horas</title>
</head>

<body id="fundo">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuAluno.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">

<form class= "form-horizontal" role = "form" id="frmConsultarQuantidadeHorasAluno" name="frmConsultarQuantidadeHorasAluno" action="/sce-web-ref2/ServletControle" method="post">   
    	
		<input type="hidden" id="acao" name="acao" value="RelatorioQuantidadeHorasAlunos">
 <br> <br>
  <!-- Icone e botão -->
 <div class="row">
            
                 <div class="col-lg-3 col-md-3 col-sm-3">
                      <div class="alert alert-danger text-center style-box-two">
                            <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/total.png" width="60" height="60">
                            <h3>Total Área</h3>
                            Aqui você encontra mais detalhes ....
                            <p align="center"><input type="submit" class="btn btn-danger" value="Situação" role="button" onclick="Prospeccao()"> </p>
                        </div>
                    </div>
             <div class="col-lg-3 col-md-3 col-sm-3">
                      <div class="alert alert-info text-center style-box-two">
                            <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/tecnica.png" width="60" height="60">
                            <h3>Área Técnica</h3>
                            Aqui você encontra mais detalhes ....
                            <p align="center"><input type="submit" class="btn btn-info" value="Mais detalhes" role="button" onclick="AreaTecnica()"> </p>
                        </div>
                    </div>
               <div class="col-lg-3 col-md-3 col-sm-3">
                      <div class="alert alert-warning text-center style-box-two">
                            <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/socioCultural.png" width="60" height="60">
                            <h3>Área Sociocultural</h3>
                            Aqui você encontra mais detalhes ....
                            <p align="center"><a href="#" class="btn btn-warning" role="button" onclick="AreaSocioCultural()">Mais detalhes</a> </p>
                        </div>
                    </div>
               <div class="col-lg-3 col-md-3 col-sm-3">
                      <div class="alert alert-success text-center style-box-two">
                            <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/cidada.png" width="60" height="60">
                            <h3>Área Cidadã </h3>
                            Aqui você encontra mais detalhes ....
                            <p align="center"><a href="#" class="btn btn-success" role="button" onclick="AreaCidada()">Mais detalhes</a> </p>
                        </div>
                    </div>

        </div> <!-- FINAL ROW 1 -->

<!-- Campos com porcentagem e status -->
<div class="row" style="color: white;">

	<div class="col-lg-3 col-md-3 col-sm-3">
    	<div class="alert alert-default text-center style-box-two" style="background-color: #D9534F;">
        	<div class="row"> 
            	<div class = "col-md-4">
               		<img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/smile1.png" width="60" height="60">
                </div>
               		    
               <div class = "col-md-8">
               		<h3>100.00%</h3>
               		    
               </div>
               		    
             </div> <!-- FINAL ROW COLUNA -->  
               		    
           </div>  
      </div>
  
	<div class="col-lg-3 col-md-3 col-sm-3">
    	<div class="alert alert-default text-center style-box-two" style="background-color: #5BC0DE;">
        	<div class="row"> 
            	<div class = "col-md-4">
               		<img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/smile2.png" width="60" height="60">
                </div>
               		    
               <div class = "col-md-8">
               		<h3>100.00%</h3>
               		    
               </div>
               		    
             </div> <!-- FINAL ROW COLUNA -->  
               		    
           </div>  
	</div>                  
                    
                    
	<div class="col-lg-3 col-md-3 col-sm-3">
    	<div class="alert alert-default text-center style-box-two" style="background-color: #F0AD4E;">
        	<div class="row"> 
            	<div class = "col-md-4">
               		<img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/smile3.png" width="60" height="60">
                </div>
               		    
               <div class = "col-md-8">
               		<h3>100.00%</h3>
               		    
               </div>
               		    
             </div> <!-- FINAL ROW COLUNA -->  
               		    
           </div>  
      </div>
      
      <div class="col-lg-3 col-md-3 col-sm-3">
    	<div class="alert alert-default text-center style-box-two" style="background-color: #5CB85C;">
        	<div class="row"> 
            	<div class = "col-md-4">
               		<img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/smile5.png" width="60" height="60">
                </div>
               		    
               <div class = "col-md-8">
               		<h3>100.00%</h3>
               		    
               </div>
               		    
             </div> <!-- FINAL ROW COLUNA -->  
               		    
           </div>  
      </div>
      
                        
</div><!-- FINAL ROW 2 -->
       

         
        


</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>