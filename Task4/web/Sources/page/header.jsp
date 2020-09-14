<%-- 
    Document   : header
    Created on : Sep 9, 2020, 12:29:14 PM
    Author     : xdati
--%>

<!-- Navigation bar with social media icons -->
<div class="topnav">
    <a href="${pageContext.servletContext.contextPath}/PostController">Home</a>
    <a href="${pageContext.servletContext.contextPath}/AuthorController">Authoring</a>
    <a href="#contact">Contact</a>
    <c:choose>
        <c:when test="${accInfor == null}">
            <div class="login-container">
                <a href="${pageContext.servletContext.contextPath}/LoginController" style="float: right;">Login</a>
                <a href="${pageContext.servletContext.contextPath}/RegisterController" style="float: right;">Register</a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="login-container">
                <form action="LogoutController" method="POST">
                    <button type="submit">Logout</button>
                </form>
                <button disabled>Welcome: ${accInfor.username}</button>
            </div>
        </c:otherwise>
    </c:choose>
</div>
<div class="w3-content" style="max-width:1600px">
    <!-- Image header -->
    <header class="w3-display-container w3-wide" id="home">
        <img class="w3-image" src="./Sources/img/blog.jpg" width="1600" height="600px !Important">
        <div class="w3-display-left w3-padding-large">
            <h1 class="w3-jumbo w3-text-white w3-hide-small"><b>READ ANYWHERE</b></h1>
            <h6 class="w3-button w3-white w3-padding-large w3-large w3-opacity w3-hover-opacity-off">${welcome}</h6>
        </div>
    </header>
</div>
