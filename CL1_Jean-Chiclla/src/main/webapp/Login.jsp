<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CL1 - Jean Chiclla</title>
<!-- framework bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
<%-- <% 
	// Scriplet
%> 

<%= // Expresion %>

<%@ // Directiva %>

Comentarios

<%! // Declaraciones %> --%>

	<%@ include file="Navbar.jsp" %>

	<div class="m-5">
		<div class="container">
			<div class="row">
				<div class="col-sm-3" ></div>
				<div class="col-sm-6">
				
					<form name="frmLogin" method="post" action="ValidarCredencial.jsp">
						<div class="row">
							<div class="mt-2 col-sm-6">
								<input type="text" name="txtFirstName" class="form-control" id="firstname" placeholder="First name" required  >
							</div>
							<div class="mt-2 col-sm-6">
								<input type="text" name="txtLastName" class="form-control" id="lastname" placeholder="Last name" required  >
							</div>
						</div>
						<div class="row">
							<div class="col mt-2">
								<input type="email" name="txtEmail" class="form-control" id="email" placeholder="Email address" required  >
							</div>
						</div>
						<div class="row">	
							<div class="col mt-2">
								<input type="password" name="txtPassword" class="form-control" id="password" placeholder="Password" required  >
							</div>
							
						</div>
						
						<div class="row mt-3">
						
							<div class="form-check d-flex justify-content-center">
  								<input class="form-check-input" name="chkSubscribe" type="checkbox" value="Subscribed" id="flexCheckChecked" checked>
  								<div class="mx-1"></div>
  								<label class="form-check-label" for="flexCheckChecked">
    							Subscribe to our newletter
  								</label>
							</div>
						
						</div>
						
						<div class="row mt-3">
							 <div class="d-grid gap-2">
    							<button type="submit" class="btn btn-primary mb-3">SIGN UP</button>
  							</div>
							
						</div>
					</form> 
					
					<footer>
						<div class="row">
							<div class="col d-flex p-2 justify-content-center">
								<span>or sign up with:</span>
							</div>
						</div>
						<div class="row">
							<div class="col d-flex p-2 justify-content-center gap-3">
								<a href="#"><i class="bi bi-facebook"></i></a>
								<a href="#"><i class="bi bi-twitter"></i></a>
								<a href="#"><i class="bi bi-google"></i></a>
								<a href="#"><i class="bi bi-github"></i></a>
							</div>
						</div>
					</footer>
				</div>
			<div class="col-sm-3"></div>
		 	</div>
		</div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>