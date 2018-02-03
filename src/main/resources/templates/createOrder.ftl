<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">Create Order </span>
            <a href="#/" class="btn btn-info btn-sm iconRight" >
                 <span class="glyphicon glyphicon-off"></span> Logout
            </a></div>
        <div class="panel-body">
            <div class="formcontainer">
                <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
                <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
                <form ng-submit="ctrl.submitOrder()" name="myForm" class="form-horizontal">
                    <input type="hidden" ng-model="ctrl.user.id" />
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Select Item</label>
                            <div class="col-md-7">
                                <select class="Last Name form-control input-sm" ng-model="ctrl.item" ng-options="'Product: '+y.name+ ' Price: '+ y.price  for y in items">
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Street Address</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.address" id="address" class="Last Name form-control input-sm" placeholder="Flat / House No. / Floor / Building" required/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Recipient Full Name</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.name" id="name" class="Last Name form-control input-sm" placeholder="Enter full name of recipient" required/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Location</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.location" id="lastName" class="Last Name form-control input-sm" placeholder="Colony name / area name etc." required/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">State</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.state" id="state" class="Last Name form-control input-sm" placeholder="Enter your State" required/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Mobile Number</label>
                            <div class="col-md-7">
                                <input type="number" ng-model="ctrl.deliveryAddress.PhoneNumber" id="PhoneNumber" class="Last Name form-control input-sm" placeholder="10-digit mobile number without prefix" required ng-minlength="10" ng-maxlength="10"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">City</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.city" id="city" class="Last Name form-control input-sm" placeholder="E.g. Guwahati,Kolkata,Mumbai,..etc.  " required/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Landmark</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.deliveryAddress.landmark" id="landmark" class="Last Name form-control input-sm" placeholder="E.g. Near AIIMS Flyover, Behind Regal Cinema,etc." required/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Pincode</label>
                            <div class="col-md-7">
                                <input type="number" ng-model="ctrl.deliveryAddress.pinCode" id="pinCode" class="Last Name form-control input-sm" placeholder="7 digits[0-9] delivery address pincode" required ng-minlength="7"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-actions" align="center">
                            <input type="submit"  value="{{!ctrl.user.id ? 'Place Order' : 'Update'}}" class="btn btn-primary btn-sm" >
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