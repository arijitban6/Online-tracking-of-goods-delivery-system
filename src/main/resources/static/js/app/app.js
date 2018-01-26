var app = angular.module('crudApp',['ui.router','ngStorage']);

app.constant('urls', {
    BASE: 'http://localhost:8080/SpringBootCRUDApp',
    USER_SERVICE_API : 'http://localhost:9999/api/user/'
});

app.config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'partials/logIn',
                controller:'UserController',
                controllerAs:'ctrl',
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

