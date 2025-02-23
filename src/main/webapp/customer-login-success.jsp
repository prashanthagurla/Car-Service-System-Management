<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Successful</title>
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
        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.1);
            color: white;
            padding: 40px;
            border-radius: 10px;
            text-align: center;
            width: 90%;
            max-width: 500px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }
        .dashboard-container h1 {
            font-size: 2rem;
            margin-bottom: 20px;
            color: #ffc107;
        }
        .dashboard-container p {
            margin-bottom: 30px;
            font-size: 1.2rem;
        }
        .dashboard-container a {
            display: block;
            background-color: #ffc107;
            color: #004d66;
            text-decoration: none;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            font-weight: bold;
        }
        .dashboard-container a:hover {
            background-color: #e0ac07;
            color: #003844;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <% 
            String name = (String)session.getAttribute("sname"); 
        %>
        <h1>Welcome, <%= name %>!</h1>
        <p>You have successfully logged in. Choose an option below to proceed:</p>
        <a href="add-car-details.html">Add Car Details</a>
        <a href="edit-car-details.html">Edit Car Details</a>
        <a href="service-request.html">Service Request</a>
        <a href="service-status.html">Check Service Status</a>
        <a href="feedback.html">Feedback</a>
        <a href="pre-logout.jsp">Log Out</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
