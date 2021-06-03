<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jspf"%>

	<!-- Main Banner Section Starts -->
		<section class="main-banner three flip parallax">
        <!-- Nested Container Starts -->
            <div class="container">
                <h1 class="text-center">Partner With Us</h1>
            </div>
        <!-- Nested Container Ends -->
        </section>
    <!-- Main Banner Section Ends -->
	<!-- Main Container Starts -->
		<div class="container main-container">
			<section class="contact-form-section">
				<h3 class="text-weight-bold text-center">To Get Listed in FoodBingo add your restaurant...</h3>
				<form action="#">
					<div class="row">
						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="sr-only" for="contact-fname">First Name</label>
								<input type="text" class="form-control rounded-0" id="contact-fname" placeholder="First Name">
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="sr-only" for="contact-lname">Last Name</label>
								<input type="text" class="form-control rounded-0" id="contact-lname" placeholder="Last Name">
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="sr-only" for="contact-email">E-mail</label>
								<input type="email" class="form-control rounded-0" id="contact-email" placeholder="E-mail">
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="sr-only" for="contact-phoneno">Phone No</label>
								<input type="text" class="form-control rounded-0" id="contact-phoneno" placeholder="Phone No">
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="sr-only" for="contact-city">City</label>
								<input type="text" class="form-control rounded-0" id="contact-city" placeholder="City">
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="sr-only" for="contact-address">Address</label>
								<input type="text" class="form-control rounded-0" id="contact-address" placeholder="Address">
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<label class="sr-only" for="contact-restaurant-name">Name of the Restaurant</label>
								<input type="text" class="form-control rounded-0" id="contact-restaurant-name" placeholder="Name of the Restaurant">
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<label class="sr-only" for="contact-info">Describe About Your Restaurant</label>
								<textarea class="form-control rounded-0" id="contact-info" placeholder="Describe About Your Restaurant" rows="5"></textarea>
							</div>
						</div>
						<div class="col-sm-12 text-center">
							<button type="submit" class="btn btn-prime text-uppercase animation">Submit Your Details</button>
						</div>
					</div>
				</form>
			</section>
		</div>
	<!-- Main Container Ends -->
			<%@ include file="../include/footer.jspf"%>