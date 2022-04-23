<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
  <title>Cheapsy</title>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="banncolor">
    <div class="container">
      <a class="navbar-brand" href="/">Cheapsy</a>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-white" href="#" id="electronicsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Listing
            </a>
            <ul class="dropdown-menu" aria-labelledby="electronicsDropdown">
              <li><a class="dropdown-item" href="#">My Listings</a></li>
              <li><a class="dropdown-item" href="#">Add New</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-white" href="#" id="fashionDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Orders
            </a>
            <ul class="dropdown-menu" aria-labelledby="fashionDropdown">
              <li><a class="dropdown-item" href="#">Active Orders</a></li>
              <li><a class="dropdown-item" href="#">Returns</a></li>
              <li><a class="dropdown-item" href="#">Cancellation</a></li>
            </ul>
          </li>
        </ul>
        <form class="d-flex">
          <div class="input-group">
            <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
            <button type="button" class="btn btn-outline-primary">search</button>
          </div>
        </form>
        <div>
         <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item dropdown mx-2">
             <a class="nav-link dropdown-toggle text-white" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
               Account
             </a>
             <%
             HttpSession ss=request.getSession(false);
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
   <br/><br/><br/><br/>
<div class="container">
<div class="row">
<div class="col-md-8">
<div class="card">
  <h5 class="card-header">Orders</h5>
  <div class="card-body text-center">
  <div class="row">
        <div class="col-md-4">
      <div class="col-md-4">
     1
    </div>
    <div class="col-md-4">
      <a href="#">Order</a>
    </div>
    </div>
        <div class="col-md-4">
      <div class="col-md-4">
     1
    </div>
    <div class="col-md-4">
      <a href="#">Shipped</a>
    </div>
    </div>
    <div class="col-md-4">
      <div class="col-md-4">
     1
    </div>
    <div class="col-md-4">
     <a href="#"> Cancelled</a>
    </div>
    </div>
  </div>
  </div>
  </div>
  </div>
</div>
<br/>
<div class="row">
<div class="col-md-8">
<div class="card">
  <h5 class="card-header">Listings</h5>
  <div class="card-body text-center">
  <div class="row">
        <div class="col-md-4">
      <div class="col-md-4">
     1
    </div>
    <div class="col-md-4">
     <a href="#">Active</a>
    </div>
    </div>
        <div class="col-md-4">
      <div class="col-md-4">
     1
    </div>
    <div class="col-md-5">
      <a href="#">Out Of Stock</a>
    </div>
    </div>
  </div>
  </div>
  </div>
  </div>
</div>
<br/>
<div class="row">
<div class="col-md-8">
<div class="card">
  <h5 class="card-header">Orders</h5>
  <div class="card-body text-center">
  <div class="row">
        <div class="col-md-4">
      <div class="col-md-4">
     1
    </div>
    <div class="col-md-4">
      Order
    </div>
    </div>
  </div>
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