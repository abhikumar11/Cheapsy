<%@page import="com.database.DbConnect"%>
<%@page import="java.sql.*" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>Tech Renting Website</title>
  </head>
  <body>
  <%
  String title=request.getParameter("title");
  String query="select * from product_details where product_name='"+title+"'";
  ResultSet rs=DbConnect.fetchData(query);
  %>
<div class="container my-5">
 <div class="row">
  <div class="col-sm-6 text-center align-self-center">
  <%if(rs.next()) 
  {%>
   <img src=<%=rs.getString(6) %> class="img-fluid img-thumbnail">
  </div>
  <div class="col-sm-5 offset-sm-1">
   <h2><%=rs.getString(2)%></h2>
   <hr>
   <p>Description:<%=rs.getString(3)%></p> <br>
   <form action="validateCart.jsp"method="post">
    <div class="form-group">
        <label>Renting Period</label>
        <select class="form-control" name=rmonth>
            <option value=1>
                1 Month
            </option>
            <option value=3>
                3 Months
            </option>
            <option value=6>
                6 Months
            </option>
            <option value=6>
                12 Months
            </option>
        </select>
    </div>
    <div class="form-group">
        <label>Quantity</label>
        <select class="form-control" name=qty>
            <option value=1>
                1
            </option>
            <option value=2>
                2
            </option>
            <option value=3>
                3
            </option>
            <option value=4>
                4
            </option>
            <option value=5>
            5
            </option>
        </select>
    </div>
    <div class="form-group">
    <label>Price</label>
   <input class="form-control" type="text" name="pprice"value=<%=rs.getFloat(5)%> style="border:none;" readonly/> <br>
   </div>
   <input type="text" name="semail" value=<%=rs.getString(1) %> style="display:none;"/>
   <input type="text" name="pname" value=<%=rs.getString(2) %> style="display:none;"/>
   <button type="submit" class="btn btn-primary shadow px-5 py-2">Add to Cart</button>
   </form>
  </div>
  <%} %>
 </div>
</div>
</body>
</html>