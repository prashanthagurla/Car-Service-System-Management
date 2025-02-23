<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Failure</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8d7da; /* Light red background for failure */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .failure-container {
            background-color: #ffffff; /* White card background */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 30px;
            max-width: 400px;
            width: 100%;
        }
        .failure-container h1 {
            font-size: 2.5rem;
            color: #dc3545; /* Red color for failure */
        }
        .failure-container p {
            font-size: 1.2rem;
            color: #6c757d; /* Gray color for description */
        }
        .failure-container a {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="failure-container">
        <h1>Failure!</h1>
        <p>Something went wrong. Please try again later.</p>
        <a href="customer-login-success.jsp" class="btn btn-danger">Go to Home</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
