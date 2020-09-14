<%-- 
    Document   : Posts
    Created on : Sep 6, 2020, 10:47:29 AM
    Author     : xdati
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Posts</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open Sans">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            h1,h2,h3,h4,h5,h6 {font-family: "Oswald"}
            body {font-family: "Open Sans"}
            * {box-sizing: border-box;}

            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }
            p {
                word-wrap: break-word;
            }

            .topnav {
                overflow: hidden;
                background-color: #333;
                color: white;
            }

            .topnav a {
                float: left;
                display: block;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            .topnav a:hover {
                background-color: green;
            }

            .topnav .login-container button {
                float: right;
                padding: 6px 10px;
                margin-top: 8px;
                margin-right: 16px;
                background-color: #333;
                color: white;
                font-size: 17px;
                border: none;
                cursor: pointer;
            }
            .topnav .login-container button:hover {
                background-color: green;
            }

            @media screen and (max-width: 600px) {
                .topnav .login-container {
                    float: none;
                }
                .topnav a, .topnav .login-container button {
                    text-align: center;
                    width: 50%;
                    margin: 0;
                    padding: 14px;
                }

            }
        </style>
    </head>
    <body class="w3-light-grey">
        <%@include file="./Sources/page/header.jsp" %>
        <c:set value="${pageContext.servletContext.contextPath}/PostController" var="urll" />
        <div class="w3-content" style="max-width:1200px">
            <!-- Grid -->
            <div class="w3-row w3-padding">
                <div class="w3-container w3-white w3-margin w3-padding-large">
                    <div class="w3-center">
                        <h3>${postById.title}</h3>
                        <h5>Author: ${postById.author}, <span class="w3-opacity">${postById.timePost}</span></h5>
                    </div>

                    <div class="w3-justify">
                        <p>${postById.summary}</p>
                        <p>${postById.description}</p>
                        <p class="w3-clear"></p>
                    </div>

                    <a href="${urll}"><p class="w3-right"><button class="w3-button w3-black"><b>All Post</b></button></p><a/>
                </div>
            </div>
        </div>


        <!-- Footer -->
        <%@include file="./Sources/page/footer.jsp" %>
    </body>
</html>

