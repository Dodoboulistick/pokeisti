<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajouter un produit</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<div class="container">
		<div class="row justify-content-md-center text-center">
			<div class="col-md-6">
				<form:form action="addProduct/add" method="post"
					modelAttribute="product">
					<img style="width: 200px; margin-right: 20px;" class="m-5"
						id="logoTopDroit" src="assets/PokEISTIWithText.png" alt="logo">
					<h1>Ajouter un produit</h1>

					<div class="form-floating m-2">
						<form:input type="text" class="form-control" id="floatingInput"
							path="name" />
						<label for="floatingInput">Nom du produit</label>
					</div>
					<div class="form-floating m-2">
						<form:input type="text" class="form-control" id="floatingInput"
							path="description" />
						<label for="floatingInput">Description du produit</label>
					</div>
					<div class="form-floating m-2">
						<form:input type="number" class="form-control" id="floatingInput"
							path="price" step=".01" />
						<label for="floatingInput">Prix</label>
					</div>
					<div class="form-floating m-2">
						<form:input type="number" class="form-control" id="floatingInput"
							path="stock" />
						<label for="floatingInput">Stock</label>
					</div>
					<form:select class="form-select m-2" path="type">
						<form value="" label="*** Séléctionner Catégorie ***" />
						<form:options items="${type}" />
					</form:select>
					<div class="px-2">
						<input class="btn-lg btn-primary form-control text-white w-100"
							value="Ajouter produit." type="submit" />
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>