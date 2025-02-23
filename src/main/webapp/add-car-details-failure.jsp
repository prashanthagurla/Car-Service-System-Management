<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertion Failure</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background: linear-gradient(to bottom, #dc3545, #8b0000);
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .message-container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.5);
            text-align: center;
            width: 90%;
            max-width: 500px;
        }
        .message-container h1 {
            color: #ffc107;
            font-size: 2rem;
            margin-bottom: 20px;
            font-weight: 600;
        }
        .message-container p {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }
        .back-button {
            display: inline-block;
            background-color: #ffc107;
            color: #8b0000;
            padding: 10px 20px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.3s;
        }
        .back-button:hover {
            background-color: #e0ac07;
            color: #4a0000;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="message-container">
        <h1>Failure in Inserting Car Details</h1>
        <p>There was an error while inserting car details. Please try again.</p>
        <a href="/car-service-system/add-car-details.html" class="back-button">Go Back</a>
    </div>
</body>
</html>
