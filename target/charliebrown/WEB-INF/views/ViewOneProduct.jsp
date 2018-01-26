<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
table, th, td, tr 
{
    border-style: double;
}
</style>

</head>
<body>

	<br>

	<h1 style="margin: auto; width: 80%; text-align: center;">Welcome ${productdata.getName()}!!!</h1>

	<br>
	
	<a href="${pageContext.request.contextPath}/ViewProduct"  class="btn btn-info" style= "margin-left: 78%;">Back To Home Page</a>
	
	<br>
	<br>
	
	<table class="table table-striped" style="margin: auto; width: 80%;">
	
		<thead>
			<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Category</th>
			<th>Price</th>
			<th>Image</th>
			
			</tr>
		</thead>
		
		<tbody>
			<tr>
			<td>${productdata.getName()}</td>
			<td>${productdata.getDescription()}</td>
			<th>${productdata.getCategories()}</th>
			<th>${productdata.getPrice()}</th>
			<th><img src="${productdata.getImage()}" style="height: 50px; width: 50px;"></th>	
			</tr>
			
		</tbody>
	
	</table>
	
	<br>
	
	<a href="${pageContext.request.contextPath}/UpdateOneProduct/${productdata.getPdid()}" class="btn btn-success" style="margin-left: 550px;">Update</a>
	<a href="${pageContext.request.contextPath}/DeleteOneProduct/${productdata.getPdid()}" class="btn btn-danger" style="margin-left: 100px;">Delete</a> 
	
	
		
	
	
	
</body>
</html>