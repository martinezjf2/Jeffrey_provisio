<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                	<button class="btn" id="btn1"data-bs-toggle="modal" data-bs-target="#loginModal">Log In</button>
            		<button class="btn" id="btn2" data-bs-toggle="modal" data-bs-target="#registerModal">Register</button>
 				</div>     
            </nav>
        </div>
        <!-- ENDING NAVBAR -->
        <!-- Script-->
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>