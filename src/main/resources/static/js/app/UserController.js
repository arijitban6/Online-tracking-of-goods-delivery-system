'use strict';

angular.module('crudApp').controller('UserController',
    ['UserService', '$scope','$location','$window',  function( UserService, $scope, $location,$window) {

        var self = this;
        self.user = {};
        self.orders={};
        self.item = {};
        self.users=[];
        $scope.items = {
            item01 : {id: "I123", price: 12, name: "Item Name1", description: "Item Description1"},
            item02 : {id: "I101", price: 12, name: "Item Name2", description: "Item Description2"},
            item03 : {id: "I102", price: 12, name: "Item Name3", description: "Item Description3"},
            item04 : {id: "I103", price: 12, name: "Item Name4", description: "Item Description4"},
            item05 : {id: "I104", price: 12, name: "Item Name5", description: "Item Description5"},
        }
        self.submit = submit;
        self.submitOrder = submitOrder;
        self.getAllOrder = getAllOrder;
        self.createUser = createUser;
        self.updateUser = updateUser;
        self.createOrder = createOrder;
        self.editUser = editUser;
        self.reset = reset;

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
            console.log('Submitting Order');
            console.log('Saving New User', self.item);
            createOrder(self.item);
        }

        function createUser(user) {
            console.log('About to create user');
            UserService.createUser(user)
                .then(
                    function (response) {
                        console.log('User created successfully');
                        self.successMessage = 'User created successfully';
                        self.errorMessage='';
                        self.done = true;
                        self.user={};
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


        function updateUser(user, id){
            console.log('About to update user');
            UserService.updateUser(user, id)
                .then(
                    function (response){
                        console.log('User updated successfully');
                        self.successMessage='User updated successfully';
                        self.errorMessage='';
                        self.done = true;
                        $scope.myForm.$setPristine();
                    },
                    function(errResponse){
                        console.error('Error while updating User');
                        self.errorMessage='Error while updating User '+errResponse.data;
                        self.successMessage='';
                    }
                );
        }


        function createOrder(item){
            console.log('About to create order ');
            var userId= sessionStorage.getItem("emp-key");
            userId =  userId.substring(1, userId.length - 1);
            UserService.getUser(userId)
                .then(
                    function (response) {
                       var order={
                            orderId: '1',
                            item: item,
                            user : response,
                            orderDate: '2018-01-13',
                            orderStatus: 'OrderPlaced'
                        };
                        UserService.placeOrder(order)
                            .then(
                                function(){
                                    console.log('Order created successfully');
                                    UserService.loadAllOrders(userId);
                                },
                                function(errResponse){
                                    console.error('Error while creating order, Error :'+errResponse.data);
                                }
                            );
                    }
                );
        }


        function getAllOrder(){
            var userId= sessionStorage.getItem("emp-key");
            userId =  userId.substring(1, userId.length - 1);
            console.log('Get All User');
            var  response = UserService.getAllOrders(userId);
            console.log('All Orders: '+JSON.stringify(response));
            return response;
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
        function reset(){
            self.successMessage='';
            self.errorMessage='';
            self.user={};
            $scope.myForm.$setPristine(); //reset Form
        }
    }


    ]);