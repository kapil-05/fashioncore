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

<div style="text-align: center; margin: auto; width: 30%; font-size: 45px; font-family: Vivaldi">${categorydata.getName() }</div>
<div style="text-align: center;margin: auto; width: 80%">${categorydata.getDescription() }</div>


<table class="table table-striped " style="margin: auto; width: 80%;">
	<thead>
		<tr>
			<th>Image</th>
			<th>Name</th>
			<th>Description</th>
			<th>Category</th>
			<th>&#8377; Price</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${productdata}" var="y">
		<tr class="lovelyrow" onclick="location.href='${pageContext.request.contextPath}/ViewOneProduct/${ y.getPdid()}'">
			
			<td><img src="${ y.getImage()}" style="width:600px; border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></td>
			<td>${y.getName() }</td>
			<td>${ y.getDescription()}</td>
			<td>${ y.getCategories()}</td>
			<td>${ y.getPrice()}</td>
		</tr>
		</c:forEach>
	</tbody>

</table>

<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>

</body>
</html>