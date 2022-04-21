<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
      
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
      
        <!--Owl Carousel CSS-->
        <link rel="stylesheet" href="/app/static/app/css/owl.carousel.min.css">
      
        <!--FontAwesome CSS-->
        <link rel="stylesheet" href="/app/static/app/css/all.min.css">
      
        <!--Custom CSS-->
        <link rel="stylesheet" href="css/style.css">
		<script src="validate.js"></script>
        <title>Tech Renting Website</title>
      </head>
    <body>
        <div class="container login-container">
            <div class="row">
                <div class="panel panel-primary">
                    <div class="panel-body">
                        <form method="POST"  role="form" class="login-form" action="saveUser.jsp" name="signup" onsubmit="return validateForm()">
                            <div class="form-group">
                                <h3 class="h3">Create Account</h3>
                            </div>
                            <div class="form-group">
                                <label>Your Name</label>
                                <input id="signinName" name="userName"type="text" maxlength="50"  class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Email or mobile phone number</label>
                                <input id="signinEmail" type="email" maxlength="50" name="userId" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input id="signinPassword" type="password" name="password" maxlength="25" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Re-Password</label>
                                <input id="signinPassword" type="password" name="repass"maxlength="25" class="form-control">
                            </div>
                            <div class="form-group" style="padding-top: 12px;">
                                <button id="signinSubmit" type="submit" class="btn btn-primary btn-block signin-btn">Create Account</button>
                            </div>
                            <div class="form-group divider">
                                <hr class="lefta"><small>OR</small><hr class="right">
                            </div>
                            <p class="form-group"><a href="login.html" class="btn btn-primary btn-block signup-btn">Sign In</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>