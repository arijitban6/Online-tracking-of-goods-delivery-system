var app = angular.module('crudApp',['ui.router','ngStorage']);

app.constant('urls', {
    BASE: 'https://online-tracking-system.herokuapp.com/',
});

app.config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'partials/logIn',
                controller:'UserController',
                controllerAs:'ctrl',
                resolve: {
                     function (UserService) {
                        console.log('Load all users');
                        UserService.clearAll();
                    }
                }
            })
            .state('createOrder', {
            url: '/createOrder',
            templateUrl: 'partials/createOrder',
            controller:'UserController',
            controllerAs:'ctrl',
            })
            .state('singUp',{
                url: '/singUpUser',
                templateUrl: 'partials/singUp',
                controller:'UserController',
                controllerAs:'ctrl',
            })
            .state('trackOrder', {
            url: '/trackOrder',
            templateUrl: 'partials/trackOrder',
            controller:'UserController',
            controllerAs:'ctrl',
        })
        ;
        $urlRouterProvider.otherwise('/');
    }]);

