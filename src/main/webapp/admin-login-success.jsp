<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background: linear-gradient(to bottom, #17a2b8, #004d66);
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }
        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.5);
            width: 90%;
            max-width: 600px;
            text-align: center;
        }
        .dashboard-container h1 {
            color: #ffc107;
            font-size: 2rem;
            margin-bottom: 20px;
        }
        .dashboard-container a {
            display: block;
            margin: 15px 0;
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #ffc107;
            color: #004d66;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.3s;
        }
        .dashboard-container a:hover {
            background-color: #e0ac07;
            color: #003844;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1>Admin, you have successfully logged in</h1>
        <a href="ViewCustomer">View Customers</a>
        <a href="manage-customer.html">Manage Customers</a>
        <a href="ViewService">View Service Requests</a>
        <a href="update-status.jsp">Update Service Status</a>
        <a href="ViewFeedback">Check Feedback</a>
        <a href="pre-logout.jsp">Log Out</a>
    </div>
</body>
</html>
