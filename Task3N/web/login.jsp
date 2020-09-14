<%-- 
    Document   : login
    Created on : Sep 1, 2020, 8:24:11 PM
    Author     : xdati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="./Sources/css/style.css">
    </head>
    <body>
        <form action="LoginController" method="POST">
            <div class="cover">
                <div class="logo">
                    <img alt="logo" src="./Sources/img/logo.jpg"/>
                </div>
                <h2>Login Form</h2>
                <input type="text" placeholder="Username" name="txtUser" required/>
                <input type="password" placeholder="Password" name="txtPass" required/>
                <button class="btn-login">Login</button>
                <p>
                    Forgot <a href="#">Username/Password?</a>
                </p>
                <p>
                    Create an account?<a href="sign-up.jsp">Sign up</a>
                </p>
                <span>${message}</span>
            </div>
        </form>

    </body>
</html>
