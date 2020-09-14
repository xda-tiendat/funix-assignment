<%-- 
    Document   : CourseForm.jsp
    Created on : Aug 30, 2020, 7:14:08 PM
    Author     : xdati
--%>

<%@page import="datbt.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%
    User user = (User) session.getAttribute("userLogged");
    String fname = null;
    if (user != null) {
        fname = user.getFullname();
    } else {
        String url = "/login.jsp";
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
%>
<html>
    <head>
        <title>Index Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            .cover {
                max-width: 500px;
                height: auto;
                margin: 150px auto;
                background-color: lavender;
            }
            table {
                text-align: center;
            }
            .w3-button {
                width: 150px;
                height: 50px;

            }

        </style>
    </head>

    <body>
    <div class="cover">
        <table class="table table-striped">
            <tbody>
            <thead>
                <tr>
            <h1 style="text-align: center">Welcome: <%= fname%></h1>
                </tr>
            </thead>
                <tr>
                    <td><a href="ProfileController"><input class="w3-button w3-blue" type="submit"  value="View Profile" name="btAction" /></a></td>
                    <td><a href="CounterController"><input class="w3-button w3-blue" type="submit"  value="User Couter" name="btAction" /></a></td>
                    <td>
                        <form action="LogoutController" method="POST">
                            <input class="w3-button w3-blue" type="submit" value="Logout" name="btAction" />
                        </form>
                    </td>

                </tr>

            </tbody>
        </table>
    </div>


</body>
</html>