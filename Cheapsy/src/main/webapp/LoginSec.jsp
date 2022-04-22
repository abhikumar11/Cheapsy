<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
     <%@page import="com.database.DbConnect" %>
<html>
<head>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/app/static/app/css/all.min.css">
  <link rel="stylesheet" href="css/style.css">
  <title>Cheapsy</title>
  <style type="text/css">
  
  .card-counter{
    box-shadow: 2px 2px 10px #003459;
    margin: 5px;
    padding: 20px 10px;
    background-color: #fff;
    height: 100px;
    border-radius: 5px;
  }

  .card-counter.primary{
    background-color:white;
    color:black;
  }


  .card-counter .count-numbers{
    position: absolute;
    right: 35px;
    top: 20px;
    font-size: 32px;
    display: block;
  }
  .count-name
  {
    font-weight:bold;
  }

 .count-button
 {
 margin-left:30rem;
 }
  
  </style>
</head>
<body>
<%
HttpSession s=request.getSession();
String name=String.valueOf(s.getAttribute("username"));
String query="select * from user_reg where user_name='"+name+"'";
ResultSet rs=DbConnect.fetchData(query);
rs.next();
%>
<div class="container">
<h2>Login & Security</h2>
    <div class="row">
    <div class="col-md-7">
      <div class="card-counter primary">
        <span class="count-name">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <span class="count-button"><button class="btn btn-primary">Edit</button></span><br>
        <span class="count-value"><%=rs.getString(1)%></span>
      </div>
    </div>
    </div>
        <div class="row">
    <div class="col-md-7">
      <div class="card-counter primary">
        <span class="count-name">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <span class="count-button"><button class="btn btn-primary">Edit</button></span><br>
        <span class="count-value"><%=rs.getString(2)%></span>
      </div>
    </div>
    </div>
        <div class="row">
    <div class="col-md-7">
      <div class="card-counter primary">
        <span class="count-name">Mobile&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <span class="count-button"><button class="btn btn-primary">Edit</button></span></br>
        <span class="count-value"><%=rs.getString(4)%></span>
      </div>
    </div>
    </div>
        <div class="row">
    <div class="col-md-7">
      <div class="card-counter primary">
        <span class="count-name">Password</span>
        <span class="count-button"><button class="btn btn-primary">Edit</button></span><br>
        <span class="count-value"><%=rs.getString(3)%></span>
      </div>
    </div>
    </div>
  </div>
  </body>
  </html>