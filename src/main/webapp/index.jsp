<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <title>Provisio Landing Page </title>
</head>
<body>

	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="./partials/navbar-two.jsp" />
	
	<!--Modal fade for User Login-->
   <jsp:include page="partials/forms/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="partials/forms/registration.jsp" />
 	

	
	
	<% if (request.getParameter("submit") != null) { %>
		<jsp:include page="partials/alerts/createAccountAlert.jsp" />
	<% } %>
	
	<% if (request.getParameter("loggedIn") != null) { %>
		<jsp:include page="partials/alerts/loggedInAlert.jsp" />
	<% } %>
	
	<% if (request.getParameter("loggedOut") != null) { %>
		<jsp:include page="partials/alerts/logoutAlert.jsp" />
	<% } %>
	
	

	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/header.jsp"/>
	
	
	<div id="values">
	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/values.jsp"/>
	</div>
	
	
	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/touristicPlaces.jsp"/>

	
	
 	
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="partials/footer.jsp" />
</body>
</html>