<%-- 
    Document   : Posts
    Created on : Sep 6, 2020, 10:47:29 AM
    Author     : xdati
--%>
<!-- Khai báo sử dụng JSTL Core Tags -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <body class="w3-light-grey">
        <%@include file="./Sources/page/header.jsp" %>
        <!-- w3-content defines a container for fixed size centered content, 
        and is wrapped around the whole page content, except for the footer in this example -->
        <div class="w3-content" style="max-width:1600px">
            <!-- Grid -->
            <div class="w3-row w3-padding">

                <!-- Blog entries -->
                <div class="w3-col l8 s12">
                    <!-- Blog entry -->
                    <c:forEach items="${listPosts}" var="o">
                        <div class="w3-container w3-white w3-margin w3-padding-large">
                            <div class="w3-center">
                                <h3>${o.title}</h3>
                                <h5>Author: ${o.author}, <span class="w3-opacity">${o.timePost}</span></h5>
                            </div>

                            <div class="w3-justify">
                                <p>${o.summary}</p>
                                <p>${o.description}</p>
                                <p class="w3-left"><button class="w3-button w3-white w3-border"><b><i class="fa fa-thumbs-up"></i> Like</b></button></p>
                                <form action="ViewDetailController?postId=${o.postId}" method="POST">
                                    <p class="w3-right"><button class="w3-button w3-black" name="btAction" value="View"><b>View detail</b></button></p>
                                </form>
                                <p class="w3-clear"></p>

                            </div>
                        </div>
                        <hr>
                    </c:forEach>

                    <c:set var="num" value="${requestScope.endPage}"/>
                    <div class="w3-center w3-padding-32">
                        <div class="w3-bar">
                            <a class="w3-bar-item w3-button w3-hover-black">«</a>

                            <c:forEach begin="1" end="${num}" var="i">
                                <a href="PostController?index=${i}" class="w3-bar-item w3-button w3-hover-black">${i}</a>
                            </c:forEach>

                            <a class="w3-bar-item w3-button w3-hover-black">»</a>
                        </div>
                    </div>
                </div>

                <div class="w3-col l4">
                    <div class="w3-white w3-margin">
                        <div class="w3-container w3-padding w3-black">
                            <h4>NEW POSTS</h4>
                        </div>
                        <ul class="w3-ul w3-hoverable w3-white">
                            <c:forEach items="${mapTitles}" var="item">
                                <li class="w3-padding-16">
                                    <br>
                                    <span>${item.value}</span>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <hr>
                </div>
            </div>
        </div>
        <div id="subscribe" class="w3-modal w3-animate-opacity">
            <div class="w3-modal-content" style="padding:32px">
                <div class="w3-container w3-white">
                    <i onclick="document.getElementById('subscribe').style.display = 'none'" class="fa fa-remove w3-transparent w3-button w3-xlarge w3-right"></i>
                    <h2 class="w3-wide">SUBSCRIBE</h2>
                    <p>Join my mailing list to receive updates on the latest blog posts and other things.</p>
                    <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail"></p>
                    <button type="button" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('subscribe').style.display = 'none'">Subscribe</button>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <%@include file="./Sources/page/footer.jsp" %>
        <script>
            document.getElementById("index").classList.add('active');
        </script>
    </body>
</html>

