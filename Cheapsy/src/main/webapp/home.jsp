<head>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/app/static/app/css/all.min.css">

  <!--Custom CSS-->
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
    <!--banner image-->
    <img src="images/banner/b1.jpg" class="img-fluid" alt="Placeholder image">
    </div>
<div class="m-3">
 <h2>Deals of The Day</h2>
  <div class="row">
      <div class="col-md-3 col-sm-6">
          <div class="product-grid4">
              <div class="product-image4">
                  <a>
                      <img class="pic-1" src="https://www.w3schools.com/bootstrap4/img_avatar3.png">
                  </a>
              </div>
              <div class="product-content">
                  <h3 class="title"><a href="#">Women's Black Top</a></h3>
                  <div class="price">
                      $14.40
                      <span>$16.00</span>
                  </div>
                  <a class="add-to-cart" href="">View Details</a>
              </div>
          </div>
      </div>
      <div class="col-md-3 col-sm-6">
          <div class="product-grid4">
              <div class="product-image4">
                  <a>
                      <img class="pic-1" src="https://www.w3schools.com/bootstrap4/img_avatar3.png">
                  </a>
              </div>
              <div class="product-content">
                  <h3 class="title"><a href="#">Men's Blue Shirt</a></h3>
                  <div class="price">
                      $17.60
                      <span>$20.00</span>
                  </div>
                  <a class="add-to-cart" href="">ADD TO CART</a>
              </div>
          </div>
      </div>
      <div class="col-md-3 col-sm-6">
          <div class="product-grid4">
              <div class="product-image4">
                  <a>
                      <img class="pic-1" src="https://www.w3schools.com/bootstrap4/img_avatar3.png">
                  </a>
              </div>
              <div class="product-content">
                  <h3 class="title"><a href="#">Women's Black Top</a></h3>
                  <div class="price">
                      $14.40
                      <span>$16.00</span>
                  </div>
                  <a class="add-to-cart" href="">ADD TO CART</a>
              </div>
          </div>
      </div>
      <div class="col-md-3 col-sm-6">
          <div class="product-grid4">
              <div class="product-image4">
                  <a>
                      <img class="pic-1" src="https://www.w3schools.com/bootstrap4/img_avatar3.png">
                  </a>
              </div>
              <div class="product-content">
                  <h3 class="title"><a href="#">Women's Black Top</a></h3>
                  <div class="price">
                      $14.40
                      <span>$16.00</span>
                  </div>
                  <a class="add-to-cart" href="">ADD TO CART</a>
              </div>
          </div>
      </div>
  </div>
</div>
<div class="mx-3">
 <h2>Trending Deals</h2>
 <div class="row">
  <div class="col-md-3 col-sm-6">
      <div class="product-grid4">
          <div class="product-image4">
              <a>
                  <img class="pic-1" src="https://www.w3schools.com/bootstrap4/img_avatar3.png">
              </a>
          </div>
          <div class="product-content">
              <h3 class="title"><a href="#">Women's Black Top</a></h3>
              <div class="price">
                  $14.40
                  <span>$16.00</span>
              </div>
              <a class="add-to-cart" href="">ADD TO CART</a>
          </div>
      </div>
  </div>
  <div class="col-md-3 col-sm-6">
      <div class="product-grid4">
          <div class="product-image4">
              <a href="#">
                  <img class="pic-1" src="https://www.w3schools.com/bootstrap4/img_avatar3.png">
              </a>
          </div>
          <div class="product-content">
              <h3 class="title"><a href="#">Men's Blue Shirt</a></h3>
              <div class="price">
                  $17.60
                  <span>$20.00</span>
              </div>
              <a class="add-to-cart" href="">ADD TO CART</a>
          </div>
      </div>
  </div>
  <div class="col-md-3 col-sm-6">
      <div class="product-grid4">
          <div class="product-image4">
              <a>
                  <img class="pic-1" src="https://www.w3schools.com/bootstrap4/img_avatar3.png">
              </a>
          </div>
          <div class="product-content">
              <h3 class="title"><a href="#">Women's Black Top</a></h3>
              <div class="price">
                  $14.40
                  <span>$16.00</span>
              </div>
              <a class="add-to-cart" href="">ADD TO CART</a>
          </div>
      </div>
  </div>
  <div class="col-md-3 col-sm-6">
      <div class="product-grid4">
          <div class="product-image4">
              <a href="#">
                  <img class="pic-1" src="https://www.w3schools.com/bootstrap4/img_avatar3.png">
              </a>
          </div>
          <div class="product-content">
              <h3 class="title"><a href="#">Women's Black Top</a></h3>
              <div class="price">
                  $14.40
                  <span>$16.00</span>
              </div>
              <a class="add-to-cart" href="">ADD TO CART</a>
          </div>
      </div>
  </div>
</div>
  
</div>
<footer class="container-fluid bg-dark text-center p-2 mt-5">
  <img src="/app/static/app/images/payment.png" alt="" srcset="" class="img-fluid" height="2px">
</footer>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
  <script src="/app/static/app/js/owl.carousel.min.js"></script>
  <script src="/app/static/app/js/all.min.js"></script>
  <script src="/app/static/app/js/myscript.js"></script>
</body>