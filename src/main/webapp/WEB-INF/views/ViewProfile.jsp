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
.tb
{
    border-style: double;
}
</style>

</head>
<body>

<jsp:include page="/WEB-INF/views/Navbar.jsp"></jsp:include>
	<br>

	<h1 style="margin: auto; width: 80%; text-align: center;">View Profile</h1>

	<br>

	<form method="post" action="${pageContext.request.contextPath}/DeleteProfile">
	
	<input type="submit" class="btn btn-danger" value="Delete" style="margin-left: 135px;">	
	
	<br>
	<br>
	
	<table class="table table-striped" style="margin: auto; width: 80%;">
	
		<thead>
			<tr class="tb">
			<th class="tb"><input type="checkbox" id="checkBoxAll"></th>
			<th class="tb">Role</th>
			<th class="tb">UserName</th>
			<th class="tb">Email</th>
			<th class="tb">Phone</th>
			<th class="tb">Address</th>	
			<th class="tb">View</th>
			<th class="tb">Update</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${profiledata}" var="z">
			<tr class="tb">
			<td class="tb"><input type="checkbox" class="chkCheckBoxId" name="delete" value="${z.getId()}"></td>
			<td class="tb">${z.getRole()}</td>
			<td class="tb">${z.getUsername()}</td>
			<td class="tb">${z.getEmail()}</td>
			<td class="tb">${z.getPhone()}</td>
			<td class="tb">${z.getAddress()}</td>
			<td class="tb"><a href="ViewOneProfile/${z.getId()}" class="btn btn-primary">View</a></td>
			<td class="tb"><a href="UpdateOneProfile/${z.getId()}" class="btn btn-success">Update</a></td>
			
			</tr>
			</c:forEach>
		</tbody>
	
	</table>
	
	<br>
	
	<a href="${pageContext.request.contextPath}/AddProfile" class="btn btn-info btn-block" style="width:80%; margin: auto;">Add Another Profile</a>
	
	</form>
	
<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>
	
</body>
</html>