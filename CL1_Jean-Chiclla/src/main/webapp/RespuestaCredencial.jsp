<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Datos Registrados</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
	<%
	String firstName = (String) request.getAttribute("first_name");
	String lastName = (String) request.getAttribute("last_name");
	String email = (String) request.getAttribute("email");
	String hasSubscription = (String) request.getAttribute("has_subscription"); 
	%>
	
	<!-- TODO Add nav bar -->
	<%-- <%@ include file="Navbar.jsp" %> --%>
	<%@ include file="Navbar.jsp" %>
	
	<div class="container">
		
		<% if ( firstName != null && lastName != null && email != null) { %>
		<div class="alert alert-success mt-4" role="alert">
  			<h4 class="alert-heading">Datos registrados</h4>
  			<p>Los datos fueron registrados exitosamente</p>
  			<hr>
		</div>
		
		<% } else { %>
		<div class="alert alert-danger mt-4" role="alert">
  			Parece que se saltó el <a href="Login.jsp" class="alert-link">Login</a>.
		</div>
		
		<% } %>
		
		<table class="table table-primary table-hover">
  			<tr>
  				<th>First Name</th>
  				<th>Last Name</th>
  				<th>Email</th>
  				<th>Has Subscription</th>
  			</tr>
  			<tr>
  				<td><%= firstName %></td>
  				<td><%= lastName %></td>
  				<td><%= email %></td>
  				<td><%= hasSubscription %></td>
  			</tr>
		</table>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>