<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Course</title>
    <!-- Bootstrap CSS for better styling -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">

    <h2 class="text-center">Register Course</h2>

    <form action="/course/register" method="post" class="border p-4 rounded shadow">
        <div class="mb-3">
            <label for="name" class="form-label">Course Name:</label>
            <input type="text" id="name" name="name" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="duration" class="form-label">Duration:</label>
            <input type="text" id="duration" name="duration" class="form-control" required>
        </div>

        <button type="submit" class="btn btn-primary">Register</button>
    </form>

    <br>
    <div class="text-center">
        <a href="/" class="btn btn-secondary">Back to Home</a>
    </div>

    <!-- Bootstrap JS (Optional for additional functionality) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
