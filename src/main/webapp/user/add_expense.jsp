<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Add Expense</title>
  <%@include file="../components/all_css.jsp"%>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
    }

    .container {
      display: flex;
      justify-content: center;
      align-items: flex-start;
      height: calc(100vh - 50px);
    }

    .form-container {
      background-color: #f9f9f9;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      max-width: 400px;
      width: 100%;
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
    }

    hr {
      border: none;
      border-top: 1px solid #ccc;
      margin: 20px 0;
    }

    label {
      display: block;
      margin-bottom: 8px;
      font-weight: bold;
      color: #444;
    }

    input[type="text"],
    input[type="date"],
    input[type="time"],
    input[type="number"],
    textarea {
      width: 100%;
      padding: 10px;
      font-size: 14px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
      margin-bottom: 12px;
    }

    input[type="submit"] {
      width: 100%;
      padding: 12px;
      background-color: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
  <%@include file="../components/navbar.jsp"%>

  <div class="container">
    <div class="form-container">
      <h1>Add Expense</h1>
      <form action="../saveExpense" method="post"> <!-- Replace "/your-action-url" with your desired URL -->
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required>

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required>

        <label for="time">Time:</label>
        <input type="time" id="time" name="time" required>

        <label for="description">Description:</label>
        <textarea id="description" name="description" rows="4"></textarea>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" required>

        <input type="submit" value="Add">
      </form>

      <hr> <!-- Horizontal line -->

      <!-- Add other elements here -->
    </div>
  </div>
</body>
</html>
