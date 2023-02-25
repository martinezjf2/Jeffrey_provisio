<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, reservations.* "%>
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
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <title>Provisio Reservations Page </title>
</head>

<body>


	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="./partials/navbar-two.jsp" />
	
	<!--Modal fade for User Login-->
   	<jsp:include page="./partials/forms/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="./partials/forms/registration.jsp" />
 	

	
	
	<div class="container" style="padding: 25px 50px 75px 50px;">
	<h1>Here are you results</h1>
	
	<input type="hidden" value="${reservation_id}" />
	<input type="hidden" value="${user_id}" />
	<input type="hidden" value="${hotel_id}" />
	<input type="hidden" value="${place_id}" />
	
	<h3>Adults</h3>
	<h4>${adults}</h4>
	
	<h3>Children</h3>
	<h4>${children}</h4>
	
	<h3>Instructions</h3>
	<h4>${instructions}</h4><br>
	
	<h3>Confirmation Code</h3>
	<h4>${confirmation_code}</h4>
	
	<h3>Check In</h3>
	<h4>${check_in}</h4>
	
	<h3>Check Out</h3>
	<h4>${check_out}</h4>
	
	<h3>Room Type</h3>
	<h4>${room_type}</h4>
	
	<h3>City</h3>
	<h4>${city}</h4>
	
	<h3>State</h3>
	<h4>${state}</h4>
	
	<h3>Zip</h3>
	<h4>${zip}</h4>
	
	<h3>Image</h3>
	<h4>${picture}</h4>
	
	<h3>Hotel Name</h3>
	<h4>${hotel_name}</h4>
	
	<h3>Address</h3>
	<h4>${address}</h4>
	
	<h3>Phone Number</h3>
	<h4>${phone_number}</h4>
	
	<h3>Amenities</h3>
	<h4>${amenities}</h4>
	
	<h3>Description</h3>
	<h4>${descrip}</h4>
	

	
	
	
	


	<form style="display: inline" action="cancel-reservation" method="POST">
		<input type="hidden" value="<%=request.getAttribute("reservation_id")%>" name="reservation_id"/>
		<button name="cancelled" id="btn2" onclick="if (!(confirm('Are you sure you want to delete the reservation'))) return false">Cancel Reservation</button>
	</form>
	
	</div>

 
 
 
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />
 	
 	

</body>
</html>