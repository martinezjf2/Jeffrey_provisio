<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, place.*"%>
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
	


 	<% List<Place> places = (List<Place>)request.getAttribute("places"); %>



	<div id="wrapper">
 		<div class="my-5 px-5">
 			<h3 class="text-center fw-bold h-line">Locations</h3>
 			<br><br>
 		</div>
 	</div>







	<div style="margin: 0 auto; width: 60%">
 		<% for (Place loc : places) { %>
 			<div class="card py-3" style="padding:50px; margin: 30px 0px">
 				<div class="card-body grow location-parent-div">
 					<div class="flex-child-element">
 						<h4>City: </h4><h5><%= loc.getCity() %></h5>
 						<h4>State: </h4><h5><%= loc.getInd_state() %></h5>
 						<h4>Zip Code: </h4><h5><%= loc.getZip() %></h5>
 					</div>
 					<div class="flex-child-element">
 						<img src="./images/<%= loc.getPicture() %>" id="location-image" alt="<%= loc.getPicture() %>"/>
 					</div>
 				</div>
 				
 				
 					
 			</div>
 		<% } %>
 	</div>




<!-- Resource: how to pass down data from one jsp to another. Having a servlet in between. Check out this article: https://stackoverflow.com/questions/45802338/how-can-i-send-data-from-one-jsp-to-other-pressing-a-button -->
  
  
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />
 	
 	
 	
 	
 	
 	
 	

</body>
</html>