<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Faculty</title>
    <!-- Bootstrap CSS for Better Styling -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">

    <h2 class="text-center">Register Faculty</h2>

    <form action="/faculty/register" method="post" class="border p-4 rounded shadow">
        <div class="mb-3">
            <label for="name" class="form-label">Name:</label>
            <input type="text" id="name" name="name" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" id="email" name="email" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Password:</label>
            <input type="password" id="password" name="password" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="mobile" class="form-label">Mobile:</label>
            <input type="text" id="mobile" name="mobile" class="form-control" pattern="[0-9]{10}" required>
            <small class="text-muted">Enter a 10-digit mobile number.</small>
        </div>

        <button type="submit" class="btn btn-primary">Register</button>
    </form>

    <br>
    <div class="text-center">
        <a href="/" class="btn btn-secondary">Back to Home</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
