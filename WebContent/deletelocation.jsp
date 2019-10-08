<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete location data</title>
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
<h1> select a coin to delete a location to</h1>

<form method = "post" action = "deletelocationdataservlet">
		<table>
		<c:forEach items="${requestScope.allItems}" var="currentitem">
		<tr>
		 <td><input type="radio" name="id" value="${currentitem.locid}"></td>
		 <td>${currentitem.coin}</td>
		 <td>${currentitem.location}</td>
		 </tr>
		</c:forEach>
		</table>
		<h2>select location to delete</h2>
		
	<input type="submit">
	</form>


</body>
</html>