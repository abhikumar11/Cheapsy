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
    <div class="row m-3">
    <img src="images/banner/b1.jpg" class="img-fluid" alt="Placeholder image">
    </div>
<div class="m-3">
 <h2>Laptop</h2>
  <div class="row">
   <%
      String query="select * from product_details where categoery='Laptop' limit 4";
       ResultSet rs=DbConnect.fetchData(query);
       while(rs.next())
       {%>
      <div class="col-md-3 col-sm-6">
          <div class="product-grid4">
              <div class="product-image4">
                  <a>
                      <img class="pic-1" src=<%=rs.getString(6) %>>
                  </a>
              </div>
              <div class="product-content">
                  <h2 class="title"><%=rs.getString(2)%></h2>
                  <div class="price">
                      <b>&#8377;<%=rs.getFloat(5)%>&nbsp;</b><small>Per Month</small>
                  </div>
                <a class="add-to-cart" href="productdetail.jsp?title=<%=rs.getString(2)%>">View Details</a>
              </div>
          </div>
          </div>
         <%}%>
      </div>
</div>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>