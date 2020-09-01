<%-- 
    Document   : Login
    Created on : Aug 30, 2020, 5:20:05 PM
    Author     : xdati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="./Source/css/style.css">
        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap"
            rel="stylesheet">
    </head>
    <body>

        <div class="container">
            <form name="ControllerServlet" action="ControllerServlet" method="POST">
                <a class="navbar-brand logo_h" href="Page2.jsp"
                   ><img src="./edustage/img/logo.png" alt=""
                      /></a>
                <h2>Account Login</h2>
                <input type="text" placeholder="Username" name="txtUser" required="required" /> <input
                    type="password" placeholder="Password" name="txtPass" required="required" /> <input
                    type="submit" name="Login" value="SIGN IN" /> <br />
                <p>
                    Forgot <a href="#">Username/Password?</a>
                </p>
                <p>
                    Create an account?<a href="#">Sign up</a>
                </p>
            </form>
            <%
                String messString = (String) session.getAttribute("message");
                if (messString != null) {
            %>
            <span style="color:red;font-size:15px"><%= messString%></span>

            <% }%>
        </div>
    </body>
</html>