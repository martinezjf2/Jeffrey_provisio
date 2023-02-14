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
 	
 	
 	<% if (request.getParameter("submit") != null) { %>
		<jsp:include page="./partials/alerts/reservationAlert.jsp" />
	<% } %>
	
	
 	
 	<!-- List all reservations from the user, may need a scriplet instead of a servlet  -->
 	<% List<Reservation> theReservations = (List<Reservation>)request.getAttribute("reservations"); %>

 	
 	<!-- Add an alert to let the user now that the reservation was created successfully -->
 	
 	
 	<div id="wrapper">
 		<div class="my-5 px-5">
 			<h3 class="text-center fw-bold h-line">Reservations</h3>
 		</div>
 	</div>
 	
	 <!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/forms/reservationlookup.jsp" />
 	
 	<div style="margin: 0 auto; width: 60%">
 		<% for (Reservation res : theReservations) { %>
 			<div class="card py-3" style="margin: 30px 0px; padding:50px">
 				<div class="card-body">
 				    <p hidden value=<%= res.getReservation_id() %>></p>
 					<h4>Check In: </h4><h5><%= res.getCheck_in() %></h5>
 					<h4>Check Out: </h4><h5><%= res.getCheck_out() %></h5>
 					<h4>Adults: </h4><h3><%= res.getAdults() %></h3>
 					<h4>Children: </h4><h5><%= res.getChildren() %></h5>
 					<h4>Room Type: </h4><h5><%= res.getRoom_type() %></h5>
 					<h4>Confirmation Code: </h4><h5><%= res.getConfirmation_code() %></h5>
 					<h4>Instructions: </h4><h5><%= res.getInstructions() %></h5>

 				</div>
 				<form action="IndividualResSum" method="GET">
 					<input type="hidden" name="reservation_id" value="<%= res.getReservation_id() %>" />
 					<input type="hidden" name="check_in" value="<%= res.getCheck_in() %>" />
 					<input type="hidden" name="check_out" value="<%= res.getCheck_out() %>" />
 					<input type="hidden" name="adults" value="<%= res.getAdults() %>" />
 					<input type="hidden" name="children" value="<%= res.getChildren() %>" />
 					<input type="hidden" name="room_type" value="<%= res.getRoom_type() %>" />
 					<input type="hidden" name="confirmation_code" value="<%= res.getConfirmation_code() %>" />
 					<input type="hidden" name="instructions" value="<%= res.getInstructions() %>" />
 					
 					<input type="submit" name="submit" id="btn2" value="View Reservation" />
 				</form>
 				
 			</div>
 		<% } %>
 	</div>
 	
 	
 	
 	
 	
 		<%-- 
 		<% Enumeration keys = session.getAttributeNames();
		while (keys.hasMoreElements()) {
  		String key = (String)keys.nextElement();
  		out.println(key + ": " + session.getValue(key) + "<br>");
		} %>
		 --%>
		
		
		
		
		
		
 	
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />
 	
 	

</body>
</html>