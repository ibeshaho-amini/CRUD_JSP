<%--
  Created by IntelliJ IDEA.
  User: HP-
  Date: 28/02/2024
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Edit Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@page import="DAO.UserDao,Model.User"%>
<%@ page import="Service.userInterface" %>
<%@ page import="Service.Implemantation.user_Imple" %>
<%@ page import="Controller.HibernateUtil" %>

<%
    Integer id= Integer.valueOf(request.getParameter("id"));
    userInterface inter;
    inter = new user_Imple(HibernateUtil.getSessionFactory());
    User newus = new User();
    newus.setUser_id(id);
    User use = inter.searchbyId(newus);
%>

<div class="container mt-5">
    <h1>Edit Form</h1>
    <form action="edituser.jsp" method="post">
        <input type="hidden" name="id" value="<%=use.getUser_id()%>"/>
        <div class="mb-3">
            <label for="name" class="form-label">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value="<%= use.getName()%>"/>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password:</label>
            <input type="password" class="form-control" id="password" name="password" value="<%= use.getPassword()%>"/>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" class="form-control" id="email" name="email" value="<%= use.getEmail()%>"/>
        </div>
        <div class="mb-3">
            <label class="form-label">Sex:</label>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="sex" id="male" value="male" <%= use.getSex().equals("male") ? "checked" : "" %>>
                <label class="form-check-label" for="male">Male</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="sex" id="female" value="female" <%= use.getSex().equals("female") ? "checked" : "" %>>
                <label class="form-check-label" for="female">Female</label>
            </div>
        </div>
        <div class="mb-3">
            <label for="country" class="form-label">Country:</label>
            <select class="form-select" id="country" name="country">
                <option <%= use.getCountry().equals("India") ? "selected" : "" %>>India</option>
                <option <%= use.getCountry().equals("Pakistan") ? "selected" : "" %>>Pakistan</option>
                <option <%= use.getCountry().equals("Afghanistan") ? "selected" : "" %>>Afghanistan</option>
                <option <%= use.getCountry().equals("Berma") ? "selected" : "" %>>Berma</option>
                <option <%= use.getCountry().equals("Other") ? "selected" : "" %>>Other</option>
            </select>
        </div>
        <div class="mb-3">
            <input type="submit" class="btn btn-primary" value="Edit User"/>
        </div>
    </form>
</div>

</body>
</html>
