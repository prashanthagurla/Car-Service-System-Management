<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invalid Username</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background: linear-gradient(to bottom, #d32f2f, #b71c1c);
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .message-container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.5);
            width: 90%;
            max-width: 500px;
        }
        .message-container h1 {
            color: #ff5722;
            font-size: 2rem;
            margin-bottom: 20px;
        }
        .message-container p {
            color: #ffffff;
            font-size: 1.2rem;
            margin-bottom: 15px;
        }
        .message-container a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #ff5722;
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.3s;
        }
        .message-container a:hover {
            background-color: #e64a19;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="message-container">
        <h1>Invalid Username</h1>
        <p>Please check your username and try again.</p>
        <a href="admin-login.html">Back to Login</a>
    </div>
</body>
</html>
