<!DOCTYPE html>

<html lang="en" ng-app="crudApp">
    <head>
        <title>${title}</title>
        <link rel="stylesheet" href="css/styles.css">
        <link href="css/app.css" rel="stylesheet"/>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- BOOTSTRAP -->
       <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/custom.css">
        <script src="js/lib/respond.min.js"></script>
    </head>
    <body>
    <header style="background-color:#2d52ff; color:white; padding: 15px 10px 15px 25px;font-family:serif">
        <div class="container">
            <h2> <span  class="glyphicon glyphicon-leaf"></span> Online Tracking System</h2>
        </div>
    </header>
        <div ui-view class="jumbotron" ></div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
        <script type="text/javascript" src="js/lib/myscripts.js"></script>
        <script src="js/lib/angular.min.js" ></script>
        <script src="js/lib/angular-ui-router.min.js" ></script>
        <script src="js/lib/localforage.min.js" ></script>
        <script src="js/lib/ngStorage.min.js"></script>
        <script src="js/app/app.js"></script>
        <script src="js/app/UserService.js"></script>
        <script src="js/app/UserController.js"></script>
        <div class="home-section">
            <ul class="menu-list">
                <li><a href="#/singUpUser">Sing Up</a></li>
            </ul>
        </div>
    <footer>
        <small>Copyright 2018 |<a href="#"> About Us</a>|<a href="#"> Contact </a>|<a href="#"> Feedback</a></small>
    </footer>
    </body>
</html>