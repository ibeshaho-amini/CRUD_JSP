
<%@ page import="Controller.HibernateUtil" %>
<%@ page import="Service.userInterface" %>
<%@ page import="Service.Implemantation.user_Imple" %>
<%@ page import="Model.User" %>
Created by IntelliJ IDEA.
  User: HP-
  Date: 28/02/2024
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@page import="DAO.UserDao"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
        <jsp:useBean id="u" class="Model.User"></jsp:useBean>
                <jsp:setProperty property="*" name="u"/>



<%
    userInterface interf;
    interf = new user_Imple(HibernateUtil.getSessionFactory());
    User users = interf.recordUser(u);
    if(users != null){
        response.sendRedirect("adduser-success.jsp");
    }else{
        response.sendRedirect("adduser-error.jsp");
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
