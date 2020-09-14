<%-- 
    Document   : CourseForm.jsp
    Created on : Aug 30, 2020, 7:14:08 PM
    Author     : xdati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open Sans">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="dns-prefetch" href="https://fonts.gstatic.com">
        <link rel="stylesheet" type="text/css" href="./Source/css/style1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <title>Register</title>
        <style>
            footer {
                margin-top: 100px;
            }
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
    <body>
        <%@include file="./Sources/page/header.jsp" %>
        <main class="my-form" style="margin-top: 100px;">
            <div class="cotainer">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Register Form</div>
                            <div class="card-body">
                                <form action="RegController" method="POST">
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Username</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="txtUser" required/>
                                        </div>
                                        <span class="col-md-6 offset-md-4">${messDuplicate}</span>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Password</label>
                                        <div class="col-md-6">
                                            <input type="password" class="form-control" name="txtPass" required/>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Confirm Password</label>
                                        <div class="col-md-6">
                                            <input type="password" class="form-control" name="txtConfirm" required/>
                                        </div>
                                        <span class="col-md-6 offset-md-4">${MESSCONFIRM}</span>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Fullname</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="txtFullName" required/>
                                        </div>
                                    </div>
                                    <span class="col-md-6 offset-md-4">${messageRegister}</span>

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" name="btAction" value="Register" class="btn btn-primary">
                                            Register
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <%@include file="./Sources/page/footer.jsp" %>
    </body>
</html>