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
            		<a href="http://localhost:8080/Jeffrey_provisio/index.jsp"><img src="./images/logo1.png" class="logo"></a>  
            	</div>
 				<div id="secondNav">
 					<a href="http://localhost:8080/Jeffrey_provisio/index.jsp">Home</a>
                	<a href="http://localhost:8080/Jeffrey_provisio/about.jsp">about</a>
                	<a href="http://localhost:8080/Jeffrey_provisio/contact.jsp">contact</a>
                	<a class="btn" id="btn1"data-bs-toggle="modal" data-bs-target="#loginModal">Log In</a>
            		<a class="btn" id="btn2" data-bs-toggle="modal" data-bs-target="#registerModal">Register</a>
 				</div>     
            </nav>
        </div>
        <!-- ENDING NAVBAR -->
       
</body>
</html>