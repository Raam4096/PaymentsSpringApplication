<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile - Paydesk</title>
<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #141e30, #243b55);
    color: white;
    text-align: center;
}

.container {
    width: 90%;
    max-width: 1000px;
    margin: 20px auto;
    padding: 20px;
}

.App-name {
    font-weight: bold;
    font-family: serif;
    font-size: 28px;
    color: white;
    margin-bottom: 30px;
    border-bottom: 2px solid white;
    padding-bottom: 10px;
}

.section-header {
    font-size: 24px;
    color: lightgreen;
    margin-bottom: 10px;
    border-bottom: 2px solid teal;
    padding-bottom: 5px;
}

.header, .account-info, .transaction-history {
    border: 2px solid teal;
    padding: 20px;
    margin-bottom: 25px;
    border-radius: 10px;
    background-color: rgba(255, 255, 255, 0.05);
    text-align: left;
}

.header h1 {
    color: lightgreen;
    font-size: 26px;
    margin-bottom: 5px;
}

.logout-btn {
    position: absolute;
    top: 15px;
    right: 15px;
    padding: 10px 20px;
    background-color: red;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}

.account-info p {
    font-size: 18px;
    margin: 8px 0;
}

.send-money-btn {
    margin-top: 15px;
    padding: 10px 20px;
    background-color: red;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    float: right;
}

.bank-cards {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
    margin-bottom: 25px;
}

.bank-card {
    width: 280px;
    padding: 15px;
    border: 2px solid goldenrod;
    background: rgba(255, 255, 255, 0.1);
    border-radius: 10px;
    text-align: left;
}

.bank-card .edit-btn {
    color: green;
    font-weight: bold;
    cursor: pointer;
}

.transaction-history p {
    font-size: 16px;
    margin: 6px 0;
}

.detail-btn {
    margin-top: 20px;
    padding: 8px 16px;
    background-color: brown;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 14px;
    cursor: pointer;
}
</style>
</head>
<body>

<div class="container">
    <div class="App-name">Paydesk</div>

    <div class="header">
        <h1>Payments Web App</h1>
        <div class="section-header">Personal Details</div>
        <%@ include file = "profile.jsp" %>
    </div>

    <div class="account-info">
        <div class="section-header">Account Summary</div>
        <p><strong>Primary Bank Account No:</strong> [Your Account Number]</p>
        <p><strong>Account Balance:</strong> ₹XX,XXX</p>
        <p><strong>Wallet Balance:</strong> ₹X,XXX <span style="color:red;">[+]</span></p>
        <a href="/sendMoney"><button class="send-money-btn">Send money</button></a>
        <div style="clear: both;"></div>
    </div>

    <div class="section-header">Linked Bank Accounts</div>
    <div class="bank-cards">
        <%@ include file="bankAccounts.jsp" %>
        <div class="bank-card" style="border: 2px solid green; text-align: center;">
            <p style="color: green; font-size: 24px; margin: 0;"><a href="/viewBankForm" style="text-decoration: none;">[+]</a></p>
            <p style="margin: 5px 0 0; color: white;">Add Bank</p>
        </div>
    </div>

    <div class="transaction-history">
        <div class="section-header">Recent 10 Transactions</div>
        <p>₹1000 sent to XYZ</p>
        <p>₹1300 received from PQR</p>
        <p>₹120 received from 78877</p>
        <p>...</p>
        <p>...</p>
        <button class="detail-btn">Detailed Statement</button>
    </div>
</div>
 <div class="logout-btn">
  <button onclick="logout()">Logout</button>
 
 </div>

<script>
function logout() {
    window.location.href = "/startUpLogin"; // Redirect to login page
}
</script>

</body>
</html>
