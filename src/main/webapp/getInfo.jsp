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
   <jsp:include page="./partials/forms/loginForm.jsp" />

 	<!--Modal fade for User Registration-->
 	<jsp:include page="./partials/forms/registration.jsp" />
 	
 	
 		<div id="backToHomepageLink" style="margin-top: 30px; padding: 10px;">
			<a href="index.jsp">Click here to go back to Homepage</a>
		</div>
 	
 	
 		<div class="card text-center"  style="margin: 105px auto; width: 80%">
  			<div class="card-header">
   				 Here are your details
  		</div>
  			<div class="card-body" style="padding: 25px;">
   				<h4 class="card-title">${name}</h4>
    			<h5>Email: <span>${email}</span></h5>
    			<h5>Password: <span>${password}</span></h5>
    			<!-- <p class="card-text">With supporting text below as a natural lead-in to additional content.</p> -->
    			<!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
  			</div>
  			<div class="card-footer text-muted">
  			</div>
		</div>
		
 	
 	<div id="values">
	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/values.jsp"/>
	</div>
	
	
	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<jsp:include page="partials/touristicPlaces.jsp"/>
 	
 	
 	<!-- FOOTER INCLUDE  -->
 	<jsp:include page="./partials/footer.jsp" />
</body>
</html>