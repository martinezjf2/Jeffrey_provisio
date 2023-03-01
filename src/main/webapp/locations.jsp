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
 		<div style="margin-top: 100px">
 			<h3 class="text-center fw-bold h-line">Locations</h3>
 			<br><br>
 		</div>
 	</div>


<%-- 	<div class="row" style="margin: 10px auto; width: 80%; padding: 30px">
 		<% for (Place loc : places) { %>
 			<div class="card py-3 col-lg-4 col-md-6 col-sm-12" style="padding:50px; margin: 0px">
 				<div class="card-body grow location-parent-div">
 					<div class="flex-child-element">
 						<h2><%= loc.getCity() %></h2>
 						<h3><%= loc.getInd_state() %></h3>
 						<h4><%= loc.getZip() %></h4>
 					</div>
 					<div class="flex-child-element">
 						<img src="./images/<%= loc.getPicture() %>" id="location-image" class="grow" alt="<%= loc.getPicture() %>"/>
 					</div>
 				</div>
 			</div>
 		<% } %>
 	</div> --%>
 	
 	
 		<div style="width: 80%; margin: 0 auto;" class="row row-cols-1 row-cols-md-4 gx-2 mt-0">
	<% for (Place loc : places) { %>
		<div class="col grow py-5">
			<div class="location-card h-75 rounded">
				<img style="width: 100%; height: 200px" src="images/<%=loc.getPicture()%>" class="card-img-top-locations rounded"
					alt="<%=loc.getPicture() %>">
				<div class="card-body text-center">
					<h5 class="card-title  mt-2 fw-bold fst-italic"><%=loc.getCity() %> <br> </h5>
					<p class="card-text mt-2 fst-italic"><%=loc.getCity() %>, <%=loc.getInd_state() %> <%=loc.getZip() %> <br></p>
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