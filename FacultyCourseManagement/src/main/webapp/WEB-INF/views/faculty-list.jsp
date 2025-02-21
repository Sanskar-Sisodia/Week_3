<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Faculty List</title>
    <!-- ✅ Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">

    <h2 class="text-center">Faculty List</h2>

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${not empty faculties}">
                    <c:forEach var="faculty" items="${faculties}">
                        <tr>
                            <td>${faculty.id}</td>
                            <td>${faculty.name}</td>
                            <td>${faculty.email}</td>
                            <td>${faculty.mobile}</td>
                            <td>
                                <!-- Delete Button with Confirmation -->
                                <a href="/faculty/delete/${faculty.id}" class="btn btn-danger btn-sm"
                                   onclick="return confirm('Are you sure you want to delete this faculty member?');">
                                    Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="5" class="text-center">No Faculty Members Found</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>

    <div class="text-center">
        <a href="/faculty/register" class="btn btn-success">Add New Faculty</a>
        <a href="/" class="btn btn-secondary">Back to Home</a>
    </div>

    <!-- ✅ Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
