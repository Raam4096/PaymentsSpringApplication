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
 <% UserDetailsEntity user= (UserDetailsEntity)session.getAttribute("userProfile"); %>
 
 <div>
 <h2>Profile Details</h2>
User Name <%= user.getUserName() %>  
First Name <%= user.getFirstName() %>  
Last Name <%= user.getLastName() %>  
Phone Number <%= user.getPhoneNumber() %>  
Address <%= user.getAddress() %>  
 
 </div>
 
</body>
</html>