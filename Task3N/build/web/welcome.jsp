<%-- 
    Document   : CourseForm.jsp
    Created on : Aug 30, 2020, 7:14:08 PM
    Author     : xdati
--%>

<%@ page import = "java.io.*,java.util.*" %>
<%
    // Get session creation time.
    Date createTime = new Date(session.getCreationTime());

    // Get last access time of this Webpage.
    Date lastAccessTime = new Date(session.getLastAccessedTime());

    String title = "Welcome Back to my website";
    String userIDKey = new String("userID");
    String userID = new String("ABCD");

    // Check if this is new comer on your Webpage.
    if (session.isNew()) {
        title = "Welcome to my website";
        session.setAttribute(userIDKey, userID);
    }
    userID = (String) session.getAttribute(userIDKey);
%>

<html>
    <head>
        <title>Session Tracking</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            .cover {
                width: 700px;
                height: auto;
                margin: 150px auto;
                background-color: lavender;
            }
            table {
                text-align: center;
            }
            button {
                width: 150px;
                height: 50px;
               
            }
            
        </style>
    </head>

    <body>
    <center>
        <h1><% out.print(title);%></h1>
    </center>

    
    <div class="cover">
        <table class="table table-striped">
            <thead>
                
            </thead>
            <tbody>
                <tr>
                    <td><p><% out.print(session.getId()); %></p></td>
                    <td><p><% out.print(createTime); %></p></td>
                </tr>
                <tr>
                    <td><a href="login.jsp"><button class="w3-button w3-blue">Login</button></a></td>
                    <td><a href="sign-up.jsp"><button class="w3-button w3-blue">Register</button></a></td>
                </tr>
                
            </tbody>
        </table>
    </div>


</body>
</html>