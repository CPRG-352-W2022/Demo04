<%-- 
    Document   : helloWorldForm
    Created on : Jan 25, 2022, 3:48:20 PM
    Author     : dyadlows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World Form</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="post" action="hello">
            <label>First Name:</label>
            <input type="text" name="first_name" value="${firstName}">
            <br>
            <label>Last Name:</label>
            <input type="text" name="last_name" value="${lastName}">
            <br>
            <input type="submit" value="Say Hello!">
        </form>
        <p>${message}</p>

    </body>
</html>
