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

</head>
<body>

<jsp:include page="/WEB-INF/views/Navbar.jsp"></jsp:include>
	<br>
	

	<h1 style="margin: auto; width: 80%; text-align: center;">Add Product</h1>

	<br>
	<a href="${pageContext.request.contextPath}/ViewProduct"  class="btn btn-info" style= "margin-left: 78%;">Back To All Product</a>
	
	<br>
	<br>
	
	<form action="AddProductToDB" method="post" style="margin: auto; width: 80%; text-align: center;" enctype="multipart/form-data">
	
		<input type="text" placeholder="Name" class="form-control" name="product">
	
		<br>
		
		<textarea placeholder="Description" class="form-control" name="product"></textarea>
	
		<br>
		
		<!-- <input type="text" placeholder="Category" class="form-control" name="product"> -->
		<h4 style="float: left;">Category: (Description) :-</h4><select name="item" style="width:300px; margin-left:-250px;  height: 25px;">
		
			<c:forEach items="${catnames }" var="x">
			
			<option value="${x.getName() }" title="${x.getDescription() }">${x.getName() }</option>
		
			</c:forEach>
		
		</select>
		
		<br>
		<br>
		
		<input type="number" placeholder="Price" class="form-control" name="product">
	
		<br>
		
		<input type="file" name="file" accept=".jpg" class="form-control">
		
		<br>
		
		<input path="quantity" type="number" placeholder="Quantity" class="form-control" name="quantity">
		
		<br>
		
		<input type="submit" value="Add" class="btn btn-danger">
	
	</form>
	
<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>

</body>
</html>