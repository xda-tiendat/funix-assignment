<%-- 
    Document   : CourseForm.jsp
    Created on : Aug 30, 2020, 7:14:08 PM
    Author     : xdati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Fonts -->
        <link rel="dns-prefetch" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

        <link rel="icon" href="Favicon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="./Source/css/style1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <title>Sign up</title>
        <style>span {color:red;font-size:15px;}button{width:120px;}</style>
    </head>
    <body>

        <c:set var="err" value="${requestScope.ERROR}" />
        <c:set var="tmp" value="${requestScope.TMPUSER}" />
        <main class="my-form" style="margin-top: 100px;">
            <div class="cotainer">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Register Form</div>
                            <div class="card-body">
                                <form action="RegisterController" method="POST">
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Username</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="txtUser" value="${tmp.username}" required/>
                                        </div>
                                        <span class="col-md-6 offset-md-4">${err.errUser}</span>
                                        <span class="col-md-6 offset-md-4">${requestScope.DUPLICATE}</span>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Password</label>
                                        <div class="col-md-6">
                                            <input type="password" class="form-control" name="txtPass" value="${tmp.password}" required/>
                                        </div>
                                        <span class="col-md-6 offset-md-4">${err.errPass}</span>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Confirm Password</label>
                                        <div class="col-md-6">
                                            <input type="password" class="form-control" name="txtConfirm" required/>
                                        </div>
                                        <span class="col-md-6 offset-md-4">${err.errConfirm}</span>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Fullname</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="txtFullName" value="${tmp.fullname}" required/>
                                        </div>
                                        <span class="col-md-6 offset-md-4">${err.errFullName}</span>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Email</label>
                                        <div class="col-md-6">
                                            <input type="email" class="form-control" name="txtEmail" value="${tmp.email}" required/>
                                        </div>
                                        <span class="col-md-6 offset-md-4">${err.errEmail}</span>
                                    </div>

                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" name="btAction" value="Register" class="btn btn-primary">
                                            Register
                                        </button>
                                    </div>
                                </form>
                                <div class="col-md-6 offset-md-4">
                                    <form action="LogoutController" method="POST">
                                        <button type="submit" name="btAction" value="Cancel" class="btn btn-danger">
                                            Cancel
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    </body>
</html>