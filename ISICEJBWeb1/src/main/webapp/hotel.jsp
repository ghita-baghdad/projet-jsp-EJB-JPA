
<%@page import="entities.Hotel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Gestion des Hotels</title>

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

.btn-jaune {
	 background-color: #ffffcc; /* Lighter shade of yellow */
    border-color: #ffeb3b; /* Lighter shade of border yellow */
    color: #000000;/* Couleur du texte en noir */
}

#welcome-text {
	color: #000000;
}
</style>

<script>
        function confirmDelete(id) {
            var result = confirm("Etes-vous sûr de la suppression de cet Hotel?");
            return result;
        }

        function confirmModifier(id) {
            var result = confirm("Etes-vous sûr de la modification de cet Hotel?");
            return result;
        }
    </script>
</head>
<body>
	<div class="container">
		<div class="form-container">
			<h1 class="display-4 text-center mb-4">Gestion des Hotels</h1>

			<form action="HotelController" method="post" class="mb-3">
				<div class="form-row">
					<div class="col">
						<label class="form-label" for="nom">Nom :</label> <input
							type="text" class="form-control" name="nom" />
					</div>
					<div class="col">
						<label class="form-label" for="adresse">Adresse :</label> <input
							type="text" class="form-control" name="adresse" />
					</div>
					<div class="col">
						<label class="form-label" for="telephone">Telephone :</label> <input
							type="text" class="form-control" name="telephone" />
					</div>

					<div class="col">
						<label class="form-label" for="ville">Ville :</label> <select
							class="form-control" name="ville">
							<c:forEach items="${villes}" var="vil">
								<option value="${vil.id}">${vil.nom}</option>
							</c:forEach>
						</select>

					</div>
					<div class="col" style="margin-top: 35px;">
						<button type="submit" class="btn btn-primary btn-ajouter btn-jaune">Ajouter</button>
					</div>
				</div>
			</form>

			<!-- Formulaire de filtrage par ville -->
			<form action="HotelController" method="post" class="form-inline mb-3">
				<label class="mr-2" for="villeFiltre">Filtrer par ville :</label> <select
					class="form-control mr-2" name="villeId">
					<option value="">Toutes les villes</option>
					<c:forEach items="${villes}" var="vil">
						<option value="${vil.id}">${vil.nom}</option>
					</c:forEach>
				</select> <input type="hidden" name="action" value="filterByVille" />
				<button type="submit" class="btn btn-primary btn-jaune">Filtrer</button>
			</form>
			
			
			<hr>
			<h2 class="mb-3">Liste des hotels :</h2>
			<table class="table table-bordered">
				<thead>
					<tr>

						<th>Nom</th>
						<th>Adresse</th>
						<th>Telephone</th>
						<th>Ville</th>
						<th>Modification</th>
						<th>Suppression</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="h" items="${hotels}">
						<tr>

							<td>${h.nom}</td>
							<td>${h.adresse}</td>
							<td>${h.telephone}</td>
							<td>${h.ville.nom}</td>
							<td>
								<form action="modifierHotel.jsp" method="get"
									onsubmit="return confirmModifier(${h.id});">
									<input type="hidden" name="idHotel" value="${h.id}">
									<button type="submit" class="btn btn-modifier btn-jaune">Modifier</button>
								</form>
							</td>
							<td>
								<form action="HotelController" method="post" class="btn-group"
									onsubmit="return confirmDelete(${h.id});">
									<input type="hidden" name="id" value="${h.id}" />
									<button class="btn btn-danger btn-update" name="action"
										value="delete">Supprimer</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>