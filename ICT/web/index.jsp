<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/6/2019
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  if  (session.getAttribute("username")==null)
    response.sendRedirect("home.jsp");
%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  $END$
  </body>
</html>
