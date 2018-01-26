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


</head>
<body>

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
		<h4 style="float: left;">Category: (Description) :-</h4><select style="width:300px; margin-left:-250px;  height: 25px;">
		
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
		
		<input type="submit" value="Add" class="btn btn-danger">
	
	</form>

</body>
</html>