<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Connection" %>
     <%@page import="com.database.DbConnect" %>
<html>
<head>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/app/static/app/css/all.min.css">

  <!--Custom CSS-->
  <link rel="stylesheet" href="css/style.css">
  <title>Tech Renting Website</title>
</head>
<body>
<%
HttpSession s=request.getSession();

%>
<div class="container">
<h2>Login & Security</h2>
    <div class="row">
    <div class="col-md-10">
      <div class="card-counter primary">
        <span class="count-namee">Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <span class="count-button"><button class="btn btn-primary">Edit</button></span><br>
        <span class="count-namee">value</span>
      </div>
    </div>
    </div>
        <div class="row">
    <div class="col-md-10">
      <div class="card-counter primary">
        <span class="count-namee">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <span class="count-button"><button class="btn btn-primary">Edit</button></span><br>
        <span class="count-namee">value</span>
      </div>
    </div>
    </div>
        <div class="row">
    <div class="col-md-10">
      <div class="card-counter primary">
        <span class="count-namee">Mobile:&nbsp;&nbsp;&nbsp;</span>
        <span class="count-button"><button class="btn btn-primary">Edit</button></span><br>
        <span class="count-namee">value</span>
      </div>
    </div>
    </div>
        <div class="row">
    <div class="col-md-10">
      <div class="card-counter primary">
        <span class="count-namee">Password:</span>
        <span class="count-button"><button class="btn btn-primary">Edit</button></span><br>
        <span class="count-namee">value</span>
      </div>
    </div>
    </div>
  </div>
  </body>
  </html>