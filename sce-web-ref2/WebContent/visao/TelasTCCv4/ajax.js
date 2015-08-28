$(document).ready(function() {
		$('#sltAreaAtividade').change(function(event) {
		selectValue = $('#sltAreaAtividade').val();
		var path = '/sce-web-ref2/ServletControle';
		alert(selectValue);
		
		$.get(path, {
			selectValue : selectValue,
			acao: "ListarCategoriaPorArea"
		}, function(responseText) {
			alert(responseText);
			/*
			var jsonData = responseText;
			var jasao = '{ "batata" : [' +
			'{ "batatinha":"John" , "lastName":"Doe" },' +
			'{ "batatinha":"Anna" , "lastName":"Smith" },' +
			'{ "batatinha":"Peter" , "lastName":"Jones" } ]}';
			
			var myJSONObject = jQuery.parseJSON( JSON.stringify( jsonData));
			alert(myJSONObject.batata[0].index1);
			//alert(jsonData);
			//myJSONObject = eval('( '+ jsonData+' )' );
			//alert(myJSONObject);
          
			
			$('#ajaxResponse').text(myJSONObject.batata[0].batatinha);
			*/
			});
		});
});
