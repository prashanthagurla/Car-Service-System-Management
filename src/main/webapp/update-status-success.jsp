<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #e6ffe6;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .message-container {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    .message-container h1 {
        color: #28a745;
        font-size: 2.5rem;
        font-weight: bold;
    }
    .message-container p {
        font-size: 1.2rem;
        margin: 15px 0;
        color: #555555;
    }
    .btn-home {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        font-size: 1rem;
    }
    .btn-home:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <div class="message-container">
        <h1>Success</h1>
        <p>Your action was completed successfully.</p>
        <a href="/car-service-system/update-status.jsp" class="btn-home">Go to Home</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
