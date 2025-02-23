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
            background-color: #f4f4f9; /* Light background color */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .success-container {
            background-color: #ffffff; /* White card background */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 30px;
            max-width: 400px;
            width: 100%;
        }
        .success-container h1 {
            font-size: 2.5rem;
            color: #28a745; /* Green color for success */
        }
        .success-container p {
            font-size: 1.2rem;
            color: #6c757d; /* Gray color for description */
        }
        .success-container a {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="success-container">
        <h1>Success!</h1>
        <p>Your operation was completed successfully.</p>
        <a href="customer-login-success.jsp" class="btn btn-success">Go to Home</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
