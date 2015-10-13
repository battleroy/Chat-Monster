<!DOCTYPE html>
<html>
    <head>
       <title>Log In</title>
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link href="../../static/css/bootstrap.min.css" rel="stylesheet">
       <link href="../../static/css/app.css" rel="stylesheet">
       <script src="https://code.jquery.com/jquery.js"></script>
       <script src="../../static/js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class="container">
            <nav class="navbar navbar-default">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img src="../../static/images/logo.png" alt="Workout Monster">
                    </a>
                </div>
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="search" class="form-control form-search" placeholder="Minsk, BY">
                    </div>
                    <button class="btn btn-primary" type="submit">Search for spots!</button>
                </form>
                <form class="pull-right">
                    <button type="button" class="navbar-btn btn btn-primary">Sign Up</button>
                </form>
            </nav>
            <div class="page-header">
                <h1>Logging in <small>Or you can sign up, if you are not with us yet.</small></h1>
            </div>
            <div class="row">
                <div class="col-md-4 col-md-push-4">
                    <form>
                        <div class="form-group">
                            <label for="inputLogin">Login</label>
                            <input type="text" class="form-control" id="inputLogin" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword">Password</label>
                            <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>            
        </div>
        <footer class="navbar navbar-default navbar-fixed-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 sitemap">
                        <h4>Sitemap</h4>
                        <a href="#">Home</a>
                        <a href="#">About</a>
                        <a href="#">Contact</a>
                    </div>
                    <div class="col-md-4 social">
                    </div>
                    <div class="col-md-3 col-md-push-2 footer-logo">
                        <a href="/"><img src="../../static/images/logo.png" alt="Workout Monster"></a>
                        <p>
                            Copyright 2015 Yauheni Chasavitsin. <span class="glyphicon glyphicon-menu-right"></span><a href="http://github.com/battleroy"> GitHub</a>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>