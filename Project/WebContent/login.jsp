<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jspf"%>


	<!-- Main Container Starts -->
		<div class="main-container container">
        <!-- Content Login Wrap Starts -->
            <div class="content-login-wrap">
            <!-- Nested Row Starts -->
                <div class="row">
                <!-- Login Col Starts -->
                    <div class="col-md-5 col-sm-12">
                        <h4 class="text-spl-color">Returning Customer</h4>
                    <!-- Login Form Starts -->
                        <form action = "loginAction.jsp" method = "post">
                            <div class="form-group">
                                <label class="sr-only" for="login-email">Email address</label>
                                <input type="text" class="form-control" id="login-email" placeholder="Email" name = "USERID">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="login-password">Password</label>
                                <input type="password" class="form-control" id="login-password" placeholder="Password" name= "USERPASSWORD">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Remember me
                                </label>
                            </div>
                            <button type="submit" class="btn btn-block btn-prime animation">
                                Login <i class="fa fa-caret-right"></i>
                            </button>
                            <div class="form-group">
                                <p class="help-block">Forgot your Password? <a href="#">Click here</a></p>
                            </div>
                        </form>
                    <!-- Login Form Ends -->
                    </div>
                <!-- Login Col Ends -->
                <!-- Divider For Small Devices -->
                    <div class="w-10 d-xs-block d-sm-block d-md-none">
                        <br><hr><br>
                    </div>
                <!-- Divider For Small Ends -->
                <!-- Register Col Starts -->
                    <div class="col-md-5 col-sm-12 offset-md-2">
                        <h4 class="text-spl-color">Login for first time user?</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard..</p>
                        <button type="submit" class="btn btn-block btn-tertiary animation" data-toggle="modal" data-target="#registerModal">
                            Continue To Register <i class="fa fa-caret-right"></i>
                        </button>
                        <hr>
                        <a href="#" class="btn btn-block btn-twitter animation">
                        <i class="fa fa-twitter"></i> Sign in with Twitter</a>
                        <a href="#" class="btn btn-block btn-fb animation"><i class="fa fa-facebook"></i> Sign in with Facebook</a>
                        <a href="#" class="btn btn-block btn-prime tiny animation"><i class="fa fa-google-plus"></i> Sign in with Google</a>
                    </div>
                <!-- Register Col Ends -->
                </div>
            <!-- Nested Row Ends -->
            </div>
        <!-- Content Login Wrap Ends -->
        </div>
    <!-- Main Container Ends -->
    <!-- Register Modal Window Starts -->
        <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModal">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content no-boxshadow text-center">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title text-spl-color" id="registerModalLabel">Register Here</h4>
                    </div>
                    <div class="modal-body">
                    <!-- Register Form Starts -->
                        <form>
                            <div class="form-group">
                                <label class="sr-only" for="register-fname">First Name</label>
                                <input type="text" class="form-control" id="register-fname" placeholder="First Name">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="register-lname">Last Name</label>
                                <input type="text" class="form-control" id="register-lname" placeholder="Last Name">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="register-address">Last Name</label>
                                <textarea class="form-control" id="register-address" placeholder="Address" rows="4"></textarea>
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="register-zipcode">Zip Code</label>
                                <input type="text" class="form-control" id="register-zipcode" placeholder="Zip Code">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="register-country">Country</label>
                                <select class="form-control" id="register-country">
                                    <option>Country</option>
                                    <option>India</option>
                                    <option>USA</option>
                                    <option>China</option>
                                    <option>Australia</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="register-phoneno">Phone No</label>
                                <input type="text" class="form-control" id="register-phoneno" placeholder="Phone No">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="register-email">Email address</label>
                                <input type="email" class="form-control" id="register-email" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="register-password">Password</label>
                                <input type="password" class="form-control" id="register-password" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> Yes, I would like to receive emails with deals and discount codes
                                    </label>
                                </div>
                                <p class="help-block">By logging in I agree to the <a href="#">Terms of Use</a> and <a href="#">Privacy Policy</a>.</p>
                            </div>		
                            <button type="submit" class="btn btn-lg btn-block btn-tertiary animation">
                                Continue To Register <i class="fa fa-caret-right"></i>
                            </button>
                        </form>
                    <!-- Register Form Ends -->						
                    </div>
                </div>
            </div>
        </div>
    <!-- Register Modal Window Ends -->
	<%@ include file="footer.jspf"%>