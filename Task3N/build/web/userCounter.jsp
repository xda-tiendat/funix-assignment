<%-- 
    Document   : userCounter.jsp
    Created on : Sep 1, 2020, 8:24:55 PM
    Author     : xdati
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Counter</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h2>User Online : ${requestScope.NUM}</h2>
            <c:set var="list" value="${sessionScope.MMM}" />
            <table class="table">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Fullname</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dto" items="${list}">
                        <tr>
                            <td>${dto.key}</td>
                            <td>${dto.value.fullname}</td>
                            <td>${dto.value.email}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="col-md-6 offset-md-4">
                <form action="LogoutController" method="POST">
                    <button type="submit" name="btAction" value="Back" class="btn btn-primary">
                        Back
                    </button>
                    <button type="submit" name="btAction" value="Logout" class="btn btn-danger">
                        Logout
                    </button>
                </form>
            </div>
        </div>
    </body>
</html>
