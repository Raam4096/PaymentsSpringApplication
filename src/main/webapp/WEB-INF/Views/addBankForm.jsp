<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addBank" method="POST">
	<pre>
		<input type="text" name="Bankacc_number" placeholder="Bank account number" required><br>
		<input type="text" name="Bank_name" placeholder="Bank name" required><br>
        <input type="text" name="ifsc_code" placeholder="ifsc code" required><br>
        <input type="text" name="AccountStatus" placeholder="Account status" required><br>
        <input type="text" name="Account_branchlocation" placeholder="Branch location" required><br>
        <input type="text" name="Current_balance" placeholder="Current balance" required><br>
        <button type="submit">submit</button>
	</pre>    
    </form>
</body>
</html>