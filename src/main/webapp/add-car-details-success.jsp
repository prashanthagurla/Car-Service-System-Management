<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Details Added</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #17a2b8, #004d66);
            color: white;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            text-align: center;
            width: 90%;
            max-width: 600px;
        }
        .container h1 {
            color: #ffc107;
            margin-bottom: 20px;
            font-size: 2rem;
        }
        .container p {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }
        .btn-back {
            display: inline-block;
            background-color: #ffc107;
            color: #004d66;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
        }
        .btn-back:hover {
            background-color: #e0ac07;
            color: #003844;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Successfully Added Car Details</h1>
        <p>Your car details have been added successfully to the system.</p>
        <a href="add-car-details.html" class="btn-back">Add Another Car</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
