<%-- 
    Document   : header
    Created on : Aug 30, 2020, 8:23:46 PM
    Author     : xdati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--================ Start Header Menu Area =================-->
<header class="header_area">
    <div class="main_menu">
        <div class="search_input" id="search_input_box">
            <div class="container">
                <form class="d-flex justify-content-between" method="" action="">
                    <input
                        type="text"
                        class="form-control"
                        id="search_input"
                        placeholder="Search Here"
                        />
                    <button type="submit" class="btn"></button>
                    <span
                        class="ti-close"
                        id="close_search"
                        title="Close Search"
                        ></span>
                </form>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="Page2.jsp"
                   ><img src="./edustage/img/logo.png" alt=""
                      /></a>
                <button
                    class="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <span class="icon-bar"></span> <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div
                    class="collapse navbar-collapse offset"
                    id="navbarSupportedContent"
                    >
                    <ul class="nav navbar-nav menu_nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="Page2.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Page2.jsp">About</a>
                        </li>
                        <li class="nav-item submenu dropdown">
                            <a
                                href="Page2.jsp"
                                class="nav-link dropdown-toggle"
                                data-toggle="dropdown"
                                role="button"
                                aria-haspopup="true"
                                aria-expanded="false"
                                >Pages</a
                            >
                            <ul class="dropdown-menu">
                                <li class="nav-item">
                                    <a class="nav-link" href="Page2.jsp">Courses</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Page2.jsp"
                                       >Course Details</a
                                    >
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Page2.jsp">Elements</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                            <a
                                href="Page2.jsp"
                                class="nav-link dropdown-toggle"
                                data-toggle="dropdown"
                                role="button"
                                aria-haspopup="true"
                                aria-expanded="false"
                                >Blog</a
                            >
                            <ul class="dropdown-menu">
                                <li class="nav-item">
                                    <a class="nav-link" href="Page2.jsp">Blog</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Page2.jsp"
                                       >Blog Details</a
                                    >
                                </li>
                            </ul>
                        </li>
                        <%
                            String strUser = (String) session.getAttribute("User");
                            if (strUser != null) {
                        %>
                        <li class="nav-item">
                            <a class="nav-link" href="Page2.jsp" style="color: red;font-size: 22px">Wellcome: <%= strUser%></a>
                        </li>
                        
                        <form name="Logout" action="LogoutController" method="POST">
                            <li class="nav-item">
                                <button class="nav-link" style="border: none;background: none;margin-right: 10px" name="logout">Logout</button>
                            </li>
                        </form>
                        <%}%>

                        <li class="nav-item">
                            <a href="Page2.jsp" class="nav-link search" id="search">
                                <i class="ti-search"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<!--================ End Header Menu Area =================-->