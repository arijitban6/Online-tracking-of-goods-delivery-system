<!DOCTYPE html>

<html lang="en" ng-app="crudApp">
    <head>
        <title>${title}</title>
        <link rel="stylesheet" href="css/styles.css">
        <link href="css/app.css" rel="stylesheet"/>
        <link href="css/bootstrap.css" rel="stylesheet"/>
    </head>
    <body>
        <div ui-view></div>
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

    </body>
</html>