<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validar Credencial</title>
</head>
<body>
	<%
		String firstName = request.getParameter("txtFirstName");
		String lastName = request.getParameter("txtLastName");
		String email = request.getParameter("txtEmail");
		String password = request.getParameter("txtPassword");
		String[] chkValues = request.getParameterValues("chkSubscribe");
		String subscribe = "No Subscribed";
		if (chkValues != null && chkValues.length >= 1) {
			subscribe = "Subscribed";
		}
		
		request.setAttribute("first_name", firstName);
		request.setAttribute("last_name", lastName);
		request.setAttribute("email", email);
		request.setAttribute("password", password);
		request.setAttribute("has_subscription", subscribe);
		
		pageContext.forward("RespuestaCredencial.jsp");
	%>
</body>
</html>