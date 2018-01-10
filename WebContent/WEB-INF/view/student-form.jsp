<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration form</title>
</head>
<body>
	<form:form action="processform" modelAttribute="student">

		<hr>
		First Name : <form:input path="firstName" />
		<br>
		<br>
		last Name : <form:input path="lastName" />
		<br>
		<br>
		Country:
		<form:select path="country">
			<form:options items="${student.countryList}" />

			<%-- <form:option value="India" lable="India"></form:option>
			<form:option value="US" lable="US"></form:option>
			<form:option value="Australia" lable="Australia"></form:option>
			<form:option value="Spain" lable="Spain"></form:option> --%>

		</form:select>
		
		<br>
		<br>
		
		Choose Programming Language :
		Java	<form:radiobutton path="favoriteLanguage" value="Java" /> 
		JS	<form:radiobutton path="favoriteLanguage" value="JS" />
		PHP	<form:radiobutton path="favoriteLanguage" value="PHP" />
		Ruby	<form:radiobutton path="favoriteLanguage" value="Ruby" />
		C++	<form:radiobutton path="favoriteLanguage" value="C++" />
		<br>
		<br>
		<br>
		
		Choose Operating System :
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		MAC  <form:checkbox path="operatingSystems" value="MAC" />
		Windows <form:checkbox path="operatingSystems" value="Windows" />
		
		<hr>
		<input type="submit" value="Submit" />
	</form:form>
	
</body>
</html>