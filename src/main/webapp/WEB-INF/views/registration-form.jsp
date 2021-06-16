<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
   <%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%> 
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<link href="<c:url value='/resources/css/bootstrap.min.css' />"  rel="stylesheet"/>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.6.0.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>


</head>
<body>
<div id="main-container">
<h2>Registration Form</h2>
	<div>
	
	<form:form action="saveCustomer" method="post" modelAttribute="customer">
	
	<label for="id"> Enter your ID</label>
	<form:input path="id" />
	<br />
	<label for="firstname"> Enter your First Name</label>
	<form:input path="firstname" />
		<br />
		<label for="lastname"> Enter your last Name</label>
	<form:input path="lastname" />
		<br />
		<label for="email"> Enter your Email</label>
	<form:input path="email" />
		<br />
		<label for="password"> Enter your First Password</label>
	<form:input path="password" />
		<br />
 <form:button cssClass="btn btn-primary">Submit</form:button>
	
	
	
	</form:form>
	
	</div>


</div>


</body>
</html>