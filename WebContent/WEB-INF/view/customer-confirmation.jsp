<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Conformation page</title>
</head>
<body>
	<h3> Customer Confirmation Page</h3>

	<p>
		The Customer is confirmed :<br> Name : ${customer.firstName}
		${customer.lastName}
	</p>
	
	<p>
		The Customer has requested : ${customer.freePasses} Passes
	</p>
	
	<p>
		The Customer's Postal Code  : ${customer.postalCode}
	</p>
</body>
</html>