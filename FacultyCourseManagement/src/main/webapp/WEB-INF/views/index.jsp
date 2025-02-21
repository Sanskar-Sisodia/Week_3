<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Faculty Course Management</title>
    <!-- Bootstrap CSS for Better Styling -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-5">

    <h2 class="text-center">Welcome to Faculty Course Management</h2>

    <div class="row mt-4">
        <div class="col-md-6 mx-auto">
            <ul class="list-group">
                <li class="list-group-item">
                    <a href="faculty/register" class="btn btn-primary w-100">Register Faculty</a>
                </li>
                <li class="list-group-item">
                    <a href="faculty/list" class="btn btn-secondary w-100">View Faculties</a>
                </li>
                <li class="list-group-item">
                    <a href="course/register" class="btn btn-success w-100">Register Course</a>
                </li>
                <li class="list-group-item">
                    <a href="course/list" class="btn btn-warning w-100">View Courses</a>
                </li>
                <li class="list-group-item">
                    <a href="faculty/assign-course" class="btn btn-info w-100">Assign Course to Faculty</a>
                </li>
            </ul>
        </div>
    </div>

    <!-- Bootstrap JS (Optional for interactive elements) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
