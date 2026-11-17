<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Pagina Inicial</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.9/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-yEPZ7jP9S0QKiUQ0m3jjsO4ProIW7wvR9gXkI7JOGa2XVsw53Yke2bsdkBbjmmiX"
	crossorigin="anonymous">
<style type="text/css">
form {
	position: absolute;
	top: 40%;
	left: 37%;
	right: 33%;
}

h1 {
	position: absolute;
	top: 30%;
	left: 37%;
}

.msg {
	position: absolute;
	top: 10%;
	left: 37%;
	font-size: 15px;	
}
</style>

</head>
<body>
	<h1>Bem vindo ao Curso JSP</h1>
	<form action="ServletLogin" method="post"
		class="row g-3 needs-validation" novalidate>

		<input type="hidden" value="<%=request.getParameter("url")%>"
			name="url">

		<div class="mb-3">
			<label class="form-label">Login</label> <input class="form-control"
				name="login" type="text" required="required">
			<div class="invalid-feedback">Informe Login</div>
			<div class="valid-feedback">ok</div>
		</div>


		<div class="mb-3">
			<label class="form-label">Senha</label> <input class="form-control"
				name="senha" type="password" required="required">
			<div class="invalid-feedback">Informe Senha</div>
			<div class="valid-feedback">ok</div>
		</div>


		<input class="btn btn-primary" type="submit" value="Enviar">

	</form>
	<h4 class="msg alert alert-danger">${msg}</h4>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.9/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-WyOxWvTyr1QaMPfiPJSv76iReVthorl5uWlFtZPyK0IEB0hGzo9y5Bp9mYanr8Bu"
		crossorigin="anonymous">
	</script>

	<script type="text/javascript">
//Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()
</script>

</body>
</html>