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
        //String url = "/login.jsp";
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="dns-prefetch" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="./Source/css/style1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <title>User Profile</title>
        <style>span {color:red;font-size:15px;}</style>
    </head>
    <body>

        <c:set var="user" value="${sessionScope.userLogged}" />
        <main class="my-form" style="margin-top: 100px;">
            <div class="cotainer">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">Register Form</div>
                            <div class="card-body">
                                <form action="LoginController" method="POST">
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Username</label>
                                        <div class="col-md-6">
                                            <p class="form-control">${user.username}</p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Password</label>
                                        
                                        <div class="col-md-6">
                                            <p class="form-control" >${'***********'}</p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Fullname</label>
                                        <div class="col-md-6">
                                            <p class="form-control">${user.fullname}</p>
                                        </div>
                                    </div>
                                </form>
                                <div class="form-group row">
                                    <label class="col-md-4 col-form-label text-md-right">Email</label>
                                    <div class="col-md-6">
                                        <p class="form-control">${user.email}</p>
                                    </div>
                                </div>
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