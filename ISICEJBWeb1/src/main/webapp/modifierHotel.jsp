<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Modifier un hôtel</title>
    <!-- Ajoutez les liens vers vos fichiers CSS ou Bootstrap si nécessaire -->
    <style>
        body {
            background: linear-gradient(to right, #87ceeb, #ffd700);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .jumbotron {
            background: linear-gradient(to right, #add8e6, #ffffe0);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            padding: 20px;
            border-radius: 10px;
            width: 400px;
            text-align: center;
        }

        h1 {
            color: #336699;
            text-shadow: 2px 2px 4px #000000;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #336699;
        }

        input {
            width: 100%;
            margin-bottom: 15px;
            padding: 10px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #ffcc00; /* Jaune */
            color: #336699; /* Bleu */
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #e6b800; /* Jaune plus foncé au survol */
        }
    </style>
</head>
<body>
    <div class="jumbotron">
        <h1>Renouveler les informations suivantes</h1>
        <form action="HotelController" method="post">
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="idHotel" value="<%= request.getParameter("idHotel") %>">
            <!-- Ajoutez les champs nécessaires pour la modification de l'hôtel -->
            <div>
                <label for="nom">Nom de l'hôtel :</label>
                <input type="text" name="nom" />
            </div>
            <div>
                <label for="adresse">Adresse :</label>
                <input type="text" name="adresse" />
            </div>
            <div>
                <label for="telephone">Numéro de téléphone :</label>
                <input type="text" name="telephone" />
            </div>
            <input type="submit" value="Enregistrer">
        </form>
    </div>
</body>
</html>

