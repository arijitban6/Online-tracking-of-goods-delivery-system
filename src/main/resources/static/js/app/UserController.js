'use strict';

angular.module('crudApp').controller('UserController',
    ['UserService', '$scope','$location','$window', '$localStorage', function( UserService, $scope, $location,$window,$localStorage) {
        //$window.localStorage.clear();
        var self = this;
        self.user = {};
        self.login = {};
        self.orders=[];
        self.item = {};
        self.users=[];
        self.orderId={};
        self.order={};
        self.deliveryAddress={};

        $scope.items = {
            item01 : {id: "I123", price: 12, name: "Item Name1", description: "Item Description1"},
            item02 : {id: "I101", price: 12, name: "Item Name2", description: "Item Description2"},
            item03 : {id: "I102", price: 12, name: "Item Name3", description: "Item Description3"},
            item04 : {id: "I103", price: 12, name: "Item Name4", description: "Item Description4"},
            item05 : {id: "I104", price: 12, name: "Item Name5", description: "Item Description5"},
        }

        self.submit = submit;
        self.submitOrder = submitOrder;
        self.doLogIn = doLogIn;
        self.getAllOrder = getAllOrder;
        self.createUser = createUser;
        self.logIn = logIn;
        self.getOrder = getOrder;
        self.createOrder = createOrder;
        self.editUser = editUser;
        self.reset = reset;
        self.doUpDateOrderStatus = doUpDateOrderStatus;
        self.checkOrderStatus = checkOrderStatus
        self.loadOrder = loadOrder
        self.changeOrderStatus = changeOrderStatus
        self.clearAll = clearAll

        self.successMessage = '';
        self.errorMessage = '';
        self.done = false;

        self.onlyIntegers = /^\d+$/;
        self.onlyNumbers = /^\d+([,.]\d+)?$/;

        function submit() {
            console.log('Submitting');
            console.log('Saving New User', self.user);
            createUser(self.user);
        }
        function submitOrder() {
            console.log('Saving New Order', self.item);
            createOrder(self.item,self.deliveryAddress);
        }
        function doLogIn() {
            console.log('Saving login', self.login);
            logIn(self.login);
        }

        function doUpDateOrderStatus(){
            console.log('Saving orderId', self.order);
            upDateOrder(self.order);
        }

        function checkOrderStatus(orderID){
            $window.location.href = "#/trackOrder";
            console.log('checking order status of: ', orderID);
            getOrder(orderID)
        }


        function createUser(user) {
            console.log('About to create user');
            UserService.createUser(user)
                .then(
                    function (response) {
                        console.log('User created successfully');
                        self.successMessage = 'User created successfully';
                        $scope.myForm.$setPristine();
                        sessionStorage.setItem("emp-key", JSON.stringify(user['email']));
                        $window.location.href = "#/createOrder";
                    },
                    function (errResponse) {
                        console.error('Error while creating User');
                        self.errorMessage = 'Error while creating User: ' + errResponse.data.errorMessage;
                        self.successMessage='';
                    }
                );
        }


        function logIn(login){
            console.log('About to update user');
            UserService.login(login)
                .then(
                    function (response){
                        /*console.log('User updated successfully');
                        self.successMessage='User updated successfully';
                        self.errorMessage='';
                        self.done = true;
                        $scope.myForm.$setPristine();*/
                        sessionStorage.setItem("emp-key", JSON.stringify(login['email']));
                        self.orders = UserService.loadAllOrders(login['email']);
                        $window.location.href = "#/createOrder";

                    },
                    function(errResponse){
                        console.error('Error while updating User');
                        self.errorMessage='Error while updating User '+errResponse.data;
                        self.successMessage='';
                    }
                );
        }


        function createOrder(item,deliveryAddress){
            console.log('About to create order '+ JSON.stringify(item));
            var userId= sessionStorage.getItem("emp-key");
            userId =  userId.substring(1, userId.length - 1);
            UserService.getUser(userId)
                .then(
                    function (response) {
                       var order={
                            item: item,
                            user : response,
                           deliveryAddress : deliveryAddress,
                            orderDate: '2018-01-13',
                            orderStatus: 'OrderPlaced'
                        };
                        UserService.placeOrder(order)
                            .then(
                                function(){
                                    console.log('Order created successfully');
                                    self.orders = UserService.loadAllOrders(userId);
                                },
                                function(errResponse){
                                    console.error('Error while creating order, Error :'+errResponse.data);
                                }
                            );
                    }
                );
        }



  /*      function upDateOrder(orderId){
            console.log('About to update order '+ JSON.stringify(orderId));
            UserService.upDateOrderStatus(orderId)
                .then(
                    function (response) {
                        console.log('Order Updated successfully')

                    },function(errResponse){
                        console.error('Error while updating order, Error :'+errResponse.data);
                    }
                );
        }*/


        function getAllOrder(){
            console.log('Get All Orders');
            var  response = UserService.getAllOrders();
            console.log('All Orders: '+JSON.stringify(response));
            return response;
        }

        function getOrder(orderId) {
            self.successMessage='';
            self.errorMessage='';
           // var deferred = $q.defer();
            UserService.getOrder(orderId).then(
                function (response) {
                    /*self.successMessage='User updated successfully';
                    self.done = true;
                    self.order = response;
                    console.log(self.order);
                    console.log(response);*/
                    $localStorage.order = response;
                    sessionStorage.setItem("order-key", JSON.stringify(orderId));
                    //deferred.resolve(response);
                    //return self.order;
                },
                function (errResponse) {
                    console.error('Error while removing user ' + id + ', Error :' + errResponse.data);
                }
            );
        }

        function loadOrder(){
            console.log('Get All Orders');
            $scope.response = UserService.loadOrder();
            console.log('All Orders: '+JSON.stringify($scope.response));
            return $scope.response;
        }

        function editUser(id) {
            self.successMessage='';
            self.errorMessage='';
            UserService.getUser(id).then(
                function (user) {
                    self.user = user;
                },
                function (errResponse) {
                    console.error('Error while removing user ' + id + ', Error :' + errResponse.data);
                }
            );
        }

        function changeOrderStatus() {
            self.successMessage='';
            self.errorMessage='';
            var orderId = sessionStorage.getItem("order-key");
            console.info(orderId)
            orderId =  orderId.substring(1, orderId.length - 1);
            UserService.upDateOrderStatus(orderId).then(
                function (user) {
                    //self.user = user;
                    console.info('updated');
                },
                function (errResponse) {
                    console.error('Error while removing user ' + id + ', Error :' + errResponse.data);
                }
            );
        }

        function reset(){
            self.successMessage='';
            self.errorMessage='';
            self.user={};
            $scope.myForm.$setPristine(); //reset Form
        }

        function clearAll(){
            UserService.clearAll();
            self.successMessage='';
            self.errorMessage='';
            self.user={};
            $window.localStorage.clear();
            sessionStorage.empty();
            $scope.myForm.$setPristine(); //reset Form
        }
    }


    ]);