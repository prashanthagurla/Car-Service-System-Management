<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Customer</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f0f8ff;
        font-family: Arial, sans-serif;
    }
    .form-container {
        max-width: 600px;
        margin: 50px auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .form-container h2 {
        color: #007bff;
        margin-bottom: 20px;
        text-align: center;
        font-weight: bold;
    }
    label {
        font-weight: bold;
        margin-top: 10px;
    }
    .btn-primary {
        background-color: #007bff;
        color: white;
    }
    .btn-primary:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2>Update Customer</h2>
            <form action="UpdateCustomer">
                <div class="mb-3">
                    <label for="username" class="form-label">Enter Username:</label>
                    <input type="text" id="username" name="username" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="name" class="form-label">Enter Name to be changed:</label>
                    <input type="text" id="name" name="name" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Enter Password to be changed:</label>
                    <input type="text" id="password" name="password" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Enter Email to be changed:</label>
                    <input type="text" id="email" name="email" class="form-control" required>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
