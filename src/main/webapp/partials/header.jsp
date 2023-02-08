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

<% String name = (String)session.getAttribute("first_name"); %>
	<!-- NAVBAR JSP INCLUDE FOR FLEXIBILITY -->
	<div id="landingHeader">
    	<div class="container">
        	<div class="content">
            	<div class="text">
            	
            	
            		<% if (session.getAttribute("first_name") == null){ %>
            			<h1 style="text-align: center;">Be Vibrant, Enjoy Life, <br> <span>Book Provisio</span></h1>
            			<p class="text-white h1" style="font-size: 25px; text-align: center;">Welcome home at Provisio Beach and Resorts.<br>Family vacations to appeal each member. <br>and a getaway to achieve your relation needs.</p>
            			<div id="headerButton">
           					<a class="btn3" data-bs-toggle="modal" data-bs-target="#registerModal">Book Now</a>
           				</div>
            		<% } else { %>
						<h1 style="text-align: center;">Be Vibrant, Enjoy Life, <br> <span>Welcome, <%= name %></span></h1>
						<div id="headerButton">
           					<a class="btn3" href="rewards.jsp">Rewards</a>
           				</div>
            		<% } %>

           			
           		</div>
       		</div>
   		</div>
 	</div> 
</body>
</html>