<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">Log In</span></div>
        <div class="panel-body">
            <div class="formcontainer">
                <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
                <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
                <form ng-submit="ctrl.doLogIn()" name="myForm" class="form-horizontal">
                    <input type="hidden" ng-model="ctrl.user.id" />
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Email</label>
                            <div class="col-md-7">
                                <input type="email" ng-model="ctrl.login.email" id="Email" class="Email form-control input-sm" placeholder="Enter your Email -- abc@xyz" required/>
                            </div>
                        </div>
                    </div><div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-lable" for="uname">Password</label>
                        <div class="col-md-7">
                            <input type="password" ng-model="ctrl.login.password" id="password" class="Password form-control input-sm" placeholder="Enter your Password (a-zA-Z | 0-9 | .,-_ etc | length >=5)" required ng-minlength="5"/>
                        </div>
                    </div>
                </div>
                    <div class="row">
                        <div class="form-actions" align="center">
                            <input type="submit"  value="{{!ctrl.user.id ? 'Sign-in' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid || myForm.$pristine">
                        <#-- <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>-->
                            <a href="#/singUpUser"></li><img src="http://www.pngmart.com/files/3/Sign-Up-Button-Transparent-Background.png" height=30 width =80></a>
                        <#--<button type="button" ng-click="ctrl.editUser('asd')" class="btn btn-success custom-width">Edit</button>-->
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>