<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<style>
h4 {
	color: red
}
#logout{
	display : inline-block;
	color : red;
	border : 1px solid green;
	padding : 1rem;
	border-radius : 20px;
}
</style>
</head>
<body>
	<div class="header">

		<h1>Cycl0matic Bookstore</h1>
		<h3 style="text-align: center">Administrator Page</h3>
		<br>
		<div>
			<h4 style="text-align: center">Welcome Admin |&nbsp; <a id="logout" href="logout">Logout</a></h4>
		</div>
		<div class="header-elements">
			<div class="category">
				<ul>
					<li><a href="users">Users</a></li>
					<li><a href="categories">Categories</a></li>
					<li><a href="books">Books</a></li>
					<li><a href="customers">Customers</a></li>
					<li><a href="reviews">Reviews</a></li>
					<li><a href="orders">Orders</a></li>
				</ul>
			</div>

			<div class="search-area">
				<input type="text" name="keyword" size="50" id="searchbar">
				<input type="submit" value="Search" id="search-button">
			</div>

			<div class="header-links">
				<ul>
					<li><a href="login">SignIn</a></li>
					<li><a href="register">Register</a></li>
					<li><a href="view_cart">Cart</a></li>
				</ul>
			</div>
		</div>
	</div>