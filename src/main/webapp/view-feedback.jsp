<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.gqt.model.Feedback"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa; /* Light gray background */
            padding: 20px;
        }
        .table-container {
            background-color: #ffffff; /* White background for table */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .table thead th {
            background-color: #007bff; /* Blue header */
            color: #ffffff; /* White text */
        }
        .table tbody tr:nth-child(odd) {
            background-color: #f2f2f2; /* Light gray for alternate rows */
        }
        .table tbody tr:hover {
            background-color: #dbe9f6; /* Light blue on hover */
        }
        .no-feedback {
            color: #6c757d; /* Gray text for "No Feedbacks found" */
            font-weight: bold;
            text-align: center;
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="table-container">
            <h2 class="text-center mb-4">Customer Feedbacks</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Feedback</th>
                        <th>Star Rating</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Feedback> feedbackList = (List<Feedback>) session.getAttribute("sfeedbackList");
                        if (feedbackList != null && !feedbackList.isEmpty()) {
                            for (Feedback feedback : feedbackList) {
                                out.println("<tr>");
                                out.println("<td>" + feedback.getUsername() + "</td>");
                                out.println("<td>" + feedback.getFeedback() + "</td>");
                                out.println("<td>" + feedback.getStar() + "</td>");
                                out.println("</tr>");
                            }
                        } else {
                            out.println("<tr><td colspan='3' class='no-feedback'>No Feedbacks found</td></tr>");
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
