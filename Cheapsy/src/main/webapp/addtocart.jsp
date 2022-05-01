<%@page import="com.database.DbConnect" %>
<%@page import="java.sql.ResultSet" %>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
  <title>Tech Renting Website</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="banncolor">
    <div class="container">
      <a class="navbar-brand" href="/">Tech Renting Website</a>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-white" href="#" id="electronicsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Categories
            </a>
            <ul class="dropdown-menu" aria-labelledby="electronicsDropdown">
              <li><a class="dropdown-item" href="#">Smart Phone</a></li>
              <li><a class="dropdown-item" href="#">Laptop</a></li>
              <li><a class="dropdown-item" href="#">Gaming</a></li>
            </ul>
          </li>
        </ul>
        <div>
          <ul class="nav navbar-nav navbar-right">
                 <%
             HttpSession ss=request.getSession(false);
             if(ss.getAttribute("username")==null)
             {%>
         <li class="nav-item mx-2"><a class="nav-link text-white" href="sellerHome.jsp">Become Seller</a></li>
       <%} %>
       <%
             if(ss.getAttribute("username")!=null)
             {%>
        <li class="nav-item mx-2"><a class="nav-link text-white" href="addtocart.jsp">Cart</a></li>
        <%} %>
          <li class="nav-item dropdown mx-2">
              <a class="nav-link dropdown-toggle text-white" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
               Account
             </a>
             <%
             
             if(ss.getAttribute("username")==null)
             {%>
           <ul class="dropdown-menu" aria-labelledby="profileDropdown">
               <li><a class="dropdown-item" href="login.jsp">Login</a></li>
               <li><a class="dropdown-item" href="signup.jsp">Create Account</a></li>
             <%}
             else
             {%>
            <ul class="dropdown-menu" aria-labelledby="profileDropdown">
            <%
            ss.setAttribute("loginvalue",1);
            String name=String.valueOf(ss.getAttribute("username")); %>
               <li><a class="dropdown-item" href="profile.jsp"><%=name%></a></li>
               <li><a class="dropdown-item" href="{% url 'orders' %}">Orders</a></li>
               <li><a class="dropdown-item" href="loginUser.jsp">Logout</a></li>
             </ul>
     
             <%}%>

            </li>
         </ul>
        </div>
      </div>
    </div>
   </nav>


  <div class="container my-5">
 <div class="row">
  <h1 class="text-center mb-5">Shopping Cart</h1>
  <div class="col-sm-8">
<table class="table">
  <thead>
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

  <div class="col-sm-4">
   <div class="card">
    <div class="card-body">
      <h3>The Total Amount of</h3>
      <ul class="list-group">
       <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">Amount<span><%=total %></span></li>
       <li class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
        <div>
           <strong>Total</strong>
         </div>
         <span><strong><%=total %></strong></span>
       </li>
      </ul>
      <div class="d-grid"><a href="checkout.jsp" class="btn btn-primary">Check Out</a></div>
    </div>
   </div>
  </div>
 </div>
</div>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
  <script src="/app/static/app/js/owl.carousel.min.js"></script>
  <script src="/app/static/app/js/all.min.js"></script>
  <script src="/app/static/app/js/myscript.js"></script>
</body>