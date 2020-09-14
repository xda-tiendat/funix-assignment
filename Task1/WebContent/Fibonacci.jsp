<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fibonacci Page</title>
<style type="text/css">
.content {
	width: 1200px;
	margin: 0 auto;
	text-align: center;
}

button {
	width: 70px;
	height: 40px
}
</style>
</head>
<body>
	<div class="content">
		<h1>Fibonacci Page</h1>
		<p>Creates a page printing the Fibonacci sequence, which is
			smaller than 10946.</p>
		<%
		int a = 0;
		int b = 1;
		int f = 1;
		%>
		<button>
			<%
				out.print(a);
			%>
		</button>
		<button>
			<%
				out.print(b);
			%>
		</button>
		<%
			while (f < 10946) {
			a = b;
			b = f;
			f = a + b;
			%>
			<button><% out.print(f); %></button>
			<%
		}
		%>
	</div>
</body>
</html>