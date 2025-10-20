<%@ include file="/includes/header.jsp"%>
<div class="container my-5">
	<div class="d-flex justify-content-between">
		<h1>Customers</h1>
		<div class="d-flex align-items-center">
			<button class="btn btn-outline-success" data-bs-toggle="modal"
				data-bs-target="#exampleModal">Criar cliente</button>
		</div>
	</div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fw-bold fs-5" id="exampleModalLabel">Cadastrar
					Cliente</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="/site/home.jsp">
				<div class="modal-body">
					<div class="mb-3 row">
						<label for="firstName" class="col-sm-3 col-form-label">Nome</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="firstName" name="firstName">
						</div>
					</div>
					<div class="mb-3 row">
						<label for="lastName" class="col-sm-3 col-form-label">Sobrenome</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="lastName" name="lastName">
						</div>
					</div>
					
					<div class="mb-3 row">
						<label for="lastName" class="col-sm-3 col-form-label">CPF / CNPJ</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" id="lastName" name="lastName">
						</div>
					</div>

					<div class="mb-3 row">
						<label for="email" class="col-sm-3 col-form-label">Email</label>
						<div class="col-sm-9">
							<input type="email" class="form-control" id="email" name="email">
						</div>
					</div>
					<div class="mb-3 row">
						<label for="phoneNumber" class="col-sm-3 col-form-label pe-1">DDD + Celular</label>
						<div class="col-sm-9">
							<input type="tel" class="form-control" id="phoneNumber" name="phoneNumber">
						</div>
					</div>
			
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Save changes</button>
				</div>
			</form>
		</div>
	</div>
</div>

<%@ include file="/includes/footer.jsp"%>
