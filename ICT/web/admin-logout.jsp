<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 18/7/2019
  Time: 4:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        session.invalidate();
    %>
    <h1><font color="Red">You are Sucessfully logged out...</font></h1>

    <a href="admin-login.jsp">Go-Back To Login Page</a>
</body>
</html>
