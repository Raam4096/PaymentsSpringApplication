<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.paymentsapplication.demo.entity.UserDetailsEntity" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile - Paydesk</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #141e30, #243b55);
        color: white;
    }

    .profile-container {
        width: 90%;
        max-width: 1000px;
        margin: 40px auto;
        background: rgba(255, 255, 255, 0.05);
        border: 2px solid cyan;
        border-radius: 10px;
        padding: 30px;
        text-align: center;
    }

    .profile-container h2 {
        margin-bottom: 20px;
        font-size: 24px;
        color: lightgreen;
    }

    form {
        display: flex;
        justify-content: center;
        flex-direction: column;
        align-items: center;
    }

    table {
        border-collapse: collapse;
        width: 100%;
        color: white;
    }

    th, td {
        padding: 12px 20px;
        text-align: center;
        font-size: 16px;
    }

    th {
        color: yellow;
        border-bottom: 2px solid lightblue;
    }

    input[type="text"] {
        height: 30px;
        padding: 8px 12px;
        font-size: 16px;
        font-weight: bold;
        border-radius: 8px;
        background-color: #243b55;
        color: white;
        border: 1px solid #ccc;
        width: 100%;
    }

    .edit-btn {
        margin-top: 20px;
        padding: 10px 25px;
        font-size: 16px;
        background-color: red;
        color: white;
        border: none;
        border-radius: 6px;
        cursor: pointer;
    }

    .edit-btn:hover {
        background-color: darkred;
    }
</style>
</head>
<body>

<%
    UserDetailsEntity user = (UserDetailsEntity) session.getAttribute("userProfile");
%>

<div class="profile-container">
    <h2>Your Profile Information</h2>
    <form action="/editProfile" method="post">
        <table>
            <tr>
                <th>User Name</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Phone Number</th>
                <th>Address</th>
            </tr>
            <tr>
                <td><input type="text" value="<%= user.getUserName() %>" readonly></td>
                <td><input type="text" value="<%= user.getFirstName() %>" readonly></td>
                <td><input type="text" value="<%= user.getLastName() %>" readonly></td>
                <td><input type="text" value="<%= user.getPhoneNumber() %>" readonly></td>
                <td><input type="text" value="<%= user.getAddress() %>" readonly></td>
            </tr>
        </table>
        <input type="submit" value="Edit" class="edit-btn">
    </form>
</div>

</body>
</html>
