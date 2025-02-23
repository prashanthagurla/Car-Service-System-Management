<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Service Status</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e9f7f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .status-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 100%;
            max-width: 600px;
        }
        .status-container h1 {
            margin-bottom: 20px;
            color: #00796b;
        }
        .status-message {
            font-size: 1.2rem;
            color: #333;
            margin-bottom: 20px;
        }
        .status-success {
            color: #2e7d32;
            font-weight: bold;
        }
        .status-pending {
            color: #ffa000;
            font-weight: bold;
        }
        .status-failed {
            color: #d32f2f;
            font-weight: bold;
        }
        .back-link {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            background-color: #00796b;
            color: #ffffff;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
        }
        .back-link:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>
    <div class="status-container">
        <h1>Service Status</h1>
        <%
            String serviceStatus = (String)session.getAttribute("sserviceStatus");
            if (serviceStatus != null) {
                out.println("<div class='status-message'>Your service status is:</div>");
                if (serviceStatus.equalsIgnoreCase("Completed")) {
                    out.println("<div class='status-success'>" + serviceStatus + "</div>");
                } else if (serviceStatus.equalsIgnoreCase("Pending")) {
                    out.println("<div class='status-pending'>" + serviceStatus + "</div>");
                } else if (serviceStatus.equalsIgnoreCase("Failed")) {
                    out.println("<div class='status-failed'>" + serviceStatus + "</div>");
                } else {
                    out.println("<div class='status-message'>Status not available</div>");
                }
            } else {
                out.println("<div class='status-message'>No status available</div>");
            }
        %>
        <a class="back-link" href="customer-login-success.jsp">Go Back</a>
    </div>
</body>
</html>
