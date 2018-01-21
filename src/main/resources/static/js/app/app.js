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
                templateUrl: 'partials/list',
                controller:'UserController',
                controllerAs:'ctrl',
            })
            .state('home2', {
                url: '/users',
                templateUrl: 'partials/users',
                controller:'UserController',
                controllerAs:'ctrl',
            })
            .state('createOrder', {
            url: '/createOrder',
            templateUrl: 'partials/createOrder',
            controller:'UserController',
            controllerAs:'ctrl',
                /*resolve: {
                    users: function ($q, UserService) {
                        console.log('Load all users');
                        var deferred = $q.defer();
                        UserService.getAllOrder()
                            .then(deferred.resolve, deferred.resolve);
                        return deferred.promise;
                    }
                }*/
        });
        $urlRouterProvider.otherwise('/');
    }]);

