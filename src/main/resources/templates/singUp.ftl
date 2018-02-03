<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">Sign-Up /  Register</span></div>
		<div class="panel-body">
	        <div class="formcontainer">
	            <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
	            <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
	            <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
	                <input type="hidden" ng-model="ctrl.user.id" />
	                <div class="row">
	                    <div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="uname">First Name <em>*</em></label>
	                        <div class="col-md-7">
	                            <input type="text" ng-model="ctrl.user.firstName" id="firstName" class="First Name form-control input-sm" placeholder="Enter your first name"/>
	                        </div>
	                    </div>
	                </div>
					<div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="uname">Last Name <em>*</em></label>
	                        <div class="col-md-7">
	                            <input type="text" ng-model="ctrl.user.lastName" id="lastName" class="Last Name form-control input-sm" placeholder="Enter your last name"/>
	                        </div>
	                    </div>
	                </div>

	                <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="age">Phone Number <em>*</em></label>
	                        <div class="col-md-7">
	                            <input type="number" ng-model="ctrl.user.phoneNumber" id="phoneNumber" class="form-control input-sm" placeholder="10-digit mobile number without prefix" required ng-pattern="ctrl.onlyIntegers" ng-minlength="10" ng-maxlength="10"/>
	                        </div>
	                    </div>
	                </div>
	
	                <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="salary">Email <em>*</em></label>
	                        <div class="col-md-7">
	                            <input type="email" ng-model="ctrl.user.email" id="email" class="form-control input-sm" placeholder="Enter your email-id. | e.g. abc@xyz" required/>
	                        </div>
	                    </div>
	                </div>

	                <div class="row">
	                    <div class="form-actions" align="center">
	                        <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid || myForm.$pristine">
	                        <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                            <#--<button type="button" ng-click="ctrl.editUser('asd')" class="btn btn-success custom-width">Edit</button>-->
						</div>
                        <em>* : Madatory</em>
	                </div>
	            </form>
    	    </div>
		</div>	
    </div>
</div>