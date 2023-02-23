<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, hotel.*"%>
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
    <title>Provisio Reservations Page </title>
</head>
<body>





	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="./partials/navbar-two.jsp" />
	
	<!--Modal fade for User Login-->
   	<jsp:include page="./partials/forms/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="./partials/forms/registration.jsp" />
	


 	<% List<Hotel> theHotels = (List<Hotel>)request.getAttribute("hotels"); %>


	<div id="wrapper">
 		<div style="margin-top: 100px">
 			<h3 class="text-center fw-bold h-line">Hotels</h3>
 			<br><br>
 		</div>
 	</div>





	<div style="width: 80%; margin: 0 auto;" class="row row-cols-1 row-cols-md-4 gx-2 mt-0">
	<% for (Hotel hot : theHotels) { %>
		<div class="col grow ind-location">
			<div class="location-card h-75 rounded">
				<img style="width: 100%; height: 200px" src="images/<%=hot.getPicture()%>" class="card-img-top-locations rounded"
					alt="<%=hot.getPicture() %>">
				<div class="card-body text-center" style="background-color: white;">
					<h5 class="card-title  mt-2 fw-bold fst-italic"><%=hot.getCity() %> <br> <%=hot.getHotel_name() %></h5>
					<p class="card-text mt-2 fst-italic"><%=hot.getAddress() %> <br> <%=hot.getCity() %>, <%=hot.getInd_state() %> <%=hot.getZip() %> <br> <%=hot.getPhone_number() %> </p>
					
					<% if (session.getAttribute("first_name") == null){ %>
 						<a  class="btn" id="btn1"data-bs-toggle="modal" data-bs-target="#loginModal">Log In To Reserve</a>
 					<% } else { %>
 					    <form action="booking" method="POST">
 					    <button type="submit" class="btn" id="btn2">Reserve Hotel</button>
 					    <input type="hidden" name="hotel_id" value="<%= hot.getHotel_id() %>" ><br>
 					    <input type="hidden" name="hotel_name" value="<%= hot.getHotel_name() %>" ><br>
 					    <input type="hidden" name="hotel_amenities" value="<%= hot.getAmenities() %>" ><br>
 					    <input type="hidden" name="hotel_descrip" value="<%= hot.getDescrip() %>" ><br>
 						</form>
 					<% } %>
				</div>
			</div>
		</div>
		<% } %>
	</div>







	<!-- Resource: how to pass down data from one jsp to another. Having a servlet in between. Check out this article: https://stackoverflow.com/questions/45802338/how-can-i-send-data-from-one-jsp-to-other-pressing-a-button -->
  
  
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />
 	
 	<!-- comment  -->
 	
 	
 	
 	
 	

</body>
</html>