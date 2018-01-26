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

	<h1 style="margin: auto; width: 80%; text-align: center;">Update Product</h1>

	<br>
	
	<form action="${pageContext.request.contextPath}/UpdateProductToDB" method="post" style="margin: auto; width: 80%; text-align: center;" enctype="multipart/form-data">
	
		<input type="hidden" value="${productdata.getPdid()}" name="product" >
	
		<input type="text" placeholder="Name" value="${productdata.getName()}" class="form-control" name="product">
	
		<br>
		
		<textarea placeholder="Description" class="form-control" name="product">${productdata.getDescription()}</textarea>
	
		<br>
		
		<select name="item" style="width:300px; margin-left:-250px;  height: 25px;">
		
			<c:forEach items="${catnames }" var="x">
			
			<option value="${x.getName() }" title="${x.getDescription() }">${x.getName() }</option>
		
			</c:forEach>
		
		</select>
	
		<br>
		
		<input type="number" placeholder="Price" value="${productdata.getPrice()}" class="form-control" name="product">
	
		<br>
		
		
		<input name="image"  value="${productdata.getImage()}" type="hidden">		
		
		<img src="${productdata.getImage()}" style="margin-left:-900px;  height: 50px; width: 50px;">
		
		<input path="theImage" type="file" name="file" accept="image/jpg" class="form-control"  style="width:100%;">
		
		<br>
		
		<!-- <input type="file" name="file" class="form-control" > -->
		
		<br>
		
		<input path="quantity" type="number" placeholder="Quantity" class="form-control" name="quantity" value="${productdata.getQuantity() }">
		
		<br>
		
		<input type="submit" value="Update" class="btn btn-primary">
	
	</form>

<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>

</body>
</html>