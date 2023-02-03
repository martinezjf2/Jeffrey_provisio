<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Provisio Navbar Page</title>
</head>
<body>
 <!-- START NAVBAR -->
        <div class="header bg-primary">
            <nav>
            	<div id="firstNav" >
            		<a href="index.jsp"><img src="./images/logo1.png" class="logo"></a>  
            	</div>
 				<div id="secondNav">
 					<a href="index.jsp">Home</a>
                	<a href="about.jsp">about</a>
                	<a href="contact.jsp">contact</a>
                	
                	<% if (session.getAttribute("email") == null){ %>
                		<a class="btn" id="btn1"data-bs-toggle="modal" data-bs-target="#loginModal">Log In</a>
            			<a class="btn" id="btn2" data-bs-toggle="modal" data-bs-target="#registerModal">Register</a>
            		<% } else { %>
            			<a href="reservations.jsp">Reservations</a>
            			<a href="rewards.jsp">Rewards</a>
            			<a href="logout" class="btn" id="btn1">Log Out</a>
            		<% } %>
 				</div>     
            </nav>
        </div>
        <!-- ENDING NAVBAR -->
        <!-- Resource on the log out functionality: -->
<!-- https://www.javatpoint.com/servlet-http-session-login-and-logout-example -->
       
</body>
</html>