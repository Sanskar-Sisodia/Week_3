<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Assign Course to Faculty</title>
    <!-- ✅ Bootstrap for Styling -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-5">

    <h2 class="text-center">Assign Course to Faculty</h2>

    <form action="/faculty/assign-course" method="post" class="border p-4 rounded shadow bg-light">
        <div class="mb-3">
            <label for="facultyId" class="form-label">Select Faculty:</label>
            <select name="facultyId" id="facultyId" class="form-select" required>
                <option value="">-- Select Faculty --</option>
                <c:forEach var="faculty" items="${faculties}">
                    <option value="${faculty.id}">${faculty.name}</option>
                </c:forEach>
            </select>
        </div>

        <div class="mb-3">
            <label for="courseId" class="form-label">Select Course:</label>
            <select name="courseId" id="courseId" class="form-select" required>
                <option value="">-- Select Course --</option>
                <c:forEach var="course" items="${courses}">
                    <option value="${course.id}">${course.name}</option>
                </c:forEach>
            </select>
        </div>

        <button type="submit" class="btn btn-primary w-100">Assign Course</button>
    </form>

    <br>
    <div class="text-center">
        <a href="/" class="btn btn-secondary">Back to Home</a>
    </div>

    <!-- ✅ Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
