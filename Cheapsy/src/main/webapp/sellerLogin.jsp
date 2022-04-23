<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <title>Cheapsy</title>
      </head>
    <body>
        <div class="container login-container">
            <div class="row">
                <div class="panel panel-primary">
                    <div class="panel-body">
                        <form method="POST" action="loginUser.jsp" role="form" class="login-form">
                            <div class="form-group">
                                <h3 class="h3">Sign in</h3>
                            </div>
                            <div class="form-group">
                                <label>Email or mobile phone number</label>
                                <input id="signinEmail" type="email" name="userName" maxlength="50" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <span class="right"><a href="#">Forgot your password?</a></span>
                                <input id="signinPassword" type="password" name="password" maxlength="25" class="form-control">
                            </div>
                            <div class="form-group" style="padding-top: 12px;">
                                <button id="signinSubmit" type="submit" class="btn btn-primary btn-block signin-btn">Sign in</button>
                            </div>
                            <div class="form-group divider">
                                <hr class="left"><small>OR</small><hr class="right">
                            </div>
                            <p class="form-group"><a href="signup.jsp" class="btn btn-primary btn-block signup-btn">Create an account</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    
</html>