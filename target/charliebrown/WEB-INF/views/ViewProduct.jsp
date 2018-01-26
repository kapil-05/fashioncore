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

<script type="text/javascript">
	
	$(document).ready(function() {
		
		$('#checkBoxAll').click(function() {
			
			if($(this).is(":checked"))
				$('.chkCheckBoxId').prop('checked', true);
			else
				$('.chkCheckBoxId').prop('checked', false);
		});
	});

</script>

<style>
table, th, td, tr 
{
    border-style: double;
}
</style>

</head>
<body>

	<br>

	<h1 style="margin: auto; width: 80%; text-align: center;">View Product</h1>

	<br>

	<form method="post" action="${pageContext.request.contextPath}/DeleteProduct">
	
	<input type="submit" class="btn btn-danger" value="Delete" style="margin-left: 135px;">	
	
	<br>
	<br>
		
	<table class="table table-striped" style="margin: auto; width: 80%;">
	
		<thead>
			<tr>
			<th><input type="checkbox" id="checkBoxAll"></th>
			<th>Name</th>
			<th>Description</th>
			<th>Category</th>
			<th>Price</th>
			<th>Image</th>
			<th>View</th>
			<th>Update</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${productdata}" var="x">
			<tr>
			<td><input type="checkbox" class="chkCheckBoxId" name="delete" value="${x.getPdid()}"></td>
			<td>${x.getName()}</td>
			<td>${x.getDescription()}</td>
			<th>${x.getCategories()}</th>
			<th>${x.getPrice()}</th>
			<th><img src="${x.getImage()}" style="height: 50px; width: 50px;"></th>
			<th><a href="ViewOneProduct/${x.getPdid()}" class="btn btn-primary">View</a></th>
			<th><a href="UpdateOneProduct/${x.getPdid()}" class="btn btn-success">Update</a></th>
			</tr>
			</c:forEach>
		</tbody>
	
	</table>
	
	<br>
	
	<a href="${pageContext.request.contextPath}/AddProduct" class="btn btn-info btn-block" style="width:80%; margin: auto;">Add Another Product</a>
	
	</form>
	
</body>
</html>