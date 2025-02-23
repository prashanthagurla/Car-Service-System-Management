<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Customer</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f4;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            color: #343a40;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .btn-custom {
            background-color: #dc3545;
            color: white;
        }
        .btn-custom:hover {
            background-color: #a71d2a;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2 class="text-center">Delete Customer</h2>
            <form action="/car-service-system/DeleteCustomer">
                <div class="mb-3">
                    <label for="username" class="form-label">Enter the Username to be Deleted:</label>
                    <input type="text" id="username" name="username" class="form-control" required>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-custom">Submit</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
