'use strict';

angular.module('crudApp').factory('UserService',
    ['$localStorage', '$http', '$q', 'urls',
        function ($localStorage, $http, $q, urls) {

            var factory = {
                loadAllOrders: loadAllOrders,
                getAllOrders: getAllOrders,
                getUser: getUser,
                createUser: createUser,
                updateUser: updateUser,
                placeOrder: placeOrder
            };

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
                            $localStorage.orders = {};
                            $localStorage.orders = response.data;
                            //deferred.resolve(response);
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

            function updateUser(user, id) {
                console.log('Updating User with id '+id);
                var deferred = $q.defer();
                $http.put(urls.USER_SERVICE_API + id, user)
                    .then(
                        function (response) {
                            loadAllUsers();
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            console.error('Error while updating User with id :'+id);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function placeOrder(Order) {
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

        }
    ]);