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
    <title>Provisio Info Page </title>
</head>
<body>

	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="./partials/navbar-two.jsp" />
	
	<!--Modal fade for User Login-->
   	<jsp:include page="./partials/forms/loginForm.jsp" />
   
 	<!--Modal fade for User Registration-->
 	<jsp:include page="./partials/forms/registration.jsp" />
 	
 	
 	<% if (request.getAttribute("error") != null){ %>
 	<div id="wrapper">
 		<div style="margin-top: 100px">
 			<h3 style="text-align: center;"><%= request.getAttribute("error") %></h3>
 			<br><br>
 		</div>
 	</div>
 	
 	<div id="backToHomepageLink" style="margin-top: 30px; padding: 10px;">
		<a href="index.jsp">Click here to go back to the Home Page</a>
	</div>
	
 	<% } %>
 	
 	
 	
 	<% if (request.getAttribute("success") != null){ %>
 	<div id="wrapper">
 		<div style="margin-top: 100px">
 			<h3 style="text-align: center; color: green;"><%= request.getAttribute("success") %></h3>
 			<br><br>
 		</div>
 	</div>
 
	<!-- Comment -->
 	<div id="backToHomepageLink" style="margin-top: 30px; padding: 10px;">
		<form action="reservations" method="POST" id="reserveForm">
  			<input type="hidden" name="user_id" value=<%=session.getAttribute("user_id") %> />
  			<!-- <button type="submit" id="btn1" class="btn nav-link">Reservations</button> -->
  			<a style="cursor: pointer;" onclick="document.getElementById('reserveForm').submit()" >Click here to back to your reservations</a>
    	</form>
	</div>
 	
 	<% } %>
 	

    
    
    <!-- VALUES INCLUDE  -->
 	<jsp:include page="./partials/values.jsp" />
 	
 	<!-- TOURISTC PLACES CAROUSEL INCLUDE  -->
 	<jsp:include page="./partials/touristicPlaces.jsp" />

 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />


</body>
</html>