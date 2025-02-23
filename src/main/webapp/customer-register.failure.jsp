<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Failure</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #ffcccc;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .message-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 100%;
            max-width: 500px;
        }
        .message-container h1 {
            color: #d9534f;
            margin-bottom: 20px;
        }
        .message-container p {
            color: #333333;
            font-size: 1rem;
        }
        .message-container a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #d9534f;
            color: #ffffff;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
        }
        .message-container a:hover {
            background-color: #c9302c;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <h1>Failure!</h1>
        <p>There was an issue inserting the data. Please try again later.</p>
        <a href="/car-service-system/">Go Back</a>
    </div>
</body>
</html>
