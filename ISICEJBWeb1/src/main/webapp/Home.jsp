<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Home</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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

    .btn-primary,
    .btn-success {
        background-color: #ffcc00;
        border-color: #336699;
        color: #336699;
    }

    .btn-primary:hover,
    .btn-success:hover {
        background-color: #e6b800;
        border-color: #0056b3;
        color: #0056b3;
    }

    #welcome-text {
        color: #000000;
    }
</style>


</head>
<body>
    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4 text-center mb-4">Welcome to Our Website!</h1>
        </div>

        <div class="row">
            <!-- Left column for city management -->
            <div class="col-md-6">
                <h1 class="display-4 text-center mb-4">Gestion des Villes</h1>
                
                  <img src="https://thumbs.dreamstime.com/b/concept-de-course-voyagez-au-maroc-étude-du-pays-et-sa-culture-traditions-vues-se-renseignent-sur-l-histoire-de-94929624.jpg" alt="Image Ville" class="img-fluid mx-auto d-block ml-auto mb-4"  style="max-width: 200px; height: auto;"/>
                  
                <form action="VilleController" class="mb-3">
                    <button class="btn btn-primary btn-block">Click Here!</button>
                </form>
                <form action="VilleController">
                    <!-- Add city management content here -->
                </form>
            </div>

            <!-- Right column for hotel management -->
            <div class="col-md-6">
                <h1 class="display-4 text-center mb-4">Gestion des Hotels</h1>
                <!-- Add the image here -->
                <img src="https://cdn-icons-png.flaticon.com/512/5900/5900195.png" alt="Image Hotel" class="img-fluid mx-auto d-block ml-auto mb-4"  style="max-width: 200px; height: auto;"/>
                
                <form action="HotelController" class="mb-3">
                
                    <button class="btn btn-primary btn-block">Click Here!</button>
                </form>
                <form action="HotelController">
                    <!-- Add hotel management content here -->
                </form>
            </div>
        </div>
    </div>
</body>
</html>



