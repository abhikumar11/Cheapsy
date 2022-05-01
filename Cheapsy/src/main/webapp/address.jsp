<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.database.DbConnect" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>Tech Renting Website</title>
</head>
<body>
<%
HttpSession s=request.getSession(false);
String email=String.valueOf(s.getAttribute("email"));
ResultSet rs=DbConnect.fetchData("select * from user_reg where email_id='"+email+"'");
rs.next();
%>
<div class="container mt-3">
<div class="card">
  <h5 class="card-header">Featured</h5>
  <div class="card-body">
    <b class="card-text"><%=rs.getString(1)%>&nbsp;<%=rs.getBigDecimal(4) %></b>
    <p class="card-text"><%=rs.getString(5)%>&nbsp;<%=rs.getString(6) %>&nbsp;<%=rs.getString(7) %>&nbsp;<%=rs.getString(8) %>&nbsp;<b><%=rs.getInt(9) %></b></p>
     <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
    Edit
  </button>
  </div>
</div>
</div>
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Address</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <form action="/action_page.php">
  <div class="form-group">
    <label for="add1">Address Line 1</label>
    <input type="text" class="form-control" value="<%=rs.getString(5) %>" id="add1">
  </div>
    <div class="form-group">
    <label for="add2">Address Line 2</label>
    <input type="text" class="form-control" value="<%=rs.getString(6) %>"id="add2">
  </div>
  <div class="form-group">
    <label for="city">City</label>
    <input type="text" class="form-control" value="<%=rs.getString(7) %>" id="city">
  </div>
  <div class="form-group">
    <label for="state">State</label>
    <input type="text" class="form-control" value="<%=rs.getString(8) %>" id="state">
  </div>
  <div class="form-group">
    <label for="pin">Pincode</label>
    <input type="text" class="form-control" value="<%=rs.getInt(9) %>" id="pin">
  </div>
  
   <div class="modal-footer">
         <button type="submit" class="btn btn-primary">Save</button>
      </div>
</form>
      </div>
    </div>
  </div>
</div>
</body>
</html>