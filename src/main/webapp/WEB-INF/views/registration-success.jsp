<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head><%@page isELIgnored="false" %>
<meta charset="UTF-8">
<title>Welcome </title>
<link href="<c:url value='/resources/css/bootstrap.min.css' />"  rel="stylesheet"/>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.6.0.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

</head>

<body>
<div class="container-fluid">
<h2>${msg}</h2>


<ul>
<li>${user.firstname}</li>
<li>${user.lastname}</li>

</ul>

</div>

</body>
</html>