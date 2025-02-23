<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.gqt.model.Customer" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer View</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            color: #333;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #004d40;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #004d40;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:nth-child(odd) {
            background-color: #ffffff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Customer List</h2>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Customer> customerList = (List<Customer>) session.getAttribute("scustomerList");
                    if (customerList != null && !customerList.isEmpty()) {
                        for (Customer customer : customerList) {
                            out.println("<tr>");
                            out.println("<td>" + customer.getName() + "</td>");
                            out.println("<td>" + customer.getUsername() + "</td>");
                            out.println("<td>" + customer.getPassword() + "</td>");
                            out.println("<td>" + customer.getEmail() + "</td>");
                            out.println("</tr>");
                        }
                    } else {
                        out.println("<tr><td colspan='4' style='text-align:center;'>No customers found</td></tr>");
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
