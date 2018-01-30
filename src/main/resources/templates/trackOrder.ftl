<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">User </span></div>
        <div class="panel-body">
            <div class="formcontainer">
                <div id = "mydiv" class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
                <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
               <#-- <div class="alert alert-success" role="alert"  ng-value="ctrl.loadOrder">{{ctrl.order()}}</div>-->
                <div ng-init="ctrl.loadOrder()">
                    <h3>{{response.orderId}}</h3>
                    <h3>{{response.item.price}}</h3>
                    <h3>{{response.item.name}}</h3>
                    <h3>{{response.orderStatus}}</h3>
                    <h3>{{response.deliveryAddress.address}}</h3>
                    <h3>{{response.deliveryAddress.location}}</h3>
                    <div class="progress" id="your-div">
                        <div class="circle">
                            <span class="label">1</span>
                            <span class="title">OrderPlaced</span>
                        </div>
                        <span class="bar"></span>
                        <div class="circle">
                            <span class="label">2</span>
                            <span class="title">Shipped</span>
                        </div>
                        <span class="bar"></span>
                        <div class="circle">
                            <span class="label">3</span>
                            <span class="title">OutForDelivery</span>
                        </div>
                        <span class="bar"></span>
                        <div class="circle">
                            <span class="label">4</span>
                            <span class="title">Delivered</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>