$(document).ready(function() {
		$('#sltAreaAtividade').change(function(event) {
	       
	    
		selectValue = $('#sltAreaAtividade').val();
		var path = '/sce-web-ref2/ServletControle';
				
		$.get(path, {
			selectValue : selectValue,
			acao: "ListarCategoriaPorArea"
		}, function(responseText) {			
			// Retorno do Servlet
			var jsonData = responseText;
			//Objeto Json montado
			var myJSONObject = jQuery.parseJSON( JSON.stringify( jsonData));
			//Div da tela que ira receber o Select			
			var myDiv = document.getElementById("newSelect"); 
			//Metodo para testar se existe um select e excluir para formar outro		
			var testaSeExiste;
			testaSeExiste = document.getElementById("sltCategoriaAtividade");
			if(testaSeExiste !== null)
				{				
			    $('#sltCategoriaAtividade').remove();
				}
			// Insere os atributos do select
			var selectList = document.createElement("select");
			selectList.id = "sltCategoriaAtividade";
			selectList.className = "form-control";
			selectList.style = "width: 25em";
			myDiv.appendChild(selectList);
			// contador
            var count = Object.keys(myJSONObject).length
			// insere a primeira linha do select
			var opt = document.createElement("option");
		    opt.value = "0";
		    opt.text = "--------- Selecione ---------";
		    selectList.appendChild(opt);
		    // insere as demais linhas
			for (var i=0; i<= count ; i++) {
			    var option = document.createElement("option");
			    option.value = myJSONObject.regras[i].id;
			    option.text = myJSONObject.regras[i].codigoAtividade;
			    
			    selectList.appendChild(option);
			    
			}
			
			
			
			
			});
	
		});
});
