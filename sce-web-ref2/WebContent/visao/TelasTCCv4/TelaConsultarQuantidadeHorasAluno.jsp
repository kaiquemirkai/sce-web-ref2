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


  <% String total = "" + request.getAttribute("total");
  	 String resultadoTecnologica = "" + request.getAttribute("tecnologica");
     String resultadoCidada = "" + request.getAttribute("cidada");
     String resultadoCultural = "" + request.getAttribute("cultural");
     
     double totalNumero = Double.valueOf(total);
     double tecnologicaNumero = Double.valueOf(resultadoTecnologica);
     double cidadaNumero = Double.valueOf(resultadoCidada);
     double culturalNumero = Double.valueOf(resultadoCultural);
     
     String iconeTotal = "smile";
     String iconeTecnologica = "smile";
     String iconeCultural = "smile";
     String iconeCidada = "smile";
     
     //Verificação do icone para Total
     if(totalNumero <= 30.00)
     {
    	 iconeTotal += "1.png";
     }
     if(totalNumero > 30.00 && totalNumero <= 50.00)
     {
    	 iconeTotal += "2.png";
     }
     if(totalNumero > 50.00 && totalNumero <= 80.00)
     {
    	 iconeTotal += "3.png";
     }
     if(totalNumero > 80.00 && totalNumero <= 99.99)
     {
    	 iconeTotal += "4.png";
     }
     if(totalNumero >= 100.00 )
     {
    	 iconeTotal += "5.png";
     }
     
   //Verificação do icone para Tecnologica
     if(tecnologicaNumero <= 30.00)
     {
    	 iconeTecnologica += "1.png";
     }
     if(tecnologicaNumero > 30.00 && tecnologicaNumero <= 50.00)
     {
    	 iconeTecnologica += "2.png";
     }
     if(tecnologicaNumero > 50.00 && tecnologicaNumero <= 80.00)
     {
    	 iconeTecnologica += "3.png";
     }
     if(tecnologicaNumero > 80.00 && tecnologicaNumero <= 99.99)
     {
    	 iconeTecnologica += "4.png";
     }
     if(tecnologicaNumero >= 100.00 )
     {
    	 iconeTecnologica += "5.png";
     }
     
     
   //Verificação do icone para Cultural
     if(culturalNumero <= 30.00)
     {
    	 iconeCultural += "1.png";
     }
     if(culturalNumero > 30.00 && culturalNumero <= 50.00)
     {
    	 iconeCultural += "2.png";
     }
     if(culturalNumero > 50.00 && culturalNumero <= 80.00)
     {
    	 iconeCultural += "3.png";
     }
     if(culturalNumero > 80.00 && culturalNumero <= 99.99)
     {
    	 iconeCultural += "4.png";
     }
     if(culturalNumero >= 100.00 )
     {
    	 iconeCultural += "5.png";
     }
     
  
     //Verificação do icone para Cidada
     if(cidadaNumero <= 30.00)
     {
    	 iconeCidada += "1.png";
     }
     if(cidadaNumero > 30.00 && cidadaNumero <= 50.00)
     {
    	 iconeCidada += "2.png";
     }
     if(cidadaNumero > 50.00 && cidadaNumero <= 80.00)
     {
    	 iconeCidada += "3.png";
     }
     if(cidadaNumero > 80.00 && cidadaNumero <= 99.99)
     {
    	 iconeCidada += "4.png";
     }
     if(cidadaNumero >= 100.00 )
     {
    	 iconeCidada += "5.png";
     }
  
     
     
   %>


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
                       
                            <p align="center"><input type="submit" class="btn btn-danger" value="Situação" role="button" onclick="Prospeccao()"> </p>
                        </div>
                    </div>
             <div class="col-lg-3 col-md-3 col-sm-3">
                      <div class="alert alert-info text-center style-box-two">
                            <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/tecnica.png" width="60" height="60">
                            <h3>Área Técnica</h3>
                            
                            <p align="center"><input type="submit" class="btn btn-info" value="Mais detalhes" role="button" onclick="AreaTecnica()"> </p>
                        </div>
                    </div>
               <div class="col-lg-3 col-md-3 col-sm-3">
                      <div class="alert alert-warning text-center style-box-two">
                            <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/socioCultural.png" width="60" height="60">
                            <h3>Área Sociocultural</h3>
                            
                            <p align="center"><a href="#" class="btn btn-warning" role="button" onclick="AreaSocioCultural()">Mais detalhes</a> </p>
                        </div>
                    </div>
               <div class="col-lg-3 col-md-3 col-sm-3">
                      <div class="alert alert-success text-center style-box-two">
                            <img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/cidada.png" width="60" height="60">
                            <h3>Área Cidadã </h3>
                            
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
               		<img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/<%=iconeTotal %>" width="60" height="60">
                </div>
               		    
               <div class = "col-md-8">
               		<h3><%=total%>%</h3>
               		    
               </div>
               		    
             </div> <!-- FINAL ROW COLUNA -->  
               		    
           </div>  
      </div>
  
	<div class="col-lg-3 col-md-3 col-sm-3">
    	<div class="alert alert-default text-center style-box-two" style="background-color: #5BC0DE;">
        	<div class="row"> 
            	<div class = "col-md-4">
               		<img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/<%=iconeTecnologica %>" width="60" height="60">
                </div>
               		    
               <div class = "col-md-8">
               		<h3><%=resultadoTecnologica%>%</h3>
               		    
               </div>
               		    
             </div> <!-- FINAL ROW COLUNA -->  
               		    
           </div>  
	</div>                  
                    
                    
	<div class="col-lg-3 col-md-3 col-sm-3">
    	<div class="alert alert-default text-center style-box-two" style="background-color: #F0AD4E;">
        	<div class="row"> 
            	<div class = "col-md-4">
               		<img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/<%=iconeCultural %>" width="60" height="60">
                </div>
               		    
               <div class = "col-md-8">
               		<h3><%=resultadoCultural%>%</h3>
               		    
               </div>
               		    
             </div> <!-- FINAL ROW COLUNA -->  
               		    
           </div>  
      </div>
      
      <div class="col-lg-3 col-md-3 col-sm-3">
    	<div class="alert alert-default text-center style-box-two" style="background-color: #5CB85C;">
        	<div class="row"> 
            	<div class = "col-md-4">
               		<img src="/sce-web-ref2/visao/TelasTCCv4/Imagens/<%=iconeCidada %>" width="60" height="60">
                </div>
               		    
               <div class = "col-md-8">
               		<h3><%=resultadoCidada%>%</h3>
               		    
               </div>
               		    
             </div> <!-- FINAL ROW COLUNA -->  
               		    
           </div>  
      </div>
      
                        
</div><!-- FINAL ROW 2 -->
       

         
        


</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>