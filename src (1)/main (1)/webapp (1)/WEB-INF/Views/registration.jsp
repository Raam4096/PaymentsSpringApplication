<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up - Paydesk</title>
<style>
/* Reset styles */
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #141e30, #243b55);
    color: white;
    height: 100vh; /* Full height */
    overflow: hidden; /* Prevents scrolling */
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

/* Header bar */
.header {
    background-color: black;
    color: white;
    padding: 15px;
    text-align: center;
    font-size: 24px;
    font-weight: bold;
    width: 100%;
    position: fixed;
    top: 0;
    left: 0;
}

/* Container (Sign Up Form) */
.container {
    width: 350px;
    padding: 20px;
    background: rgba(0, 0, 0, 0.8);
    border-radius: 10px;
    text-align: center;
    box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.2);
    position: relative;
    top: 60px; /* Push it below the header */
}

/* Input fields */
input {
    width: 90%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
    font-size: 14px;
}

/* Button */
button {
    width: 100%;
    padding: 10px;
    background-color: #00c3ff;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}

button:hover {
    background-color: #008ecf;
}

/* Links */
a {
    color: #00c3ff;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>

<div class="header">Paydesk</div>

<div class="container">
    <h2>Sign Up</h2>
    <form action="/register" method="POST">
        <input type="text" name="username" placeholder="Full Name" required><br>
        <input type="password" name="password" placeholder="Password" required><br>
        <input type="password" name="confirm_password" placeholder="Confirm Password" required><br>
        <input type="text" name="firstname" placeholder="First Name" required><br>
        <input type="text" name="lastname" placeholder="Last Name" required><br>
        <input type="email" name="email" placeholder="Email" required><br>
        <input type="text" name="mobile" placeholder="Phone Number" required><br>
        <input type="text" name="address" placeholder="Address" required><br>
        
        <button type="submit">Sign Up</button>
    </form>
    <p>Already have an account? <a href="login.html">Login</a></p>
</div>
</body>
</html>