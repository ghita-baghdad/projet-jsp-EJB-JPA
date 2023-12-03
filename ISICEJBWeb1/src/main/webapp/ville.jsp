<%@page import="entities.Ville"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Liste des Villes</title>
<!-- Ajout des styles Bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
body {
	background: linear-gradient(to right, #87ceeb, #ffd700);
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.container {
	margin-top: 50px;
}

.jumbotron {
	background: linear-gradient(to right, #add8e6, #ffffe0);
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
	padding: 20px;
	border-radius: 10px;
	margin-top: 20px;
}

h1 {
	color: #336699;
	text-shadow: 2px 2px 4px #000000;
}

.row {
	margin-top: 20px;
}

.col-md-6 {
	margin-bottom: 20px;
}

.btn-primary, .btn-success {
	background-color: #ffcc00;
	border-color: #336699;
	color: #336699;
}

.btn-primary:hover, .btn-success:hover {
	background-color: #e6b800;
	border-color: #0056b3;
	color: #0056b3;
}

#welcome-text {
	color: #000000;
}

.form-group {
	display: flex;
	align-items: center;
}

.form-group label {
	margin-right: 10px;
}

.btn-ajouter {
	margin-top: 10px;
}

.btn-modifier {
	background-color: #ffd700;
	border-color: #ffd700;
	color: #000000;
}

.btn-supprimer {
	background-color: #87ceeb;
	border-color: #87ceeb;
	color: #000000;
}
.btn-jaune {
	 background-color: #ffffcc; /* Lighter shade of yellow */
    border-color: #ffeb3b; /* Lighter shade of border yellow */
    color: #000000; /* Couleur du texte en noir */
}


.table {
	margin-top: 20px;
}
</style>
<script>
        function confirmDelete(id) {
            var result = confirm("Etes-vous sûr de la suppression de cette ville?");
            return result;
        }

        function confirmModifier(id) {
            var result = confirm("Etes-vous sûr de la modification de cette ville?");
            return result;
        }
    </script>
</head>
<body>
	<div class="container">
	 <h1 class="display-4 text-center mb-4">Gestion des Villes</h1>

		<%
		String errorMessage = (String) request.getAttribute("errorMessage");
		if (errorMessage != null && !errorMessage.isEmpty()) {
		%>
		<div class="alert alert-danger mt-3" role="alert">
			<%=errorMessage%>
		</div>
		<%
		}
		%>
		<form action="VilleController" method="post" class="form-group">

			<label for="ville"  class="form-label"  >Nom de la ville :</label> <input type="text"
				class="form-control" name="ville" />
			<button type="submit" class="btn btn-primary btn-ajouter btn-jaune "
				name="action" value="create" style="margin-top: 1px;">Ajouter</button>
		</form>



		<h1 class="mt-4">Liste des villes :</h1>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nom</th>
					<th>Modifier</th>
					<th>Suppression</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${villes}" var="v">
					<tr>
						<td>${v.id}</td>
						<td>${v.nom}</td>
					
						<td>
							<form action="modifierVille.jsp" method="get"
								onsubmit="return confirmModifier(${v.id});">
								<input type="hidden" name="idVille" value="${v.id}">

								<button type="submit" class="btn btn-modifier btn-jaune">Modifier</button>
							</form>
						</td>
						<td>
							<form action="VilleController" method="post"
								onsubmit="return confirmDelete(${v.id});">
								<input type="hidden" name="action" value="delete"> <input
									type="hidden" name="id" value="${v.id}">
								<button type="submit" class="btn btn-danger">Supprimer</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>

