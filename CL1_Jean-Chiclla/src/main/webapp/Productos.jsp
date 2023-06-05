<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos Ordenados</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
	<%@ include file="Navbar.jsp" %>
	<%@ page import="java.util.Arrays" %>
	<%
		String[] productsNames = new String[10];
		double[] productsPrices = new double[10];
	
		productsNames[0] = "Mouse Vertical";
		productsNames[1] = "Teclado mecánico";
		productsNames[2] = "Monitor 27\"";
		productsNames[3] = "Cable HDMI";
		productsNames[4] = "Tarjeta Gráfica 3070";
		productsNames[5] = "Pasta Térmica";
		productsNames[6] = "Luces RGB para Case";
		productsNames[7] = "Procesador Interl i7 T105";
		productsNames[8] = "Parlantes Estereo";
		productsNames[9] = "Placa Base Gamming";
		
		productsPrices[0] = 379.90;
		productsPrices[1] = 146.67;
		productsPrices[2] = 850.00;
		productsPrices[3] = 10.90;
		productsPrices[4] = 3790.00;
		productsPrices[5] = 7.50;
		productsPrices[6] = 20.40;
		productsPrices[7] = 980.10;
		productsPrices[8] = 30.00;
		productsPrices[9] = 579.90;
		
		
		/* Método de la burbuja */
		for (int i = 0; i < productsPrices.length - 1; i++) {
			for (int j = 0; j < productsPrices.length - i - 1; j++) {
				if (productsPrices[j] > productsPrices[j + 1]) {
					double tempPrice = productsPrices[j];
					productsPrices[j] = productsPrices[j + 1];
					productsPrices[j + 1] = tempPrice;
					
					String tempName = productsNames[j];
					productsNames[j] = productsNames[j + 1];
					productsNames[j + 1] = tempName;
					
				}
			}
		}
		
	%>
		
	
	<div class="container">
	
		<h2 class="mt-3">List Ordenada</h2>
		<table class="table table-bordered table-hover table-striped mt-4">
  			<tr>
  				<th>#</th>
  				<th>Producto</th>
  				<th>Precio</th>
  			</tr>
  			<% for (int i = 0; i < productsNames.length; i++) {	
  			int itemNumber = i + 1;
  			%>
  			<tr>
  				<td><%= itemNumber %></td>
  				<td><%= productsNames[i] %></td>
  				<td>S/. <%= productsPrices[i] %></td>
  			</tr>
  			<% } %>
		</table>
	
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>