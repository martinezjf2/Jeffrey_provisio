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
    <title>Provisio About Page</title>
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
	
<section class="hero py-4 py-lg-5">
		<div class="row">
			<div class="col-xl-8 mx-auto">
				<p class="text-muted">Provisio Hotels Beach and Resort was established in 2022 by a group of software developers
				turned land developers. We offer multiple locations throughout the United States. We take pride in accommodating
				remote work, extended stays, business, and pleasure for our loyal customers. Our staff is built on Integrity, 
				Inclusion, Growth, and most of all a good time with great customer service.</p>
				<p class="text-muted">Many of our hotels offer 5 star dining, room service,
					swimming pools, and fitness centers. So no matter the occasion, we have you covered!</p>
				<ul class="text-muted fw-light" style="text-align: left;">
					<li>Room service is available 24/7</li>
					<li>Every room is equipped with a fridge stocked with water, soft drinks and a complementary bottle of our
					in house wine. A Kurig coffee maker, 55" Smart TV, and a working desk space.</li>
					<li>Wake up and relax in your room with your included breakfast room service option.</li>
					<li>Wi-Fi is available at all locations for high speed connections please contact the hotel manager.</li>
					<li>Covered parking is available at all locations.</li>
				</ul>

			</div>
		</div>
	</section>



 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />
	
</body>
</html>