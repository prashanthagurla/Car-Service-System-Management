<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.gqt.model.Car"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Service Request List</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f2f4f7;
        font-family: Arial, sans-serif;
        padding: 20px;
    }
    .table-container {
        margin: 30px auto;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .table-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #4b0082;
        font-size: 2rem;
        font-weight: bold;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    thead th {
        background-color: #ff7f50; /* Coral color for header */
        color: white;
        text-align: center;
        padding: 10px;
        font-size: 1.1rem;
    }
    tbody td {
        text-align: center;
        padding: 10px;
        font-size: 1rem;
    }
    tbody tr:nth-child(even) {
        background-color: #ffe4b5; /* Light orange for alternating rows */
    }
    tbody tr:nth-child(odd) {
        background-color: #e6e6fa; /* Lavender for alternating rows */
    }
    .no-data {
        text-align: center;
        color: #e63946;
        font-size: 1.2rem;
        margin-top: 20px;
    }
    .table-container {
        border-top: 5px solid #0078d7; /* Bold color border on the top */
    }
    .action-btn {
        background-color: #32cd32;
        color: white;
        padding: 8px 15px;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: bold;
    }
    .action-btn:hover {
        background-color: #228b22;
    }
</style>
</head>
<body>
    <div class="table-container">
        <h2>Service Request List</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>User Name</th>
                    <th>Car Model</th>
                    <th>Car Type</th>
                    <th>Car Registration Number</th>
                    <th>Service Request</th>
                    <th>Service Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Car> serviceRequestList = (List<Car>) session.getAttribute("sserviceRequestList");
                    if (serviceRequestList != null && !serviceRequestList.isEmpty()) {
                        for (Car serviceRequest : serviceRequestList) {
                %>
                <tr>
                    <td><%= serviceRequest.getUsername() %></td>
                    <td><%= serviceRequest.getCarModel() %></td>
                    <td><%= serviceRequest.getCarType() %></td>
                    <td><%= serviceRequest.getCarRegistrationNumber() %></td>
                    <td><%= serviceRequest.getServiceRequest() %></td>
                    <td><%= serviceRequest.getServiceStatus() %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="6" class="no-data">No service requests found.</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
