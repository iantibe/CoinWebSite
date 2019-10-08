<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add location history</title>
<style>
	body {
		background-color: green;
		}
	
	form {
		margin: auto;
		border-style: solid;
		}

</style>

</head>
<body>

<h1> select a coin to add a location to</h1>

<form method = "post" action = "addlocationdata">
		<table>
		<c:forEach items="${requestScope.allItems}" var="currentitem">
		<tr>
		 <td><input type="radio" name="id" value="${currentitem.id}"></td>
		 <td>${currentitem.type}</td>
		 </tr>
		</c:forEach>
		</table>
		<h2>enter location data below</h2>
		<input type="text" name="locationdata">
	<input type="submit">
	</form>


</body>
</html>