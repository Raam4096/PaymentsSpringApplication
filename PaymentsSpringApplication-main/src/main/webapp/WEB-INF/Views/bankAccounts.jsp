<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.paymentsapplication.demo.entity.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank Accounts</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
        color: white;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    h2 {
        margin-top: 30px;
        color: cyan;
    }

    .bank-card {
        background-color: rgba(255, 255, 255, 0.05);
        border: 1px solid #00ffff;
        border-radius: 12px;
        padding: 20px;
        margin: 20px;
        width: 80%;
        max-width: 600px;
        box-shadow: 0 0 10px rgba(0,255,255,0.3);
    }

    .bank-card p {
        margin: 10px 0;
        font-size: 16px;
    }

    .bank-card strong {
        color: lightgreen;
    }

    .edit-btn {
        margin-top: 10px;
        display: inline-block;
        padding: 8px 16px;
        background-color: orange;
        color: black;
        border-radius: 6px;
        font-weight: bold;
        cursor: pointer;
    }

    .edit-btn:hover {
        background-color: darkorange;
    }

    .no-data {
        margin-top: 40px;
        font-size: 18px;
        color: #ff6b6b;
    }
</style>
</head>
<body>

<h2>Your Bank Accounts</h2>

<%
    UserDetailsEntity userObj= (UserDetailsEntity) session.getAttribute("userProfile");
    if (userObj != null && userObj.getBanks() != null ) {
        List<BankAccountsDetailsEntity> listOfBanks = userObj.getBanks();
        for (BankAccountsDetailsEntity bank : listOfBanks) {
%>
    <div class="bank-card">
        <p><strong>BANK NAME:</strong> <%= bank.getBankName() %></p>
        <p><strong>Bank Acct No:</strong> <%= bank.getAccountNumber() %></p>
        <p><strong>Balance:</strong><%= bank.getCurrentBalance() %>/-</p>
        <p><strong>IFSC Code:</strong> <%= bank.getIfscCode() %></p>
        <p><strong>Branch:</strong> <%= bank.getBankAccountBranchLocation() %></p>
        <p><strong>Account Status:</strong> <%= bank.getActStatus() %></p>
        <span class="edit-btn">Edit</span>
    </div>
<%
        }
    } else {
%>
    <p class="no-data">No Bank Accounts Found</p>
<%
    }
%>

</body>
</html>
