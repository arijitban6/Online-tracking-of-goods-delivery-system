'use strict';

angular.module('crudApp').factory('UserService',
    ['$localStorage', '$http', '$q', 'urls','$window',
        function ($localStorage, $http, $q, urls,$window) {
            var factory = {
                loadAllOrders: loadAllOrders,
                getAllOrders: getAllOrders,
                getUser: getUser,
                getOrder: getOrder,
                createUser: createUser,
                login: login,
                placeOrder: placeOrder,
                upDateOrderStatus: upDateOrderStatus,
                loadOrder: loadOrder,
            };
             var count = 0;
            return factory;

            function loadAllOrders(uId) {
                console.log('Fetching all Orders');
                var deferred = $q.defer();
                var url = 'http://localhost:9999/api/getAllOrder/'+uId;
                console.log('uri to hit '+ url)
                $http.get(url)
                    .then(
                        function (response) {
                            console.log('Fetched successfully all users');
                            //$localStorage.orders = {};
                            $localStorage.orders = response.data;
                            deferred.resolve(response);
                            console.log(response.data);
                            console.log($localStorage.orders)
                            //return response.data;

                        },
                        function (errResponse) {
                            console.error('Error while loading users');
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function getAllOrders(){
                console.log("get all orders:XXX"+JSON.stringify($localStorage.orders));
                return $localStorage.orders;
            }

            function getUser(id) {
                console.log('Fetching User with id :'+id);
                var deferred = $q.defer();
                $http.get('http://localhost:9999/api/user/' + id)
                    .then(
                        function (response) {
                            console.log('Fetched successfully User with id :'+id);
                            deferred.resolve(response.data)
                            return response.data;
                        },
                        function (errResponse) {
                            console.error('Error while loading user with id :'+id);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function createUser(user) {
                console.log('Creating User');
                var deferred = $q.defer();
                $http.post('http://localhost:9999/api/user', user)
                    .then(
                        function (response) {
                            deferred.resolve(response.data);
                            console.log('data is'+JSON.stringify(response.data));
                            return response.data;
                        },
                        function (errResponse) {
                           console.error('Error while creating User : '+errResponse.data.errorMessage);
                           deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function login(user) {
                console.log('Login User  ');
                var deferred = $q.defer();
                $http.put('http://localhost:9999/api/login', user)
                    .then(
                        function (response) {
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            console.error('Error while updating User with id :'+errResponse.data);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function placeOrder(Order) {
                $window.localStorage.clear();
                console.log('Creating the order '+Order);
                var deferred = $q.defer();
                $http.post('http://localhost:9999/api/placeOrder',Order)
                    .then(
                        function (response) {
                           // loadAllUsers();
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            console.error('Error while removing User with id :'+id);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function upDateOrderStatus(orderId) {
                var deferred = $q.defer();
                if(count<4){
                    console.log('Updating Order ');
                    var deferred = $q.defer();
                    $http.patch('http://localhost:9999/api/upDateOrderStatus/'+orderId)
                        .then(
                            function (response) {
                                console.log('Order status updated ');
                                deferred.resolve(response.data);
                                count++;
                            },
                            function (errResponse) {
                                console.error('Error while updating Order with id :'+errResponse.data);
                                deferred.reject(errResponse);
                            }
                        );
                    return deferred.promise;
                }
                else{
                    return deferred.promise;
                }
            }

            function getOrder(id) {
                console.log('Fetching Order with id :'+id);
                var deferred = $q.defer();
                $http.get('http://localhost:9999/api/placeOrder/' + id)
                    .then(
                        function (response) {
                            console.log('Fetched successfully User with id :'+id);
                            $localStorage.order = response.data;
                            deferred.resolve(response.data)
                            return response.data;
                        },
                        function (errResponse) {
                            console.error('Error while loading user with id :'+id);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }


            function loadOrder(){
                console.log("get all orders:XXX"+JSON.stringify($localStorage.orders));
                return $localStorage.order;
            }
        }
    ]);