<%-- 
    Document   : helloWorldForm
    Created on : Jan 25, 2022, 3:48:20 PM
    Author     : dyadlows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World Form</title>
    </head>
    <body>
        
        <!-- This is an HTML Comment. It is not rendered on the page, but still visible in the source code. -->
        <%-- This is a JSP Comment. It is not rendered on the page, or in the source code. --%>
        
        <h1>Hello World!</h1>
        <form method="post" action="hello">
            <label>First Name:</label>
            <input type="text" name="first_name" value="${person.firstname}" required>
            <br>
            <label>Last Name:</label>
            <input type="text" name="last_name" value="${person.lastname}" required>
            <br>
            <input type="submit" value="Say Hello!">
        </form>
        <c:if test="${error == true}">
            <p>Please enter both a first and last name.</p>
        </c:if>

    </body>
</html>
