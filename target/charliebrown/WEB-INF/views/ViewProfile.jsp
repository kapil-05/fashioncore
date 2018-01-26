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

	<h1 style="margin: auto; width: 80%; text-align: center;">View Profile</h1>

	<br>

	<form method="post" action="${pageContext.request.contextPath}/DeleteProfile">
	
	<input type="submit" class="btn btn-danger" value="Delete" style="margin-left: 135px;">	
	
	<br>
	<br>
	
	<table class="table table-striped" style="margin: auto; width: 80%;">
	
		<thead>
			<tr>
			<th><input type="checkbox" id="checkBoxAll"></th>
			<th>UserName</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Address</th>
			<th>View</th>
			<th>Update</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${profiledata}" var="z">
			<tr>
			<td><input type="checkbox" class="chkCheckBoxId" name="delete" value="${z.getId()}"></td>
			<td>${z.getUsername()}</td>
			<td>${z.getEmail()}</td>
			<td>${z.getPhone()}</td>
			<td>${z.getAddress()}</td>
			<th><a href="ViewOneProfile/${z.getId()}" class="btn btn-primary">View</a></th>
			<th><a href="UpdateOneProfile/${z.getId()}" class="btn btn-success">Update</a></th>
			
			</tr>
			</c:forEach>
		</tbody>
	
	</table>
	
	<br>
	
	<a href="${pageContext.request.contextPath}/AddProfile" class="btn btn-info btn-block" style="width:80%; margin: auto;">Add Another Profile</a>
	
	</form>
	
</body>
</html>