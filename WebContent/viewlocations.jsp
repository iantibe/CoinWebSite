<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Note Detail</title>
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

<table>
		<c:forEach items="${requestScope.fulllist}" var="currentitem">
		<tr>
		 
		 <td>Coin Type: ${currentitem.coin.type}</td>
		 <td>Coin Price: ${currentitem.coin.price}</td>
		 <td>Coin Note: ${currentitem.location}</td>
		 
		 </tr>
		</c:forEach>
		</table>
		
		<a href="index.html">Return to Main Menu</a>
</body>
</html>