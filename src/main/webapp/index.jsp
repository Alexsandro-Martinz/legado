<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Legado | Início</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
</head>
<body>

	<div style="height: 100dvh"
		class="hcontainer d-flex flex-column justify-content-center align-items-center">
		<div>
			<h1 class="display-3 fw-bold mb-3">Login</h1>
		</div>
		<c:if test="${not empty message}">

		<div class="alert alert-danger alert-dismissible fade show"
			role="alert">${message}
			<button type="button" class="btn-close" data-bs-dismiss="alert"
				aria-label="Close"></button>
		</div>
		</c:if>

		<form method="post" action="login">
			<div class="mb-3">
				<label for="username" class="form-label">Usuário</label> <input
					type="text" class="form-control" name="username" value="admin">
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Senha</label> <input
					type="password" value="pass123" class="form-control"
					name="password">
			</div>

			<button type="submit" class="btn btn-primary">Entrar</button>
		</form>

	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
		crossorigin="anonymous"></script>

</body>
</html>