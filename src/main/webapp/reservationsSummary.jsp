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
 	
 	
 	<!-- Checking if there is a session, if there isn't, user does not have access to go to the path -->
 	<% if (session.getAttribute("first_name") == null){ 
 		response.sendRedirect("index.jsp");
 	} else { %>
 	
 	
 	
 	
 	
 	<% if (request.getParameter("submit") != null) { %>
		<jsp:include page="./partials/alerts/reservationAlert.jsp" />
	<% } %>
	
	
	<% if (request.getParameter("cancelled") != null) { %>
		<jsp:include page="partials/alerts/deletedSuccess.jsp" />
	<% } %>
	
 	
 	<!-- List all reservations from the user, may need a scriplet instead of a servlet  -->
 	<% List<Reservation> theReservations = (List<Reservation>)request.getAttribute("reservations"); %>

 	
 	<!-- Add an alert to let the user now that the reservation was created successfully -->
 	
 	
 	<div id="wrapper" style="width: 25%; margin: 0 auto;">
 		<div style="margin-top: 100px" >
 			<h3 class="text-center fw-bold h-line grow">Reservations</h3>
 			<br><br>
 		</div>
 	</div>
 	
 	
 	<% if (theReservations.isEmpty() == false) { %>
 	
	 <!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/forms/reservationlookup.jsp" />
	
	
 	
 	<div style="margin: 0 auto; width: 60%">
 		<% for (Reservation res : theReservations) { %>
 			<div class="card py-3 grow" style="margin: 30px 0px; padding:50px">
 				<div class="card-body">
 				    <%-- <p><%=res.getReservation_id()%></p> --%>
 				    <h4>Reservation ID: </h4><h5><%=res.getReservation_id()%></h5>
 				    <h4>Adults: </h4><h3><%=res.getAdults()%></h3>
 					<h4>Children: </h4><h5><%=res.getChildren()%></h5>
 					<h4>Instructions: </h4><h5><%=res.getInstructions()%></h5>
 					<h4>Confirmation Code: </h4><h5><%=res.getConfirmation_code()%></h5>
 					<h4>Check In: </h4><h5><%=res.getCheck_in()%></h5>
 					<h4>Check Out: </h4><h5><%=res.getCheck_out()%></h5>
 					<h4>Room Type: </h4><h5><%=res.getRoom_type()%></h5>
 					<h4>Points: </h4><h5><%=res.getPoints()%></h5>
 					<h4>User ID: </h4><h5><%=res.getUser_id()%></h5>
 					
 					<h4>City: </h4><h5><%=res.getCity()%></h5>
 					<h4>State: </h4><h5><%=res.getState()%></h5>
 					<h4>Zip: </h4><h5><%=res.getZip()%></h5>
 					<h4>Picture: </h4><h5><%=res.getPicture()%></h5>
 					
 					<h4>Hotel Name: </h4><h5><%=res.getHotel_name()%></h5>
 					<h4>Hotel Address: </h4><h5><%=res.getAddress()%></h5>
 					<h4>Hotel Phone Number: </h4><h5><%=res.getPhone_number()%></h5>
 					<h4>Place ID: </h4><h5><%=res.getPlace_id()%></h5>
 					<h4>Amenities: </h4><h5><%=res.getAmenities()%></h5>
 					<h4>Description: </h4><h5><%=res.getDescrip()%></h5>

 				</div>
 				<form action="IndividualResSum" method="POST">
 					<input type="hidden" name="reservation_id" value="<%=res.getReservation_id()%>" />
 					<input type="hidden" name="adults" value="<%=res.getAdults()%>" />
 					<input type="hidden" name="children" value="<%=res.getChildren()%>" />
 					<input type="hidden" name="instructions" value="<%=res.getInstructions()%>" />
 					<input type="hidden" name="confirmation_code" value="<%=res.getConfirmation_code()%>" />
 					<input type="hidden" name="check_in" value="<%=res.getCheck_in()%>" />
 					<input type="hidden" name="check_out" value="<%=res.getCheck_out()%>" />
 					<input type="hidden" name="points" value="<%=res.getPoints()%>" />
 					<input type="hidden" name="room_type" value="<%=res.getRoom_type()%>" />
 					<input type="hidden" name="hotel_id" value="<%=res.getHotel_id()%>" />
 					<input type="hidden" name="user_id" value="<%=res.getUser_id()%>" />
 					<input type="hidden" name="city" value="<%=res.getCity()%>" />
 					<input type="hidden" name="state" value="<%=res.getState()%>" />
 					<input type="hidden" name="zip" value="<%=res.getZip()%>" />
 					<input type="hidden" name="picture" value="<%=res.getPicture()%>" />
 					<input type="hidden" name="hotel_name" value="<%=res.getHotel_name()%>" />
 					<input type="hidden" name="address" value="<%=res.getAddress()%>" />
 					<input type="hidden" name="phone_number" value="<%=res.getPhone_number()%>" />
 					<input type="hidden" name="place_id" value="<%=res.getPlace_id()%>" />
 					<input type="hidden" name="amenities" value="<%=res.getAmenities()%>" />
 					<input type="hidden" name="descrip" value="<%=res.getDescrip()%>" />
 					<input type="submit" name="submit" id="btn2" value="View Reservation" />
 				</form>
 				
 			</div>
 		<% } %>
 	</div>
 	
 	<% } else { %>
 		<div id="wrapper">
 			<div style="margin-top: 25px; color: red">
 				<h3 class="text-center fw-bold h-line">There are no reservations are the moment</h3>
 				<br><br>
 			</div>
 		</div>
 		
 		
 		
 	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/values.jsp"/>
	
	
	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/touristicPlaces.jsp"/>
	
	
 	<% } %>
 	
 	
 	
 		<%-- 
 		<% Enumeration keys = session.getAttributeNames();
		while (keys.hasMoreElements()) {
  		String key = (String)keys.nextElement();
  		out.println(key + ": " + session.getValue(key) + "<br>");
		} %>
		 --%>
		
		
		
		<% } %>
		
		
 	
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />
 	
 	

</body>
</html>