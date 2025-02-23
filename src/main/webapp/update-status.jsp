<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Status</title>
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
            background-color: #007bff;
            color: white;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2 class="text-center">Update Service Status</h2>
            <form action="UpdateStatus">
                <div class="mb-3">
                    <label for="username" class="form-label">User Name:</label>
                    <input type="text" id="username" name="username" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="carRegistrationNumber" class="form-label">Car Registration Number:</label>
                    <input type="text" id="carRegistrationNumber" name="carRegistrationNumber" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="status" class="form-label">Service Status:</label>
                    <select id="status" name="status" class="form-select" required>
                        <option selected disabled>Select Option</option>
                        <option value="verifying">Verifying</option>
                        <option value="inprogress">In Progress</option>
                        <option value="completed">Completed</option>
                    </select>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-custom">Update Status</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
