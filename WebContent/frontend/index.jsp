<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cycl0matic BookStore - Online book Store</title>
<style>
	* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

html {
	font-size: 62.5%;
}

a {
	text-decoration: none;
	color: #fff;
}

/* header */
.header {
	font-size: 1.6rem;
	background: #010e2c;
	color: green;
	padding: 2.5rem;
	display: flex;
	flex-direction: column;
	width: 100vw;
}

.header h1 {
	font-size: 4rem;
	margin-bottom: 5rem;
	text-align: center;
}

.header .header-elements {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.header .header-elements .category ul {
	list-style: none;
	margin-bottom: 1.5rem;
}

.header .header-elements .category ul li {
	display: inline-block;
	padding: 2rem;
	margin-right: 2.3rem;
	border-bottom: 1px solid green;
}

.header .header-elements .search-area #searchbar {
	padding: 1rem;
	margin-top: 1.4rem;
	margin-bottom: 1.4rem;
	min-width: 6rem;
	border: 1px solid green;
	border-radius: 20px;
	outline: none;
}

.header .header-elements .search-area #search-button {
	padding: 1rem 2.3rem;
	border: 1px solid green;
	border-radius: 20px;
	cursor: pointer;
	outline: none;
	background: none;
	color: red;
}

.header .header-elements .header-links ul {
	list-style: none;
}

.header .header-elements .header-links ul li {
	display: inline-block;
	padding: 2rem;
	margin-right: 2.3rem;
	border-bottom: 1px solid green;
}

/* footer */
.footer {
	color: green;
	display: flex;
	flex-direction: column;
	align-items: center;
	background-color: #010e2c;
	padding: 2rem;
}

.footer .contact ul {
	list-style: none;
}

.footer .contact ul li {
	display: inline-block;
	padding: 2rem;
	margin-right: 2.3rem;
	border-bottom: 1px solid green;
}

.footer .contact ul li a {
	color: #fff;
	font-size: 1.4rem;
}

@media screen and (max-width: 520px) {
	.header .header-elements {
		flex-wrap: wrap;
		text-align: center;
	}
	.footer .contact ul li {
		display: inline-block;
		padding: 1rem;
		margin-right: 1rem;
	}
	.footer .contact ul li a {
		font-size: 1.1rem;
	}
}
</style>
</head>
<body>

	<%@include file="header.jsp" %>
	<div align="center">
		<h3>this is main content :</h3>
		<h2>New Books</h2>
		<h2>best-selling Books</h2>
		<h2>most-favored Books</h2>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>