<%-- 
    Document   : validateSession
    Created on : Mar 10, 2024, 3:53:39 PM
    Author     : buitu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>validate</title>
    </head>
    <body>
        <%
    // Check if session is null
    if(session.getAttribute("account") == null){
        // If there's no active session, redirect to login page
        response.sendRedirect("login.jsp");
    }
        %>
    </body>
</html>
