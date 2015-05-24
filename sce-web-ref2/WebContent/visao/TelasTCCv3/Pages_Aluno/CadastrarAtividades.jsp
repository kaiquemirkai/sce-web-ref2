<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UATComp - Menu Principal</title>
<link rel="stylesheet" type="text/css" href="/sce-web-ref2/visao/TelasTCCv3/CSS/simple-sidebar.css">    
<link rel="stylesheet" type="text/css" href="/sce-web-ref2/visao/TelasTCCv3/CSS/Template.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="/sce-web-ref2/visao/TelasTCCv3/CSS/styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
$('#btnArquivo').change(function(){
    $('#txtArquivo').val($(this).val());
});

});

</script>

</head>

<body>
	<div id="cabecalho">
		<jsp:include page="CabecalhoImagem.jsp" />
	</div>
<div id="Menu">
		<jsp:include page="Menu.html" />
	</div>

	<div id="formulario" class="">
 		<form name="frmLogin" action="/sce-web-ref2/ServletControle" method="post">   
    	<input type="hidden" name="acao" value="AcessarLogin">
    	
    	<div class="linhaBranca">
    	
    	</div>
    	<div id="campo" class="background">
   			 
   			 
   			 <div class="row" Style="color:#FFFFFF; padding-bottom:5px; padding-top:20px;  ">
   			 <div class="col-md-3 col-md-offset-1">
   			 <label> Núcleo de Atividade </label>
   			 </div>
   			  <div class="col-md-3">
   			 <label> Código da Atividade </label>
   			 </div>
   			  <div class="col-md-3">
   			 <label> Quantidade de Horas </label>
   			 </div>
   			 </div>
   			 
   			 
   			 <div class="row">
              <!--Carregamento dos núcleos existentes TECN/CULTUTAL/CIDADÃ-->
              <div class="col-md-3 col-md-offset-1"   >
                <select id="ddlNucleo" name="nucleo" class="form-control" >
                  <option value="00">---Selecione o núcleo --- </option>
                  <option value="01">Formação Tecnológica </option>
                  <option value="02">Formação Sócio-Cultural</option>
                  <option value="03">Formação Sócio-Cidadã</option>
                </select>
              </div>
            


            <!--Drop Down List do Código da atividade-->
            
              <div class="col-md-3">
                <select  id="ddlCodigoAtividade" name="codigoAtividade" class="form-control">
                  <option value="000">---Selcione o código da Atividade --- </option>
                  <option value="101">101-Eventos técnicos </option>
                  <option value="102">102-Prova Certificatória com obtenção de certificação</option>
                  <option value="103">103-Desafios</option>
                </select>
              </div>
            

            <!--Carga horária da Atividade-->
         
              <div class="col-md-3"><!--col-md-offset-2 //espaçamento do lado esquerdo-->
                <input type="number" id="nmCargaHoraria" value="" name="cargaHorario" class="form-control" 
                placeholder="Digite a carga horária">
              </div>
              
              </div>
              
             
             
             <div class="row" Style="color:#FFFFFF; padding-bottom:5px; padding-top:10px; ">
   			 <div class="col-md-3 col-md-offset-1">
   			 <label> Nome Da Atividade </label>
   			 </div>
   			 <div class="col-md-3">
   			 <label> Data de Início </label>
   			 </div>
   			 <div class="col-md-3">
   			 <label> Data do Fim </label>
   			 </div>
   			 </div>
   			 
             
              <div class="row">
                <!--Nome da Atividade-->
         
              <div class="col-md-3 col-md-offset-1"  >   
                <input type="text" placeholder="Nome da Atividade..." id="txtNomeAtividade" value="" name="nomeAtividade" class="form-control" width="80%">
              </div>
               <div class="col-md-3"  >   
                <input type="text" placeholder="Data de Início" id="txtDataInicio" value="" name="txtDataInicio" class="form-control" width="80%">
              </div>
               <div class="col-md-3"  >   
                <input type="text" placeholder="Data do Fim" id="txtDataFim" value="" name="txtDataFim" class="form-control" width="80%">
              </div>
     		</div>

			  
             <div class="row" Style="color:#FFFFFF; padding-bottom:5px; padding-top:10px;  ">
   			 <div class="col-md-3 col-md-offset-1">
   			 <label> Descrição Da Atividade </label>
   			 </div>
   			 </div>
   			 

            <!--Descrição da atividade-->
             <div class="row">
              <div class="col-md-offset-1 col-md-5">
               <textarea class="form-control" rows="4" cols="50" placeholder="Descreva sua Atividade....."></textarea>
             </div>
            </div>
              
            <div class="row" style="padding-top:30px; ">
            <!--Carregar Arquivo LABEL-->
        
              <label class="control-label col-md-3 col-md-offset-1" style="padding-bottom:5px;" ><font color="#FFFFFF"> Carregar arquivo  </font> </label>
             </div>
     
     
 
      <!--CARREGAR o ARQUIVO-->
   <div class="row">
       <div class="col-md-offset-1 col-md-5">
     <div class="input-group" style="margin-left:-415px;">	
  	  		<input type="file" name="file" style="visibility:hidden;" id="btnArquivo" />
  	 	 	<div class="btn input-group-addon" onclick="$('#btnArquivo').click();">Selecione um Arquivo...
  	  		</div>
      		<input type="text" name="subfile" id="txtArquivo" class="" style=" width:300px; height:30px;">
     </div>  
     </div>
   </div>
          
           <!--Botões de Cadastrar-->
           <div class="row">
            <div class="col-md-offset-1 col-md-6" style="padding-top:20px; padding-bottom:20px;">
              <input type="button" value="Cadastrar" class="btn btn-primary" onclick="javascript: return onCadastrarClick();">
              <input type="button" value="Voltar" class="btn btn-primary" onclick="javascript: return onCadastrarClick();">
            </div>
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