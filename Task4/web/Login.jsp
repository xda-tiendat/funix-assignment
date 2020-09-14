<%-- 
    Document   : Login
    Created on : Sep 6, 2020, 12:35:13 PM
    Author     : xdati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" type="text/css" href="./Sources/css/LoginStyle.css">
    </head>
    <body>
        <section class="login-block">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 login-sec">
                        <h2 class="text-center">Login Now</h2>
                        <form class="login-form" action="LoginController" method="POST">
                            <div class="form-group">
                                <label for="exampleInputEmail1" class="text-uppercase">Username</label>
                                <input type="text" class="form-control" placeholder="" name="txtUser">

                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1" class="text-uppercase">Password</label>
                                <input type="password" class="form-control" placeholder="" name="txtPass">
                            </div>


                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input">
                                    <small>Remember Me</small>
                                </label>
                                <button type="submit" class="btn btn-login float-right">Submit</button>
                            </div>
                            <div class="form-group" >
                                <br/>
                                <span style="color: red;padding-left: 35px;">${requestScope.messageLogin}</span>
                            </div>
                            

                        </form>
                            <div class="copy-text">Register <a href="${pageContext.servletContext.contextPath}/RegisterController">here</a></div>
                    </div>
                    <div class="col-md-8 banner-sec">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img class="d-block img-fluid" src="https://static.pexels.com/photos/33972/pexels-photo.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="banner-text">
                                            <h2>This is Blogspot</h2>
                                            <p>Welcome. Register an account in <a href="register.jsp">here </a> and shared your content with anyone.</p>
                                        </div>	
                                    </div>
                                </div>
                            </div>	   
                        </div>
                    </div>
                </div>
        </section>
    </body>
</html>
