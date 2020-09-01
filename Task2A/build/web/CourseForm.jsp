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
        <title>Course registration</title>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
            <div class="container">
                <a class="navbar-brand" href="#">Course registration</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <%
                            String username = (String) session.getAttribute("User");
                            if (username != null) {
                        %>
                        <li class="nav-item">
                            <a class="nav-link" href="#" style="color: red;font-size: 20px" >Welcome: <%= username%></a>
                        </li>
                        <form name="Logout" action="LogoutController" method="POST">
                            <li class="nav-item">
                                <button class="nav-link" style="border: none;background: none;font-size: 20px;" name="logout">Logout</button>
                            </li>
                        </form>
                        <%}%>
                    </ul>

                </div>
            </div>
        </nav>

        <form action="CourseController" method="POST">
            <c:set var="err" value="${requestScope.ERROR}"/>
            <c:set var="userDTO" value="${requestScope.USER}" />
            <main class="my-form">
                <div class="cotainer">
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header">Register</div>
                                <div class="card-body">
                                    <div class="form-group row">
                                        <label for="full_name" class="col-md-4 col-form-label text-md-right">Full Name</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="txtName" required value="${userDTO.fullname}"/>
                                        </div>
                                        <span class="col-md-6 offset-md-4">${err.errFName}</span>
                                    </div>
                                    <div class="form-group row">
                                        <label for="age" class="col-md-4 col-form-label text-md-right">Age</label>
                                        <div class="col-md-6">
                                            <input type="number" class="form-control" name="txtAge" min="18" max="39" value="${userDTO.age}" required/>
                                        </div>
                                        <span class="col-md-6 offset-md-4">${err.errAge}</span>
                                    </div>

                                    <div class="form-group row">
                                        <label for="present_address" class="col-md-4 col-form-label text-md-right">Country</label>
                                        <div class="col-md-6">
                                            <select class="custom-select custom-select-lg mb-3" name="combobox">
                                                <c:choose> 
                                                    <c:when test="${userDTO.country == null}">
                                                        <option value="Vietnam"
                                                                >Vietnam</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="${userDTO.country}" selected="selecetd">${userDTO.country}</option>
                                                    </c:otherwise>
                                                </c:choose>
                                                <option value="American"
                                                        >American</option>
                                                <option value="English"
                                                        >English</option>
                                                <option value="Chinese"
                                                        >Chinese</option>
                                                <option value="French"
                                                        >French</option>
                                            </select>
                                        </div>
                                    </div>



                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Courses</label>
                                        <div class="col-md-6" style="padding: 6px 12px">
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" name="chkboxCourse" value="cSharp"
                                                           <c:forEach items="${userDTO.courses}" var="list">
                                                               <c:if test="${list == 'cSharp'}">checked="checked"</c:if>
                                                           </c:forEach>
                                                           />C #
                                                </label>
                                            </div>
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input"value="java" name="chkboxCourse"
                                                           <c:forEach items="${userDTO.courses}" var="list">
                                                               <c:if test="${list == 'java'}">checked="checked"</c:if>
                                                           </c:forEach>
                                                           />Java
                                                </label>
                                            </div>
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" value="cPlus" name="chkboxCourse"
                                                           <c:forEach items="${userDTO.courses}" var="list">
                                                               <c:if test="${list == 'cPlus'}">checked="checked"</c:if>
                                                           </c:forEach>
                                                           />C ++
                                                </label>
                                            </div>
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" value="python" name="chkboxCourse"
                                                           <c:forEach items="${userDTO.courses}" var="list">
                                                               <c:if test="${list == 'python'}">checked="checked"</c:if>
                                                           </c:forEach>
                                                           >Python
                                                </label>
                                            </div>
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" value="ruby" name="chkboxCourse"
                                                           <c:forEach items="${userDTO.courses}" var="list">
                                                               <c:if test="${list == 'ruby'}">checked="checked"</c:if>
                                                           </c:forEach>
                                                           >Ruby
                                                </label>
                                            </div>
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" value="node" name="chkboxCourse"
                                                           <c:forEach items="${userDTO.courses}" var="list">
                                                               <c:if test="${list == 'node'}">checked="checked"</c:if>
                                                           </c:forEach>
                                                           >Node
                                                </label>
                                            </div>
                                        </div>
                                        <span class="col-md-6 offset-md-4">${err.errCourse}</span>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-4 col-form-label text-md-right">Desired language</label>
                                        <div class="col-md-6" style="padding: 6px 12px">
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="language" value="Vietnamese" checked>Vietnamese
                                                </label>
                                            </div>
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" value="English" name="language">English
                                                </label>
                                            </div>
                                            <div class="form-check-inline disabled">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" value="French" name="language">French
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" name="btAction" value="Register" class="btn btn-primary">
                                            Register
                                        </button>

                                        <button type="submit" name="btAction" value="Cancel" class="btn btn-danger">
                                            Cancel
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr/>
                    
                    
                </div>
            </main>
        </form>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    </body>
</html>