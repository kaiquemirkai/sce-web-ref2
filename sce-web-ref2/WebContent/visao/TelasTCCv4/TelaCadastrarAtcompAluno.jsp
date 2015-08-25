<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="br.sceweb.dominio.*"%>
     <%@page import="java.util.*"%>
     <%@page import="org.hibernate.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel='stylesheet' type='text/css' href='Background.css' />

<script type="text/javascript">
$(document).ready(function(){
$('#btnArquivo').change(function(){
    $('#txtArquivo').val($(this).val());
});

});

</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Cadastrar Atcomp</title>
</head>

<<body id="fundo" onload="verificar2()">

<!-- Import do Cabecalho -->
<div id="cabecalho" style="background-color:#0058a5"> <jsp:include page="Cabecalho.jsp" /> </div>

<!-- Div do Menu -->
<div id="menu" style="background-color:#0058a5; margin-top:-10px"> <jsp:include page="MenuAluno.jsp" /> </div>

<!-- Div da Linha colorida -->
<div id="linhaColorida" style="height:16px;"> </div>

<!-- Div do Conteudo  -->
<div class="container">

<jsp:include page="ValidarTelas.jsp" />

<form class= "form-horizontal" role = "form" id="frmCadastrarAtcompAluno" name="frmCadastrarAtcompAluno" action="/sce-web-ref2/ServletControle" method="post" >   
    	
		<input type="hidden" id="acao"  name="acao" value="CadastrarAtCompAluno">
    	
          <!-- Alteração deve ser feita A partir daqui -->
	 
	 			
    						<h3 align="center">Cadastro de Atividade Complementar</h3>
  						
	 <br> <br>

	 
	 	<div class="form-group">	
	 	
      	<label name="lblAreaAtividade" for="lblAreaAtividade" class="col-sm-2 control-label">Área da Atividade</label>
      
        <div class="col-sm-10">
        	 <select id="sltAreaAtividade" name="sltAreaAtividade" style="width: 25em" class="form-control" onchange="verificar()">
                  		<option value="00">-- Selecione a área -- </option>
                  		<option value="01">Formação Tecnológica </option>
                  		<option value="02">Formação Sócio-Cultural</option>
                  		<option value="03">Formação Sócio-Cidadã</option>
                  		        </select>
        </div>
        </div>
       
                  		
		 <div class="form-group">
         <label name="lblCodigoAtividade" for="codigoAtividade" class="col-sm-2 control-label">Código da Atividade</label>
     	 
  
         <div class="col-sm-10">
         
             <select  id="sltCodigoAtividade" name="sltCodigoAtividade" style="width: 25em" class="form-control" >
             	
             	<option value="100">-- Selecione o código -- </option>
             	<% 
             	ArrayList<RegraAtcomp> lista = (ArrayList<RegraAtcomp>) request.getAttribute("regraAtcomps");
             	if ((lista!=null)&& (lista.size()>0)){
             		 RegraAtcomp ra = null;
             			for (int i = 0; i < lista.size(); i++) {
             				ra = (RegraAtcomp) lista.get(i);
             	%>
                  		
                  		<option value="<%=ra.getCodigo()%>"><%=ra.getCodigo()%></option>
                  <%}} %>		
                  		
              </select>
        </div>
        <div class="col-sm-10">
             <select  id="sltCodigoAtividade2" name="sltCodigoAtividade2" style="width: 25em" class="form-control" >
                  		<option value="100">-- Selecione o código -- </option>
                  		<option value="201">201 - Cursos Variados</option>
                  		<option value="202">202 - Feiras e Exposições</option>
                  		<option value="203">203 - Idiomas</option>
                  		<option value="204">204 - Viagem Internacional</option>
                  		<option value="205">205 - Atividades Esportivas</option>
                  		<option value="206">206 - Cinema</option>
                  		<option value="207">207 - Teatro</option>
                  		<option value="208">208 - Museu</option>
                  		<option value="209">209 - Shows</option>
                  		<option value="210">210 - Documentários</option>
                  		<option value="211">211 - Clube do Conhecimento - Fora da Área</option>
              </select>
        </div>
        <div class="col-sm-10">
             <select  id="sltCodigoAtividade3" name="sltCodigoAtividade3" style="width: 25em" class="form-control" >
                  		<option value="100">-- Selecione o código -- </option>
                  		<option value="301">301 - Eventos por convocações públicas</option>
                  		<option value="302">302 - Doações</option>
                  		<option value="303">303 - Representante de Turma</option>
                  		<option value="304">304 - Monitoria </option>
                  		<option value="305">305 - Auxílio a Instituições de Amparo </option>
                  		<option value="306">306 - Campanhas Diversas </option>
                  		<option value="307">307 - Clube do Conhecimento - Fora da Área </option>
              </select>
        </div>
        </div>
        
     
        
        
        
     
   <script type="text/javascript">

		function verificar() { 
			objOpcoes1 = document.getElementById("sltAreaAtividade");
			objOpcoes2 = document.getElementById("sltCodigoAtividade");
			objOpcoes3 = document.getElementById("sltCodigoAtividade2");
			objOpcoes4 = document.getElementById("sltCodigoAtividade3");
			
			if (objOpcoes1.value == "01") {
				objOpcoes2.style.display = "block";	
				objOpcoes3.style.display = "none";
				objOpcoes4.style.display = "none";	
			}
			if (objOpcoes1.value == "02") {
				objOpcoes2.style.display = "none";
				objOpcoes4.style.display = "none";
				objOpcoes3.style.display = "block";	
			}
			if (objOpcoes1.value == "03") {
				objOpcoes2.style.display = "none";
				objOpcoes4.style.display = "block";
				objOpcoes3.style.display = "none";	
			}
		
		}
		
		function verificar2() { 
			
			objOpcoes2 = document.getElementById("sltCodigoAtividade");
			objOpcoes3 = document.getElementById("sltCodigoAtividade2");
			objOpcoes4 = document.getElementById("sltCodigoAtividade3");
		
				objOpcoes2.style.display = "none";	
				objOpcoes3.style.display = "none";
				objOpcoes4.style.display = "none";
			
		}
		
		$(function(){
			$.ajax({
			type: 'POST',
			url: 'ListarRegraAtcompProfessor.java',
			data: {
				dados: $('select[name=sltCodigoAtividade]').val(),
			}
				
				
			}).done(function(e){
				$('div.col-sm-10').append(e);
			});

		});

		</script>          		
               
		
        
    
               
        <div class="form-group">
        <label name="lbldataInicioAtividade" for="lblDataInicioAtividade" class="col-sm-2 control-label">Data de Início da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtDataInicioAtividade" id="txtDataInicioAtividade" class="form-control" style="width: 25em" placeholder="Data de início" value="" />
        </div>
        </div>
        
        <div class="form-group">
        <label name="lblHoraInicioAtividade" for="lblHoraInicioAtividade" class="col-sm-2 control-label">Hora de Início da Atividade</label>
        
        <div class="col-sm-10">
             <input type="text" name="txtHoraInicioAtividade" id="txtHoraInicioAtividade" class="form-control" style="width: 25em" placeholder="Hora de início" value="" />
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblDataTerminoAtividade" for="lblDataTerminoAtividade" class="col-sm-2 control-label">Data de Término da Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtDataTerminoAtividade" id="txtDataTerminoAtividade" class="form-control" style="width: 25em" placeholder="Data de término" value="" />
        </div>
        </div>
        
        
       <div class="form-group">
        <label name = "lblHoraTerminoAtividade" for="lblHoraTerminoAtividade" class="col-sm-2 control-label">Hora de Término da Atividade</label>
        <div class="col-sm-10">
             <input type="text" name="txtHoraTerminoAtividade" id="txtHoraTerminoAtividade" class="form-control" style="width: 25em" placeholder="Data de término" value="" />
        </div>
        </div>
        
        
        <div class="form-group">
        <label name="lblDescricaoAtividade" for="lblDescricaoAtividade" class="col-sm-2 control-label">Descricao da Atividade</label>
        <div class="col-sm-10">
             <textarea name="txtDescricaoAtividade" rows="4" cols="4" class="form-control" style="width: 25em" placeholder="Descreva sua atividade aqui"></textarea>
        </div>
        </div>
        
       <div class="form-group">
        <label name="lblAbrirArquivo" class="sr-only" for="inputfile">Abrir Arquivo</label>
        <input type="file" name = "inputFile" id="inputFile">
      </div>
        
     <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
       <button name="btnCadastrar" type="submit" class="btn btn-primary">Cadastrar</button>
      </div>
     </div>
            
    



<!--  Termino Das Alterações -->

</form><!-- Fim do Form -->

</div><!-- Fim da Div Conteudo -->



</body>
</html>