<%@page import="org.hibernate.SessionFactory" %>
<%@page import="com.db.HibernateUtil" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<%@include file="components/all_css.jsp"%>
</head>

<body>
	<%@include file="components/navbar.jsp"%>
	
	<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/expense1.png" class="d-block w-100" alt="..."height="450px">
    </div>
    <div class="carousel-item">
      <img src="img/expense2.jpeg" class="d-block w-100" alt="..."height="450px">
    </div>
    <div class="carousel-item">
      <img src="img/expense3.jpeg" class="d-block w-100" alt="..."height="450px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</body>
</html>