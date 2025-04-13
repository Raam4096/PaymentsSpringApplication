<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<style>
ul {
	display: flex;
	background-color: black;
	height: 50px;
	margin: 0;
	padding: 0;
	justify-content: space-between;
	list-style-type: none;
	align-items: center;
	padding-left: 20px;
	padding-right: 20px;
	box-shadow: 0px 4px 10px rgba(255, 255, 255, 0.3);
}

li {
	padding: 0 20px;
}

body {
    margin: 0;
    padding: 0;
    height: 100%; 
    overflow: hidden; 
    font-family: Arial, sans-serif;
}

a {
	color: white;
	text-decoration: none;
	font-weight: bold;
	transition: color 0.3s ease-in-out;
}

a:hover {
	color: #00c3ff;
}

.mainname {
	font-size: 22px;
	font-weight: bold;
	color: white;
}

.welcome {
	color: white;
	font-weight: bold;
	font-size: 18px;
	text-align: center;
	flex-grow: 1;
}

.full-screen {
   width: 100%;
   height: 100vh; 
   object-fit: cover; 
   position: absolute;
}
</style>
</head>
<body>
<div>
		<ul>
			<li class="mainname">Paydesk</li>
			<li class="welcome">Welcome to Safe Payment Mode</li>
			<li><a href="/register">Sign up</a></li>
			<li><a href="/startUpLogin">Login</a></li>
		</ul>
	</div>
	<div>
		<img src="https://www.payoneer.com/wp-content/uploads/boost-cross-border-payment-capabilities.jpg" class="full-screen">
	</div>
</body>
</html>