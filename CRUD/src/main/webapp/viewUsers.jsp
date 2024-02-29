<%@ page import="Model.User" %>
<%@ page import="Controller.HibernateUtil" %>
<%@ page import="Service.Implemantation.user_Imple" %>
<%@ page import="Service.userInterface" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    userInterface interf;
    interf = new user_Imple(HibernateUtil.getSessionFactory());
    List<User> userList = interf.display_All();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>User List</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1>User List</h1>
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Country</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Password</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (User use : userList) {
        %>
        <tr>
            <td><%= use.getUser_id() %></td>
            <td><%= use.getName() %></td>
            <td><%= use.getCountry() %></td>
            <td><%= use.getSex() %></td>
            <td><%= use.getEmail() %></td>
            <td><%= use.getPassword() %></td>
            <td>
                <a href="editForm.jsp?id=<%=use.getUser_id()%>" class="btn btn-warning btn-sm">Edit</a>
                <a href="deleteuser.jsp?id=<%=use.getUser_id()%>" class="btn btn-danger btn-sm">Delete</a>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS and dependencies (optional, only required for some Bootstrap features) -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>
