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
<br>

<h1 style="margin: auto; width: 80%; text-align: center;">FashionCore</h1>

<br>

<div style="width:30%; margin:auto; border-style: solid; border-width:1px; border-color:#EDEDED; ">

<form action="login" method="post" style="margin: auto; width: 90%;">

<br>

<p style="color:black; font-size:25px; float:left">Login</p>

<br>
<br>
<br>

	<span class="text-danger">*UserName: </span>
	<input type="text" name="username" placeholder="Username" class="form-control">
	
	<br>
	
	<span class="text-danger">*Password: </span>
	<input type="password" name="password" placeholder="Password" class="form-control">
	
	<br>
	
	<input type="submit" value="Login" class="btn btn-success" style="width:100%">
	
	<br>
	<hr>

	<div class="row" style="width:100%">
		<div class="col-sm-12"><b>New to Fashioncore? <a href="AddProfile">Register Now</a></b></div>
	</div>
	
	<br>

</form>

</div>
</body>
</html>