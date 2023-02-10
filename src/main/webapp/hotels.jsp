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
	<jsp:include page="partials/navbar.jsp" />
	
	  <!--Modal fade for User Login-->
   <jsp:include page="partials/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="partials/registration.jsp" />
	

<!--  	

<div class="input-wrapper">
  <div class="fa-solid fa-magnifying-glass"></div>	
  <input type="text" placeholder="Search"/>
  <div class="fa-solid fa-xmark"></div>
</div>

<div class="places">
  <div class="clearfix">
    <img class="img2" src="images/rio.jpg" alt="rio.jpg" width="170" height="170">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet...
  </div>
  <div class="clearfix">
    <img class="img2" src="images/newyork.jpg" alt="rio.jpg" width="170" height="170">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet...
  </div>
  <div class="clearfix">
    <img class="img2" src="images/miami.jpg" alt="rio.jpg" width="170" height="170">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet...
  </div>
</div> 


-->


 	<% List<Hotel> theHotels = (List<Hotel>)request.getAttribute("hotels"); %>







	<div id="wrapper">
 		<div class="my-5 px-5">
 			<h1 class="text-center fw-bold h-line">Hotels</h1>
 			<br><br>
 		</div>
 	</div>







	<div style="">
 		<% for (Hotel hot : theHotels) { %>
 			<div class="card" style="width:80%; padding:50px">
 				<div class="card-body">
 					<h4 value=<%= hot.getHotel_id() %> >Hotel Name: </h4><h5><%= hot.getHotel_name() %></h5>
 					<h4>Price: </h4><h5><%= hot.getPrice() %></h5>
 					<h4>Amenities: </h4><h5><%= hot.getAmenities() %></h5>
 					<h4>Description: </h4><h3><%= hot.getDescrip() %></h3>
 					
 					<% if (session.getAttribute("first_name") == null){ %>
 						<a  class="btn" id="btn1"data-bs-toggle="modal" data-bs-target="#loginModal">Log In To Reserve</a>
 					<% } else { %>
 					    <form action="booking" method="POST">
 					    <input type="hidden" name="hotel_id" value="<%= hot.getHotel_id() %>" ><br>
 					    <input type="hidden" name="hotel_name" value="<%= hot.getHotel_name() %>" ><br>
 					    <input type="hidden" name="hotel_amenities" value="<%= hot.getAmenities() %>" ><br>
 					    <input type="hidden" name="hotel_descrip" value="<%= hot.getDescrip() %>" ><br>
 						<button type="submit" class="btn">Reserve Hotel</button>
 						</form>
 					<% } %> 
 				</div>
 				
 				
 					
 			</div>
 		<% } %>
 	</div>




<!-- Resource: how to pass down data from one jsp to another. Having a servlet in between. Check out this article: https://stackoverflow.com/questions/45802338/how-can-i-send-data-from-one-jsp-to-other-pressing-a-button -->
  
  
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />
 	
 	
 	
 	
 	
 	
 	

</body>
</html>