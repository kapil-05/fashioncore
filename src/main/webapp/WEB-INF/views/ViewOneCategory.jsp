<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="resources/images/favicon.jpg" type="image/jpeg" sizes="16x16">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>FashionCore</title>

<jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>

<style>
.tb
{
    border-style: double;
}
</style>

</head>
<body>
<jsp:include page="/WEB-INF/views/Navbar.jsp"></jsp:include>
	<br>

	<h1 style="margin: auto; width: 80%; text-align: center;">Welcome ${categorydata.getName()}!!!</h1>
	<br>

	<a href="${pageContext.request.contextPath}/ViewCategory"  class="btn btn-info" style= "margin-left: 78%;">Back To Home Page</a>

	<br>
	
	<table class="table table-striped" style="margin: auto; width: 80%;">
	
		<thead>
			<tr class="tb">
	
			<th class="tb">Name</th>
			<th class="tb">Description</th>
						
			</tr>
		</thead>
		
		<tbody>
			<tr class="tb">

			<td class="tb">${categorydata.getName()}</td>
			<td class="tb">${categorydata.getDescription()}</td>
			
			</tr>
			
		</tbody>
	
	</table>
	
	<br>
	
	<a href="${pageContext.request.contextPath}/UpdateOneCategory/${categorydata.getCid()}" class="btn btn-success" style="margin-left: 550px;">Update</a>
	<a href="${pageContext.request.contextPath}/DeleteOneCategory/${categorydata.getCid()}" class="btn btn-danger" style="margin-left: 100px;">Delete</a>
	<a href="${pageContext.request.contextPath}/CategoryProduct/${categorydata.getName()}" class="btn btn-primary" style="margin-left: 100px;">View Product</a> 

<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>

</body>
</html>