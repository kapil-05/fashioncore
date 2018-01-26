<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
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

<body>

<jsp:include page="/WEB-INF/views/Navbar.jsp"></jsp:include>
	<br>

	<h1 style="margin: auto; width: 80%; text-align: center;">FashionCore</h1>

	
	
	<br>
	<br>
	
	<div style="width:30%; margin:auto; border-style: solid; border-width:1px; border-color:#EDEDED; ">
	
	<form:form action="AddProfileToDB" method="post" style="margin: auto; width: 90%;" modelAttribute="Profile">
	
	<br>
	
	<p style="color:black; font-size:25px; float:left">Create Account</p>
	
	<br>
	<br>
	<br>
		<span class="text-danger">*UserName: </span>
		<form:input path="username" type="text" placeholder="UserName" class="form-control" name="profile"/>
		<form:errors path="username"/>
		<br>
		
		<span class="text-danger">*Email Address: </span>
		<form:input path="email" type="text" placeholder="Email" class="form-control" name="profile"/>
		<form:errors path="email"/>
		<br>
		
		<span class="text-danger">*Password: </span>
		<form:input path="password" type="password" placeholder="Password" class="form-control" name="profile"/>
		<form:errors path="password"/>
		<br>
		
		<span class="text-danger">*Confirm Password: </span>
		<form:input path="cnfrmpassword" type="password" placeholder="Confirm Password" class="form-control" name="profile"/>
		<form:errors path="cnfrmpassword"/>
		<br>
		
		<span class="text-danger">*Mobile Number: </span>
		<form:input path="phone" type="number" placeholder="Phone" class="form-control" name="profile"/>
		<form:errors path="phone"/>
		<br>
		
		<span class="text-danger">*Address: </span>
		<form:textarea path="address" placeholder="Address" class="form-control" name="profile"></form:textarea>
		
		<br>
		
		<span class="text-danger">*Role: </span>
		<form:select path="role" class="form-control">
			<option value="ROLE_USER">ROLE_USER</option>
			<option value="ROLE_SUPPLIER">ROLE_SUPPLIER</option>
			<%
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_ADMIN")))
	    	{
	 %>
	 <option value="ROLE_ADMIN">ROLE_ADMIN</option>
	 <%
	    	}
	    }	
	%>
		</form:select>
		
		<br>
		
		<input type="submit" value="Add" class="btn btn-primary" style="width: 100%">
	
	</form:form>
	
	<hr>
	
	Already have an account? <a href="loginpage">LogIn!</a>
	
	<br>
	<br>
	
	</div>

<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>

</body>
</html>