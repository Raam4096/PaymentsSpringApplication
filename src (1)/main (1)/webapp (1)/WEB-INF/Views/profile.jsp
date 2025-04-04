<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.paymentsapplication.demo.entity.UserDetailsEntity" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>LOGGED IN SUCCESFULLY</h1>
 <% UserDetailsEntity user= (UserDetailsEntity)request.getAttribute("userProfile"); %>
 <%= user%>
</body>
</html>