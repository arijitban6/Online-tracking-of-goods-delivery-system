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
                    <h4>Order Id &emsp; &emsp; &emsp;&emsp; &emsp;: {{response.orderId}}</h4>
                    <h4>Item Name &emsp; &emsp; &emsp;&emsp;&ensp;: {{response.item.name}}</h4>
                    <h4>Order Price &emsp; &emsp; &emsp;&emsp;: {{response.item.price}}</h4>
                    <div class="readonly_label">
                        <h4  id="field-function_purpose">Order Status &emsp; &emsp; &emsp;&emsp;: {{response.orderStatus}}</h4>
                    </div>
                    <h4>Recipient Name &emsp; &emsp; &ensp;: {{response.deliveryAddress.name}}</h4>
                    <#--<h4>Recipient Contact No.&ensp;: {{response.deliveryAddress.phoneNumber}}</h4>-->
                    <h4>Recipient Full Address : {{response.deliveryAddress.address}}, {{response.deliveryAddress.location}}, {{response.deliveryAddress.city}}, {{response.deliveryAddress.state}}</h4>
                    <h4>LandMark&emsp; &emsp; &emsp;&emsp; &emsp;:{{response.deliveryAddress.landmark}}</h4>
                    <h4>Pincode&emsp; &emsp; &emsp;&emsp; &emsp;&emsp;:{{response.deliveryAddress.pinCode}}</h4>

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
                    <div align="center">
                        <a href="http://localhost:9999/" class="btn btn-info btn-sm" >
                            <span class="glyphicon glyphicon-thumbs-up"></span> Click to place new order / review previous order
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>