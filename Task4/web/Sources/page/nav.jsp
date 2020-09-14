<%-- 
    Document   : nav
    Created on : Sep 10, 2020, 11:26:43 PM
    Author     : xdati
--%>

<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
    <div class="w3-container">
        <a href="#" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
            <i class="fa fa-remove"></i>
        </a>
        <img src="./Sources/img/logo1.png" style="width:45%;" class="w3-round"><br><br>
        <h4><b>Welcome: ${accInfor.username}</b></h4>
        <p class="w3-text-grey">Fullname: ${accInfor.fullname}</p>
    </div>
    <div class="w3-bar-block">
        <a class="w3-bar-item w3-button w3-padding w3-text-teal" href="AuthorController"><i class="fa fa-th-large fa-fw w3-margin-right"></i>DESIGN</a>
        <a class="w3-bar-item w3-button w3-padding w3-text-teal" href="UserDetailController"><i class="fa fa-th-large fa-fw w3-margin-right"></i>USER DETAIL</a> 
        <a class="w3-bar-item w3-button w3-padding w3-text-teal" href="PostOfAuthorController"><i class="fa fa-th-large fa-fw w3-margin-right"></i>YOUR POSTS</a> 
    </div>
    <div class="w3-panel w3-large">
        <i class="fa fa-facebook-official w3-hover-opacity"></i>
        <i class="fa fa-instagram w3-hover-opacity"></i>
        <i class="fa fa-twitter w3-hover-opacity"></i>
    </div>
</nav>