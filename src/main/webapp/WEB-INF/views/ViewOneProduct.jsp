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
<style>
.tb 
{
    border-style: double;
}
</style>

</head>
<body>

<jsp:include page="/WEB-INF/views/Navbar.jsp"></jsp:include>
	
<div style="text-align: center; margin: auto; width: 30%; font-size: 45px; font-family: Vivaldi">${categorydata.getName() }</div>
<div style="text-align: center;margin: auto; width: 80%">${categorydata.getDescription() }</div>
	
	<br>
	<br>
	
	<div class="row" style=" width:80%;">
		<div align="center" class="col-sm-2"></div>
		<div align="center" class="col-sm-6"><img src="${productdata.getImage()}" style="width:400px; border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    	</div>
    	<div align="center" class="col-sm-4">
    		<span style="font-size:25px; font-weight:bold;font-family:Freehand521 BT;">${productdata.getName()}</span>
    		<br><br>
    		<span style="font-weight:bold;">Description: </span><span>${productdata.getDescription()}</span>
    	</div>    	
    </div>
    
    <hr>
    
    <div class="row" style=" width:100%;">
		<div align="center" class="col-sm-4"></div>
    	<div align="center" class="col-sm-8"><span style="font-size: 35px">&#8377; ${productdata.getPrice()}</span>
    	</div>
    </div>
	
	<br>
	
	<%
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_ADMIN")) || request.isUserInRole(("ROLE_SUPPLIER")) )
	    	{
	 %>
	
	<a href="${pageContext.request.contextPath}/UpdateOneProduct/${productdata.getPdid()}" class="btn btn-success" style="margin-left: 550px;">Update</a>
	<a href="${pageContext.request.contextPath}/DeleteOneProduct/${productdata.getPdid()}" class="btn btn-danger" style="margin-left: 100px;">Delete</a> 
	
	<%
	    	}
	    }
	%>
	
	
	<%
	Authentication auth1 = SecurityContextHolder.getContext().getAuthentication();
	    if (auth1 != null && !auth1.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_ADMIN")) || request.isUserInRole(("ROLE_USER")) )
	    	{
	 %>
	<form action="${pageContext.request.contextPath}/AddCartToDB" method="post">
	
		<input type="hidden" value="${productdata.getPdid()}" name="id">
		
		<div class="row"></div>
			<div class="col sm-10"></div>
			<div class="col sm-2"><input type="number" placeholder="Quantity" class="form-control" name="quantity" style="margin: auto;  width: 10%; text-align: center;">
			</div>
			
			<br>    
    	
    		<button type="submit" class="btn btn-success" style="margin-left: 607px; width: 10%;">AddToCart</button>	
		</div>
	</form>
	
	<%
	    	}
	    }
	%>
	
<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>
	
</body>
</html>