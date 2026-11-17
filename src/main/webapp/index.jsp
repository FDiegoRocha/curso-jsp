<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Pagina Inicial</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.9/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-yEPZ7jP9S0QKiUQ0m3jjsO4ProIW7wvR9gXkI7JOGa2XVsw53Yke2bsdkBbjmmiX" crossorigin="anonymous">
<style type="text/css">

form{
	position: absolute;
	top: 40%;
	left: 37%;
	right: 33%;

}

h1{
	position: absolute;
	top: 30%;
	left: 37%;
}

.msg{
	position: absolute;
	top: 60%;
	left: 37%;
	font-size: 15px;
	color: red;
}

</style>

</head>
<body>
	<h1>Bem vindo ao Curso JSP</h1>
	<form action="ServletLogin" method="post" class="row g-3">
		<input type="hidden" value="<%= request.getParameter("url") %>" name="url">
		 <div class="col-md-6">
		<label class="form-label">Login</label>
		<input class="form-control" name="login" type="text">
		</div>		
		 <div class="col-md-6">	
		<label  class="form-label">Senha</label></td>
		<input class="form-control" name="senha" type="password">
		</div>	
		
		<input class="btn btn-primary" type="submit" value="Enviar">
		
	</form>
	<h4 class="msg">${msg}</h4>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.9/dist/js/bootstrap.bundle.min.js" integrity="sha384-WyOxWvTyr1QaMPfiPJSv76iReVthorl5uWlFtZPyK0IEB0hGzo9y5Bp9mYanr8Bu" crossorigin="anonymous"></script>
</body>
</html>