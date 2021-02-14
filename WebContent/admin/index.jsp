<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookstore administration</title>
<style>
h1, h2 {
	margin-top: 2rem;
	font-size: 2.5rem;
	margin-bottom: 2rem
}

h2 {
	font-size: 2rem;
}

ul {
	list-style: none;
	margin-bottom: 2rem;
}

ul li {
	display: inline-block;
	padding: 2rem;
	margin-right: 2.3rem;
	border-bottom: 1px solid green;
	font-size: 1.5rem;
}

#inlist li a {
	color: black
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<div align="center">
		<h1>Administrative Dashboard</h1>
		<hr width="40%">
	</div>

	<div align="center">
		<h2>Quick Actions</h2>
		<hr width="10%">
		<ul id="inlist">
			<li><a href="create_book">New Book</a></li>
			<li><a href="create_user">New User</a></li>
			<li><a href="create_category">New Category</a></li>
			<li><a href="create_customer">New Customer</a></li>
		</ul>
	</div>
	<div align="center">
		<h2>Recent Sales :</h2>
	</div>
	<hr >
	<div align="center">
		<h2>Recent Reviews :</h2>
	</div>
	<hr>
	<div align="center">
		<h2>Statistics :</h2>
	</div>

	<%@include file="footer.jsp"%>

</body>
</html>