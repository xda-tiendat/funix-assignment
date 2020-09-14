<%-- 
    Document   : UserInfor
    Created on : Sep 10, 2020, 4:50:04 PM
    Author     : xdati
--%>

<%-- 
    Document   : authoring
    Created on : Sep 6, 2020, 10:48:28 AM
    Author     : xdati
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>User Information</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
    </style>
    <body class="w3-light-grey w3-content" style="max-width:100%">

        <!-- Sidebar/menu -->
        <%@include file="./Sources/page/nav.jsp" %>

        <!-- Overlay effect when opening sidebar on small screens -->
        <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:300px">

            <!-- Header -->
            <header id="portfolio">
                <div class="w3-container">
                    <h1><b>Manager Post</b></h1>
                    <div class="w3-section">
                        <span class="w3-margin-right">Option: </span> 
                        <a href="${pageContext.servletContext.contextPath}/PostController" class="w3-button"><button class="w3-button w3-white">Home</button></a>
                        <form action="LogoutController" method="POST" class="w3-button">
                            <button class="w3-button w3-white">Logout</button>
                        </form>
                    </div>
                </div>
            </header>

            <div class="w3-container w3-padding-large" style="margin-bottom:32px;background-color: white;border: 1px solid #BBB;">
                <h4><b>User Information</b></h4>
                <br/>
                <p>Username: </p>
                <input class="w3-input w3-border" type="text" name="txtUsername" disabled value="${accInfor.username}">
                <br/>
                <p>Password: </p>
                <input class="w3-input w3-border" type="text" name="txtPassword" value="***************">
                <br/>
                <p>Fullname: </p>
                <input class="w3-input w3-border" type="text" name="txtFullName" value="${accInfor.fullname}">
                <br/>
                <p>Note: </p>
                <input class="w3-input w3-border" type="text">
                <br/>
                <input class="w3-button w3-dark-grey w3-padding-large" type="submit" name="btAction" value="Change Information" />
                <hr>
            </div>


            <%@include file="./Sources/page/footer.jsp" %>
        </div>
    </body>
</html>