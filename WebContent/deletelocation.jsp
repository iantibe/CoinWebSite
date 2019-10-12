<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete note data</title>
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
<h1> select a coin to delete a note for</h1>

<form method = "post" action = "deletelocationdataservlet">
		<table>
		<c:forEach items="${requestScope.allItems}" var="currentitem">
		<tr>
		 <td><input type="radio" name="id" value="${currentitem.locid}"></td>
		 <td>Coin: ${currentitem.coin.type}</td>
		 <td>Note: ${currentitem.location}</td>
		 </tr>
		</c:forEach>
		</table>
		<h2>select a note to delete</h2>
		
	<input type="submit">
	</form>
	<a href="index.html">Return to main</a>

</body>
</html>