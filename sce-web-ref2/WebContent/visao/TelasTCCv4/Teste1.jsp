<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
 $(document).ready(function(){
	 $('#updateUsername').submit(function(){
		 alert('chegou aqui nesta bagacitis1');
		 $.ajax({
			url: 'Teste2.jsp',		
			type: 'POST',
			dataType:'text',
			data: $('#updateUsername').serialize(),
			sucess: function(data){
				    data = $(data).find('#username').text;
				    alert('chegou aqui nesta bagacitis2');
					$('#displayName').html('seu nome é: ' + data.val);
					$('#displayName').slideDown(500);
				
			}
		 });
		 return false;
	 });
 });

</script>
<title>Insert title here</title>
</head>
<body>

<form id="updateUsername">
<label for="username">What is your name?</label>
<input type="text" id="username" name="username"/>
<input type="submit"/>
</form>
<p id="displayName"/>
<hr/>
</body>

</html>