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
	<h3>Conformation Page</h3>

	<p>
		The student is confirmed :<br> Name : ${student.firstName}
		${student.lastName}
	</p>
	<p>Country: ${student.country}</p>
	<p>favoriteLanguage: ${student.favoriteLanguage}</p>

	<br> Operating System Knows :
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}">
			<li>${temp}</li>
		</c:forEach>


	</ul>


</body>
</html>