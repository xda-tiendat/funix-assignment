<%-- 
    Document   : Page2
    Created on : Aug 30, 2020, 9:50:27 PM
    Author     : xdati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <link rel="icon" href="img/favicon.png" type="image/png" />
        <title>About Us</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="./edustage/css/bootstrap.css" />
        <link rel="stylesheet" href="./edustage/css/flaticon.css" />
        <link rel="stylesheet" href="./edustage/css/themify-icons.css" />
        <link rel="stylesheet" href="./edustage/vendors/owl-carousel/owl.carousel.min.css" />
        <link rel="stylesheet" href="./edustage/vendors/nice-select/css/nice-select.css" />
        <!-- main css -->
        <link rel="stylesheet" href="./edustage/css/style.css" />
    </head>

    <body>
        <%@include file="header.jsp" %>


        <c:set var="userDTO" value="${requestScope.USER}" />
        <!--================ Start About Area =================-->
        <section class="about_area section_gap">
            <div class="container">
                <div class="row h_blog_item">
                    <div class="col-lg-6">
                        <div class="h_blog_img">
                            <img class="img-fluid" src="./edustage/img/about.png" alt="" />
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="h_blog_text">
                            <div class="h_blog_text_inner left right">
                                <h4>Welcome to our course</h4>
                                <p style="color: red;font-size: 20px">Full name:${userDTO.fullname}</p>
                                <p style="color: red;font-size: 20px">Age:${userDTO.age}</p>
                                <p style="color: red;font-size: 20px">Country:${userDTO.country}</p>
                                <p style="color: red;font-size: 20px">Language: ${userDTO.language}</p>
                                <p style="color: red;font-size: 20px">Courses: ${userDTO.courses}</p>
                                <p>
                                    By June 6th 2018, all assignments will have two options for students to choose (you are encouraged to choose option 2 to do the assignments). 
                                </p>
                                <a class="primary-btn" href="#">
                                    Start Now <i class="ti-arrow-right ml-1"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ End About Area =================-->

        <!--================ Start Feature Area =================-->
        <section class="feature_area section_gap_top title-bg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5">
                        <div class="main_title">
                            <h2 class="mb-3 text-white">Awesome Feature</h2>
                            <p>
                                Replenish man have thing gathering lights yielding shall you
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single_feature">
                            <div class="icon"><span class="flaticon-student"></span></div>
                            <div class="desc">
                                <h4 class="mt-3 mb-2">Scholarship Facility</h4>
                                <p>
                                    One make creepeth, man bearing theira firmament won't great
                                    heaven
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="single_feature">
                            <div class="icon"><span class="flaticon-book"></span></div>
                            <div class="desc">
                                <h4 class="mt-3 mb-2">Sell Online Course</h4>
                                <p>
                                    One make creepeth, man bearing theira firmament won't great
                                    heaven
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="single_feature">
                            <div class="icon"><span class="flaticon-earth"></span></div>
                            <div class="desc">
                                <h4 class="mt-3 mb-2">Global Certification</h4>
                                <p>
                                    One make creepeth, man bearing theira firmament won't great
                                    heaven
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ End Feature Area =================-->

        <!--================ Start Testimonial Area =================-->
        <div class="testimonial_area section_gap">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5">
                        <div class="main_title">
                            <h2 class="mb-3">Client say about me</h2>
                            <p>
                                Replenish man have thing gathering lights yielding shall you
                            </p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="testi_slider owl-carousel">
                        <div class="testi_item">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <img src="./edustage/img/testimonials/t1.jpg" alt="" />
                                </div>
                                <div class="col-lg-8">
                                    <div class="testi_text">
                                        <h4>Elite Martin</h4>
                                        <p>
                                            Him, made can't called over won't there on divide there
                                            male fish beast own his day third seed sixth seas unto.
                                            Saw from
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="testi_item">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <img src="./edustage/img/testimonials/t2.jpg" alt="" />
                                </div>
                                <div class="col-lg-8">
                                    <div class="testi_text">
                                        <h4>Davil Saden</h4>
                                        <p>
                                            Him, made can't called over won't there on divide there
                                            male fish beast own his day third seed sixth seas unto.
                                            Saw from
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="testi_item">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <img src="./edustage/img/testimonials/t1.jpg" alt="" />
                                </div>
                                <div class="col-lg-8">
                                    <div class="testi_text">
                                        <h4>Elite Martin</h4>
                                        <p>
                                            Him, made can't called over won't there on divide there
                                            male fish beast own his day third seed sixth seas unto.
                                            Saw from
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="testi_item">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <img src="./edustage/img/testimonials/t2.jpg" alt="" />
                                </div>
                                <div class="col-lg-8">
                                    <div class="testi_text">
                                        <h4>Davil Saden</h4>
                                        <p>
                                            Him, made can't called over won't there on divide there
                                            male fish beast own his day third seed sixth seas unto.
                                            Saw from
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="testi_item">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <img src="./edustage/img/testimonials/t1.jpg" alt="" />
                                </div>
                                <div class="col-lg-8">
                                    <div class="testi_text">
                                        <h4>Elite Martin</h4>
                                        <p>
                                            Him, made can't called over won't there on divide there
                                            male fish beast own his day third seed sixth seas unto.
                                            Saw from
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="testi_item">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <img src="./edustage/img/testimonials/t2.jpg" alt="" />
                                </div>
                                <div class="col-lg-8">
                                    <div class="testi_text">
                                        <h4>Davil Saden</h4>
                                        <p>
                                            Him, made can't called over won't there on divide there
                                            male fish beast own his day third seed sixth seas unto.
                                            Saw from
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--================ End Testimonial Area =================-->

        <%@include file="footer.jsp" %>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="./edustage/js/jquery-3.2.1.min.js"></script>
        <script src="./edustage/js/popper.js"></script>
        <script src="./edustage/js/bootstrap.min.js"></script>
        <script src="./edustage/vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="./edustage/vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="./edustage/js/owl-carousel-thumb.min.js"></script>
        <script src="./edustage/js/jquery.ajaxchimp.min.js"></script>
        <script src="./edustage/js/mail-script.js"></script>
        <!--gmaps Js-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="./edustage/js/gmaps.min.js"></script>
        <script src="./edustage/js/theme.js"></script>
    </body>
</html>

