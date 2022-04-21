 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/app/static/app/css/all.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<link rel="stylesheet" href="css/style.css"/>
<style>
.prev-account-item i{
    font-size: 4em;
   
}
.fa-cubes{
    color:#fbd885;
}
.fa-map-marker{
    color:#FFFF00;
}
.fa-cog{
    color:#48708d;
}
 .prev-account-item{
    box-shadow: 1px 1px 5px 1px #DADADA;
    margin: 5px;
    padding: 15px 10px;
    background-color: #fff;
    height: auto;
    border-radius: 5px;
    transition: .3s linear all;
    border: 1px solid #DADADA;
  }
/* Transition to a bigger shadow on hover */
.prev-account-item:hover {
background: #eee;
  
}
.prev-account-item a{
    color:inherit;
        text-decoration: none;
} 
.prev-account-item a:hover { 
    text-decoration: none;
}
</style>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="banncolor">
    <div class="container">
      <a class="navbar-brand" href="/">Tech Renting Website</a>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-white" href="#" id="electronicsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Mobile
            </a>
            <ul class="dropdown-menu" aria-labelledby="electronicsDropdown">
              <li><a class="dropdown-item" href="#">Smart Phone</a></li>
              <li><a class="dropdown-item" href="#">Tablet</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-white" href="#" id="fashionDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Gaming
            </a>
            <ul class="dropdown-menu" aria-labelledby="fashionDropdown">
              <li><a class="dropdown-item" href="#">Consoles</a></li>
              <li><a class="dropdown-item" href="#">Accessories</a></li>
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
               <li><a class="dropdown-item" href=""><%=name%></a></li>
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
    <div class="row">
    <br/>
        <br/>
    </div>
<div class="container">
<div class="m-3">
 <h2>Your Account</h2>
    <div class="row">
    <div class="col-md-3  prev-account-item">
        <a href="#">
        <div class="row">
            <div class="col-md-4 ">
             <i class="fa fa-cubes"></i>
            </div>
            <div class="col-md-8">
               <h3>Orders</h3>
               <p>Track,return or buy things again</p>
            </div>
        </div>
        </a>
    </div> 
        <div class="col-md-3 prev-account-item">
            <a href="#">
        <div class="row">
            <div class="col-md-4 ">
             <i class="fa fa-map-marker"></i>
            </div>
            <div class="col-md-8">
               <h3>Address</h3>
              <p>Edit addresses for orders</p>
            </div>
        </div>
        </a>
    </div> 
    
      <div class="col-md-3  prev-account-item">
            <a href="#">
        <div class="row">
            <div class="col-md-4 ">
             <i class="fa fa-cog"></i>
            </div>
            <div class="col-md-8">
              <h3>Login</h3>
             <p>Edit login,name,and mobile number</p>
            </div>
        </div>
        </a>
    </div> 
  </div>
</div>
</div>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>