<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="header bg-primary">
		
            		

<nav class="navbar navbar-expand-lg" style="padding: 10px 100px">

<a href="index.jsp" class="navbar-brand"><img src="./images/logo1.png" class="logo"></a>  
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse  justify-content-end" id="mynavbar">

<ul class="nav" style="font-size: 25px; font-weight: bold;">
  <li class="nav-item">
    <a class="nav-link text-white" href="index.jsp">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link text-white" href="about.jsp">About</a>
  </li>
  <li class="nav-item">
    <a class="nav-link text-white" href="hotels">Hotels</a>
  </li>
  
  <% if (session.getAttribute("first_name") == null){ %>
  
   <li class="nav-item">
  	<form class="">
        <a id="btn1" data-bs-toggle="modal" data-bs-target="#loginModal" class="nav-link text-white">Log In</a>
      </form>
   </li>
   
   <li class="nav-item">
  	<form class="">
        <a id="btn2" data-bs-toggle="modal" data-bs-target="#registerModal" class="nav-link">Register</a>
      </form>
   </li>
  
  
  
  <% } else { %>
  
 	<li class="nav-item">
   		<a class="nav-link" href="reservations">Reservations</a>
  	</li>
  	<li class="nav-item">
    	<a class="nav-link" href="rewards.jsp">Rewards</a>
  	</li>
   
   	<li class="nav-item">
  		<form class="" action="logout" method="POST">
        	<a class="nav-link"><button type="submit" name="loggedOut" class="btn btn-primary">Log Out</button></a>
    	</form>
   </li>
   	<% } %>
</ul>
</div>
</nav>
</div>


<!-- <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="javascript:void(0)">Logo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="nav justify-content-end">
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="javascript:void(0)">Link</a>
        </li>
      </ul>
     <form class="d-flex">
        <input class="form-control me-2" type="text" placeholder="Search">
        <button class="btn btn-primary" type="button">Search</button>
      </form>
    </div>
  </div>
</nav> -->








































</body>
</html>