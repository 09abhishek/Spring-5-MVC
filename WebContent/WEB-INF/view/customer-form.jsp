<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration form</title>
</head>


<style>
.error {
	color: red
}
</style>
<body>
	<p>Fill out the form.</p>
	<form:form action="processform" modelAttribute="customer">

		<hr>
		First Name : <form:input path="firstName" />
		<br>
		<br>
		last Name* : <form:input path="lastName" />
		<!-- Adding field to display error -->
		<form:errors path="lastName" cssClass="error">
		</form:errors>
		
		<br>
		<br>
		Free Pass (0-10)* : <form:input path="freePasses" />
		<form:errors path="freePasses" cssClass="error">
		</form:errors>
		<br>
		<br>
		Postal Code : <form:input path="postalCode" />
		<form:errors path="postalCode" cssClass="error">
		</form:errors>
		
		<hr>
		<input type="submit" value="Submit" />
	</form:form>

</body>
</html>