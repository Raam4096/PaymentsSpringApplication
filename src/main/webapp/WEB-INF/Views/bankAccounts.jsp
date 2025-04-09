<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
    <%@page import="com.paymentsapplication.demo.entity.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%List<BankAccountsDetailsEntity> listOfBanks=((UserDetailsEntity)session.getAttribute("userProfile")).getBanks(); %>
	<%for(BankAccountsDetailsEntity bank:listOfBanks){ %>
	<div>
		<p><strong>BANK NAME</strong>:<%=bank.getBankName()%></p>
            <p>Bank Acct No:<%=bank.getAccountNumber() %> </p>
            <p>Balance:<%=bank.getCurrentBalance() %> </p>
            <p>IFSC Code:<%=bank.getIfscCode() %> </p>
            <p>Branch:<%=bank.getBankAccountBranchLocation() %> </p>
            <p>Account Status:<%=bank.getActStatus() %> </p>
            <span class="edit-btn">Edit</span>
	</div>
	<%} %>
</body>
</html>