<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Fetch Error</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8d7da;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .error-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 100%;
            max-width: 500px;
        }
        .error-container h1 {
            color: #721c24;
            margin-bottom: 20px;
            font-size: 1.8rem;
        }
        .error-container p {
            color: #495057;
            font-size: 1rem;
        }
        .error-container a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #721c24;
            color: #ffffff;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
        }
        .error-container a:hover {
            background-color: #5a1d1d;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Data Fetching Failed!</h1>
        <p>There was an issue retrieving the data. Please try again later or contact support.</p>
        <a href="/car-service-system/">Go Back</a>
    </div>
</body>
</html>
