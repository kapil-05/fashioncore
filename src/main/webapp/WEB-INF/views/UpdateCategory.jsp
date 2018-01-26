<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

	<h1 style="margin: auto; width: 80%; text-align: center;">Update Category</h1>

	<br>
	
	<form action="${pageContext.request.contextPath}/UpdateCategoryToDB" method="post" style="margin: auto; width: 80%; text-align: center;">
	
		<input type="hidden" value="${categorydata.getCid()}" name="category" >
		
		<br>
		
		<input type="text" placeholder="Name" value="${categorydata.getName()}" class="form-control" name="category">
	
		<br>
		
		<textarea placeholder="Description" class="form-control" name="category">${categorydata.getDescription()}</textarea>
		
		<br>
		
		<input type="submit" value="Update" class="btn btn-primary">
	
	</form>
	
<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>

</body>
</html>