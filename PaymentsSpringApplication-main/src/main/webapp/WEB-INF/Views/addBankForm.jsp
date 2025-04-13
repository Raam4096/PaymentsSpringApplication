<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Bank Account</title>
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

    .form-container {
        background-color: rgba(255,255,255,0.05);
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 0 10px cyan;
        width: 400px;
    }

    .form-container h2 {
        text-align: center;
        color: cyan;
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-top: 10px;
        font-weight: bold;
    }

    input {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 5px;
        border: none;
        background: #243b55;
        color: white;
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
</head>
<body>

<div class="form-container">
    <h2>Add Bank Account</h2>
    <form action="/addBank" method="POST">
        <label>Bank Account Number</label>
        <input type="text" name="Bankacc_number" placeholder="Bank account number" required>

        <label>Bank Name</label>
        <input type="text" name="Bank_name" placeholder="Bank name" required>

        <label>IFSC Code</label>
        <input type="text" name="ifsc_code" placeholder="IFSC code" required>

        <label>Account Status</label>
        <input type="text" name="AccountStatus" placeholder="Account status" required>

        <label>Branch Location</label>
        <input type="text" name="Account_branchlocation" placeholder="Branch location" required>

        <label>Current Balance</label>
        <input type="text" name="Current_balance" placeholder="Current balance" required>

        <button type="submit" class="btn">Submit</button>
    </form>
</div>

</body>
</html>
