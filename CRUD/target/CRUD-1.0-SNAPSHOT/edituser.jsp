<%@ page import="Service.userInterface" %>
<%@ page import="Service.Implemantation.user_Imple" %>
<%@ page import="Model.User" %>
<%@ page import="Controller.HibernateUtil" %><%--
  Created by IntelliJ IDEA.
  User: HP-
  Date: 28/02/2024
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="u" class="Model.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
  userInterface interf;
  interf = new user_Imple(HibernateUtil.getSessionFactory());
%>
<%
  User use=interf.update_User(u);
  response.sendRedirect("viewUsers.jsp");
%>
