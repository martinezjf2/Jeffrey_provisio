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

	
	
	
	
	
	
	
	<div style="margin: 0 auto; width: 100%">
	
	
		<div id="wrapper">
	 		<div style="margin-top: 50px">
	 			<h3 class="text-center fw-bold h-line">Here are your results</h3>
	 			<br><br>
	 		</div>
	 	</div>
	
	
	
 			<div class="card py-3 grow" style="margin: 30px 0px; padding:50px">
 				<div class="card-body">
 				    <div style="width: 50%; float: left">
	 				   <h4><strong>Reservation Details:</strong></h4>
	 				   <br>
	 				   	<h5><strong>Confirmation Code: </strong>${confirmation_code}</h5>
	 				   	<h5><strong>Check-in: </strong>${check_in} <strong>Check-out: </strong> ${check_out}</h5> 
	 				   	<h5><strong>Adults: </strong>${adults}</h5>
	 				   	<h5><strong>Children: </strong>${children}</h5>
	 					<h5><strong>Room Type: </strong>${room_type}</h5>
	 					<h5><strong>Instructions: </strong></h5><h5>${instructions}</h5>
	 					<%-- <h4>Points: </h4><h5><%=res.getPoints()%></h5> --%>
	 					<form style="display: inline; margin-top: 50px;" action="cancel-reservation" method="POST">
							<input type="hidden" value="<%=request.getAttribute("reservation_id")%>" name="reservation_id"/>
							<button style="display: inline; margin-top: 70px; width: 300px" name="cancelled" id="btn2" onclick="if (!(confirm('Are you sure you want to delete the reservation'))) return false">Cancel Reservation</button>
						</form>
						
						<form action="reservations" method="POST" id="reserveForm">
  							<input type="hidden" name="user_id" value=<%=session.getAttribute("user_id") %> />
  							<button style="display: inline; width: 300px" id="btn1">Back to Reservations</button>
    					</form>
 					</div>

 					<div style="width: 50%; float: left">
 						<h4><strong>Hotel Information:</strong></h4>
 						<br>
 						<h5>${hotel_name}</h5>
 						<h5>${address}</h5>
 						<h5>${city}, ${state} ${zip} </h5>
 						<h5>${phone_number}</h5>
 						<br>
 						<img style="width: 90%" src="images/${picture}"/>
						<br><br>
	 					<h5><strong>Amenities: </strong></h5><h5>${amenities}</h5>
	 					<h5><strong>Description: </strong></h5><h5>${descrip}</h5>
 					</div>
 				</div>
 			</div>
 			
 			
			
 		</div>
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

 
 
 
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />
 	
 	

</body>
</html>