<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Print Odd Page</title>
<style type="text/css">
* {
	font-size: 20px;
}

.content {
	width: 1200px;
	height: auto;
	margin: 0 auto;
	text-align: center;
}

button {
	width: 70px;
	height: 40px;
	margin-bottom: 5px;
}
</style>
</head>
<body>
	<div class="content">
		<h1>Print Odd Number</h1>
		<p>
			Create a page named printOdd (a servlet or jsp) to print all odd<br />
			numbers from 1 to 500. For odd numbers which are divisible by 5, fill<br />
			in RED and BOLD.
		</p>
		<%
			for (int i = 1; i <= 500; i++) {
			if (i % 2 == 1) {
				if (i % 5 == 0) {
		%>
		<button style="background-color: red">
			<%
				out.print(i + " ");
			%>
		</button>
		<%
			} else {
				%>
		<button>
			<%
				out.print(i + " ");
			%>
		</button>
		<%
		}
	}
			}
		%>
	</div>
</body>
</html>