<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="resources/images/favicon.jpg" type="image/jpeg" sizes="16x16">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FashionCore</title>

<jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>


</head>
<body>

<jsp:include page="/WEB-INF/views/Navbar.jsp"></jsp:include>
	<br>

	<h1 style="margin: auto; width: 80%; text-align: center;">Add Category</h1>

	<br>
	
	<a href="${pageContext.request.contextPath}/ViewCategory"  class="btn btn-info" style= "margin-left: 78%;">Back To All Category</a>
	
	<br>
	<br>
	
	<form action="AddCategoryToDB" method="post" style="margin: auto; width: 80%; text-align: center;">
	
		<input type="text" placeholder="Name" class="form-control" name="category">
		
		<br>
		
		<textarea placeholder="Description" class="form-control" name="category"></textarea>
	
		<br>
		
		<input type="submit" value="Add" class="btn btn-danger">
	
	</form>

<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>

</body>
</html>