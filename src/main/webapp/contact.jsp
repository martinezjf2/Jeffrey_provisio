<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <title>Provisio Contact Us Page </title>
</head>
<body>
<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/navbar.jsp" />
	
	<!--Modal fade for User Login-->
   <jsp:include page="partials/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="partials/registration.jsp" />
 	
 	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/header.jsp"/>
 	
 	
 	<div class="container overlay-content">
		<h1 class="hero-heading">How can we help you?</h1>
	</div>
	

	<section class="py-6">
		<div class="container">
			<div class="row">
				<div class="col-md-4 text-center text-md-start mb-4 mb-md-0">
					<div class="icon-rounded mb-4 bg-primary-light">
						<i class="fa fa-2x text-primary fa-map-marker-alt"></i>
					</div>
					<h3 class="h5">Address</h3>
					<p class="text-muted">
						1000 Galvin Road South<br>Bellevue, NE 68005
					</p>
				</div>
				<div class="col-md-4 text-center text-md-start mb-4 mb-md-0">
					<div class="icon-rounded mb-4 bg-primary-light">
						<i class="fa fa-2x text-primary fa-phone"></i>
					</div>
					<h3 class="h5">Customer Service</h3>
					<p class="text-muted">Our customer service is available 24 hours a
						day to assist with reservations, accommodations, amenities, and any questions you may have.</p>
					<p class="text-muted">
						<strong>1 (800) 555-5555</strong>
					</p>
				</div>
				<div class="col-md-4 text-center text-md-start mb-4 mb-md-0">
					<div class="icon-rounded mb-4 bg-primary-light">
						<i class="fa fa-2x text-primary fa-envelope"></i>
					</div>
					<h3 class="h5">Email Us</h3>
					<p class="text-muted">Please feel free to email us, sometimes for time and convenience this is the best option.</p>
					<ul class="list-unstyled text-muted">
						<li>
							<a href="mailto:info@provisio.com?subject=Comments and Inquires from Provisio.com">
								info@provisio.com 
							</a>
						</li>
						<li>
							<a href="mailto:support@provisio.com?subject=Technical Support Request Provisio.com">
							support@provisio.com 
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
 	
 	
 	
 	
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />
</body>
</html>