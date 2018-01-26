<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
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

	<h1 style="margin: auto; width: 80%; text-align: center;">View Category</h1>

	<br>
	
	<form method="post" action="${pageContext.request.contextPath}/DeleteCategory">
	
	<%
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_ADMIN")))
	    	{
	 %>
	<input type="submit" class="btn btn-danger" value="Delete" style="margin-left: 135px;">	
	<%
	    	}
	    }	
	%>
	<br>
	<br>
	
	<table class="table table-striped" style="margin: auto; width: 80%;">
	
		<thead>
			<tr class="tb">
			<%
			Authentication auth1 = SecurityContextHolder.getContext().getAuthentication();
			    if (auth1 != null && !auth1.getName().equals("anonymousUser"))
			    {    
			    	if(request.isUserInRole("ROLE_ADMIN"))
			    	{
			 %>
			<th class="tb"><input type="checkbox" id="checkBoxAll"></th>
			
			<%
			    	}
			    }	
			%>
			<th class="tb">Name</th>
			<th class="tb">Description</th>
			<%
			Authentication auth2 = SecurityContextHolder.getContext().getAuthentication();
			    if (auth2 != null && !auth2.getName().equals("anonymousUser"))
			    {    
			    	if(request.isUserInRole("ROLE_ADMIN"))
			    	{
			 %>
			<th class="tb">View</th>
			<th class="tb">Update</th>
			<%
			    	}
			    }	
			%>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${categorydata}" var="y">
			<tr class="tb">
			<%
			Authentication auth3 = SecurityContextHolder.getContext().getAuthentication();
			    if (auth3 != null && !auth3.getName().equals("anonymousUser"))
			    {    
			    	if(request.isUserInRole("ROLE_ADMIN"))
			    	{
			 %>
			<td class="tb"><input type="checkbox" class="chkCheckBoxId" name="delete" value="${y.getCid()}"></td>
			<%
			    	}
			    }	
			%>
			<td class="tb">${y.getName()}</td>
			<td class="tb">${y.getDescription()}</td>
			<%
			Authentication auth4 = SecurityContextHolder.getContext().getAuthentication();
			    if (auth4 != null && !auth4.getName().equals("anonymousUser"))
			    {    
			    	if(request.isUserInRole("ROLE_ADMIN"))
			    	{
			 %>
			<th class="tb"><a href="ViewOneCategory/${y.getCid()}" class="btn btn-primary">View</a></th>
			<th class="tb"><a href="UpdateOneCategory/${y.getCid()}" class="btn btn-success">Update</a></th>
			<%
			    	}
			    }	
			%>
			</tr>
			</c:forEach>
		</tbody>
	
	</table>
	
	<br>
	<%
			Authentication auth5 = SecurityContextHolder.getContext().getAuthentication();
			    if (auth5 != null && !auth5.getName().equals("anonymousUser"))
			    {    
			    	if(request.isUserInRole("ROLE_ADMIN"))
			    	{
			 %>
	<a href="${pageContext.request.contextPath}/AddCategory" class="btn btn-info btn-block" style="width:80%; margin: auto;">Add Another Category</a>
	<%
			    	}
			    }	
			%>
	</form>

<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>
	
</body>
</html>