<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subject Registration</title>
<style type="text/css">
* {font-size:20px}
.content {width: 500px;height:700px;background-color:#1E90FF;margin: 200px auto;text-align: center;; }
.content h2 {font-size: 30px;padding: 20px 20px;color: white}
.content input[type=text] {width: 400px;height:40px;margin-bottom: 20px;border: none}
.content input[type=checkbox] {width: 20px;height:20px;margin-bottom: 20px;margin-left:20px;border: none}
.content input[type=submit] {width: 400px;height:40px;background-color:#4169E1;color:white;border: none;}

</style>
</head>
<body>
	<!-- Create 4 textboxes for name, surname, phone number, email address
	Use 3 checkboxes to make multiple selections.
	Send the registration information to a servlet to display. (using the HTTP POST method) -->
	<div class="content">
	
	<form action="" method="post">
	<h2>Subject Registration</h2>
	<div>
		
		<input type="text" placeholder=" Your name" required="required"/>
	</div>
	<div>
		
		<input type="text" placeholder=" Your surname" required="required"/>
	</div>
	<div>
		
		<input type="text" placeholder=" Your phone" required="required"/>
	</div>
	<div>
		
		<input type="text" placeholder=" Your email" required="required" />
	</div>
	
	<div>
	<label>Course Name:</label><br />
	<input type="checkbox" name="Jave"/>JAVA
	<input type="checkbox" name="Python"/>PYTHON
	<input type="checkbox" name="NODEJS"/>NODEJS
	</div>
	
	<div>
	<input type="submit" name="Register" />
	</div>
		
	</form>
	</div>
</body>
</html>