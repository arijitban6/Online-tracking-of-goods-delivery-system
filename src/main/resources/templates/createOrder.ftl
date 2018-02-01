<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">User </span></div>
        <div class="panel-body">
            <div class="formcontainer">
                <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
                <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
                <form ng-submit="ctrl.submitOrder()" name="myForm" class="form-horizontal">
                    <input type="hidden" ng-model="ctrl.user.id" />
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Name</label>
                            <div class="col-md-7">
                                <select class="Last Name form-control input-sm" ng-model="ctrl.item" ng-options="'Product: '+y.name+ ' Price: '+ y.price  for y in items">
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">address</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.address" id="address" class="Last Name form-control input-sm" placeholder="Enter your address" required ng-minlength="3"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Name</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.name" id="name" class="Last Name form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">location</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.location" id="lastName" class="Last Name form-control input-sm" placeholder="Enter your location" required ng-minlength="3"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">state</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.state" id="state" class="Last Name form-control input-sm" placeholder="Enter your state" required ng-minlength="3"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">phoneNumber</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.phoneNumber" id="phoneNumber" class="Last Name form-control input-sm" placeholder="Enter your phoneNumber" required ng-minlength="3"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">city</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.city" id="city" class="Last Name form-control input-sm" placeholder="Enter your city" required ng-minlength="3"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">landmark</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.landmark" id="landmark" class="Last Name form-control input-sm" placeholder="Enter your landmark" required ng-minlength="3"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">pinCode</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.pinCode" id="pinCode" class="Last Name form-control input-sm" placeholder="Enter your pinCode" required ng-minlength="3"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-actions floatRight">
                            <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" >
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of Orders </span></div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>STATUS</th>
                        <th>DATE</th>
                        <th>SALARY</th>
                        <th width="100"></th>
                        <th width="100"></th>
                    </tr>
                    </thead>
                    <tbody>
                       <tr ng-repeat="order in ctrl.getAllOrder().orderEntities">
                            <td>{{order.orderId}}</td>
                            <td>{{order.orderStatus}}</td>
                            <td>{{order.orderDate}}</td>
                        <#-- <td>{{u.salary}}</td>-->
                            <td><button type="button" ng-click="ctrl.checkOrderStatus(order.orderId)" class="btn btn-success custom-width">Check Status</button></td>
                       </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>