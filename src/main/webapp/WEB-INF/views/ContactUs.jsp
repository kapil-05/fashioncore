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

<div style="text-align: center; font-size:45px; font-weight:bold;font-family:Vivaldi;">Contact Us </div>

<form action="" style="margin: auto; width: 70%">

	<input type="text" placeholder="Enter User Name" class="form-control">
	
	<br>
	
	<input type="email" placeholder="Registered Email Address" class="form-control">
	
	<br>
	
	<input type="number" placeholder="Registered Mobile Number" class="form-control">
	
	<br>
	
	<textarea rows="10" cols="20" placeholder="Message" class="form-control"></textarea>
	
	<br>
	
	<input type="submit" value="Send" class="btn btn-primary" style="width:100%">

</form>

<br>
<hr>	
<br>

<div class="row" style=" width:100%;">
	<div class="col-sm-2"></div>
	<div class="col-sm-3">
      <b>Registered Office</b><br><br>
		 D-7,South Extension Plaza 2,
		 <br>Guneet Kashyap Marg, Road,Block E,
		 <br> South Extension II,
		 <br> New Delhi, Delhi 110049      	
    </div>
    <div class="col-sm-3"></div>
    <div class="col-sm-4">
    	<b>In Case of Any Query: Email Us @</b><br><br>
    		kapil0823@gmail.com<br>
    		manishkashyap4793@gmail.com
    </div>
</div>

<br>
<hr>
<br>

<div class="panel panel-default" >
<div style="text-align: center;" class="panel-heading">
  <p class="panel-title" style="font-size:45px; font-weight:bold;font-family:Vivaldi;" >Our Location</p>
</div>
</div>

<div class="row" style="width: 100%">

	<div class="col-sm-2"></div>
	<div class="col-sm-8">
		<div class="mapouter"><div class="gmap_canvas"><iframe width="900" height="400" id="gmap_canvas" src="https://maps.google.com/maps?q=D-7%2CSouth%20Extension%20Plaza%202%2CGuneet%20Kashyap%20Marg%2C%20Road%2CBlock%20E%2C%20South%20Extension%20II%2C%20New%20Delhi%2C%20Delhi%20110049&t=&z=14&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>webdesign <a href="http://www.pureblack.de">http://www.pureblack.de</a></div><style>.mapouter{overflow:hidden;height:400px;width:900px;}.gmap_canvas {background:none!important;height:400px;width:900px;}</style></div>
	</div>
</div>

<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>

</body>
</html>