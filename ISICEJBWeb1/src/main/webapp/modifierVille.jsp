<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Modifier une ville</title>
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

        h1 {
            color: #336699;
            text-shadow: 2px 2px 4px #000000;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            width: 300px;
            text-align: center;
        }

        input {
            width: 100%;
            margin-bottom: 10px;
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
    <form action="VilleController" method="post">
        <h1>Modifier cette ville</h1>
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="<%= request.getParameter("idVille") %>">
        Nouveau nom de la ville : <input type="text" name="ville" />
        <br>
        <input type="submit" value="Enregistrer">
    </form>
</body>

</html>


</html>
