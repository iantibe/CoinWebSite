<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Location Detail</title>
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
		 
		 <td>${currentitem.coin.type}</td>
		 <td>${currentitem.coin.price}</td>
		 <td>${currentitem.location}</td>
		 
		 </tr>
		</c:forEach>
		</table>
</body>
</html>