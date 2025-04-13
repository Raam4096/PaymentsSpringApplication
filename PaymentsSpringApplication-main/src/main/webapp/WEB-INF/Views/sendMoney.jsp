<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send Money</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #2c5364;
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .send-money-container {
        background-color: rgba(255,255,255,0.05);
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 0 10px cyan;
        width: 400px;
    }

    .send-money-container h2 {
        text-align: center;
        color: cyan;
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-top: 10px;
        font-weight: bold;
    }

    input, select {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 5px;
        border: none;
        background: #243b55;
        color: white;
    }

    .sub-dropdown {
        display: none;
    }

    .btn {
        width: 100%;
        padding: 12px;
        margin-top: 20px;
        background-color: cyan;
        color: black;
        border: none;
        font-weight: bold;
        border-radius: 8px;
        cursor: pointer;
    }

    .btn:hover {
        background-color: #00ffff;
    }
</style>
<script>
    function toggleBankOptions() {
        const fromType = document.getElementById("fromType").value;
        const subOption = document.getElementById("bankSubType");
        if (fromType === "bank") {
            subOption.style.display = "block";
        } else {
            subOption.style.display = "none";
        }
    }
</script>
</head>
<body>

<div class="send-money-container">
    <h2>Send Money</h2>
    <form action="/processSendMoney" method="post">
        
        <!-- From Account Type -->
        <label for="fromType">From Account Type</label>
        <select name="fromType" id="fromType" onchange="toggleBankOptions()">
            <option value=1>Wallet</option>
            <option value=2>Bank Account</option>
        </select>

        <!-- Sub Option for Bank Account -->
        <div class="sub-dropdown" id="bankSubType">
            <label for="bankType">Select Bank Type</label>
            <select name="bankType">
                <option value="primary">Primary Account</option>
                <option value="other">Other Bank Account</option>
            </select>
        </div>

        <!-- To Account Details -->
        <label for="toUserId">To User ID</label>
        <input type="text" name="toUserId" required>

        <label for="toAccountNumber">Bank Account Number</label>
        <input type="text" name="toAccountNumber" required>

        <label for="ifsc">IFSC Code</label>
        <input type="text" name="ifsc" required>

        <label for="bankName">Bank Name</label>
        <input type="text" name="bankName" required>

        <!-- Amount -->
        <label for="amount">Amount to Send</label>
        <input type="number" name="amount" required>

        <!-- Submit -->
        <button type="submit" class="btn">Send Money</button>
    </form>
</div>

</body>
</html>
