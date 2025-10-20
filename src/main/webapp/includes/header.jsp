<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Legado</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
<style>
body {
	height: 100dvh;
}
</style>
</head>
<body>
	<div style="" class="h-100 d-flex m-0 p-o flex-column">
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<a class="navbar-brand fw-bold text-primary" href="#">Legado</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 nav nav-underline">
						<li class="nav-item"><a
							class="nav-link ${fn:contains(pageContext.request.servletPath,'home')?'active':''}"
							href="${pageContext.request.contextPath}/site/home.jsp">Início</a></li>
						<li class="nav-item"><a
							class="nav-link  ${fn:contains(pageContext.request.servletPath,'customers')?'active':''}"
							aria-current="page" href="${pageContext.request.contextPath}/site/customers.jsp">Clientes</a></li>
					</ul>

					<form action="/logout" method="post">
						<button type="submit" class="btn btn-outline-danger">Sair</button>
					</form>
				</div>
			</div>
		</nav>

		<div class="flex-grow-1 tab-content">