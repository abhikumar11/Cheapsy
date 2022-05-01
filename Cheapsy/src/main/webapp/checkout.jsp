<%@page import="com.database.DbConnect" %>
<%@page import="java.sql.ResultSet" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
  <title>Tech Renting Website</title>
</head>
<body>
<div class="container">
 <div class="row mt-5">
  <div class="col-sm-6">
  <table class="table table-bordered">
  <thead class="bg-primary">
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Qty</th>
      <th scope="col">Price</th>
      <th scope="col">Duration</th>
      <th scope="col">Sub Total</th>
    </tr>
  </thead>
  <tbody>
  <% 
  HttpSession s=request.getSession();
  String email=String.valueOf(s.getAttribute("email"));
  String query="select * from product_cart where uemail='"+email+"'";
  ResultSet rs=DbConnect.fetchData(query);
  float total=0;
  while(rs.next())
  {
  %>
    <tr>
      <td id="pname"><%=rs.getString(3) %></td>
      <td><%=rs.getInt(4) %></td>
      <td><%=rs.getFloat(5) %></td>
      <td><%=rs.getInt(6) %>&nbsp;Month</td>
      <%total+=rs.getInt(4)*rs.getFloat(5)*rs.getInt(6); %>
      <td><%=(rs.getInt(4)*rs.getFloat(5)*rs.getInt(6)) %></td>
    </tr>
    <%} %>
   </tbody>
</table>
  </div>
  <div class="col-sm-4 offset-sm-1">
	<div class="card">
  <h5 class="card-header">Shipping Address</h5>
  <div class="card-body">
    <p class="card-text"></p>
  </div>
</div>
<br/>
<div class="card">
  <h5 class="card-header">Payment Details</h5>
  <div class="card-body">
    <p class="card-text"></p>
  </div>
</div>
    </div>
  </div>
</div>
</body>
</html>