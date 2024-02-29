<%@ page import="Service.userInterface" %>
<%@ page import="Service.Implemantation.user_Imple" %>
<%@ page import="Controller.HibernateUtil" %>
<%@ page import="Model.User" %><%--
  Created by IntelliJ IDEA.
  User: HP-
  Date: 28/02/2024
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="u" class="Model.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    userInterface interf;
    interf = new user_Imple(HibernateUtil.getSessionFactory());

    User use=interf.delete_User(u);
    response.sendRedirect("viewUsers.jsp");
%>
