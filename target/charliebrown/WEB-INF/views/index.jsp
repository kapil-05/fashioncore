<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" type="type/png" href="google.png" />
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="icon" href="favicon.ico" type="image/gif" sizes="16x16">
  
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>
<body id="grad1">
<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="up">&larr;</i></button>
<nav class="navbar navbar-inverse">
  <div class="container-fluid" style="background-color:#0078D7;">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"><p style="color:white; font-family:AR CHRISTY; font-size:36px;">FashionCORE</p></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" ; "hover1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#"><p style="color:white; ">Home</p></a></li>
        <li class="dropdown">
          <a  class="dropdown-toggle" data-toggle="dropdown" href="#" onmouseover="click();"><p style="color:white;">MENS <span class="caret"></span></p></a>
          <ul class="dropdown-menu">
            <li><a href="#">Casual Shirts</a></li>
            <li><a href="#">Formals Shirts</a></li>
			<li><a href="#">Blazers & Coats</a></li>
			<li><a href="#">Suits</a></li>
			<li><a href="#">Trousers</a></li>
			<li><a href="#">Kurtas & Kurta Sets</a></li>
			<li><a href="#">Sherwanis</a></li>
			<li><a href="#">Jackets </a></li>
			<li><a href="#">Formal Trousers</a></li>
			<li><a href="#">Track Pants</a></li>
          </ul>
        </li>
		<li class="dropdown">
          <a  class="dropdown-toggle" data-toggle="dropdown" href="#" onmouseover="click();"><p style="color:white;">KIDS <span class="caret"></span></p></a>
          <ul class="dropdown-menu">
            <li><a href="#">Indian Wear</a></li>
            <li><a href="#">Kids Shirts</a></li>
			<li><a href="#">Trousers</a></li>
          </ul>
        </li>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
		<li><a href="#"><p style="color:white;"><span class="glyphicon glyphicon-log-in"></span> Login</p></a></li>
        <li><a href="#"><p style="color:white;"><span class="glyphicon glyphicon-user"></span>Register</p></a></li>        
      </ul>
    </div>
  </div>
  </nav>
  <!----CAROUSEL---->
  <div class="container"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
	  <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" style="height:500px; margin-top:50px;">
      <div class="item active">
        <img src="resources/images/ikat.jpg" alt="Shirts" style="width:100%;">
      </div>

      <div class="item">
        <img src="resources/images/peter.jpg" alt="Formals" style="width:100%;">
      </div>      
	
		<div class="item" style="margin-top:70px;">
        <img src="resources/images/wardrobe.jpg" alt="Outing" style="width:100%;">
      </div>
	  
	  <div class="item">
        <img src="resources/images/daniel.jpg" alt="Bussiness" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br>
<br>
<br>
<br>
<h3 style="color:black; font-family:Arial Rounded MT Bold; font-size:30px; margin-left:80px"><b>TOP BRANDS</b></h3>
<br>
<div class="row" style=" width:95%; margin-left:5%">
    <div class="col-sm-4"><a href="#"><img src="resources/images/jackjones.jpg"></a></div>
    <div class="col-sm-4"><a href="#"><img src="resources/images/hrx.jpg"></a></div>
    <div class="col-sm-4"><a href="#"><img src="resources/images/tommy.jpg"></a></div>
</div>
<br>
<br>
<br>
<br>
<div class="row" style=" width:95%; margin-left:5%">
    <div class="col-sm-4"><a href="#"><img src="resources/images/uspolo.jpg"></a></div>
    <div class="col-sm-4"><a href="#"><img src="resources/images/roadster.jpg"></a></div>
    <div class="col-sm-4"><a href="#"><img src="resources/images/mastandharbour.jpg"></a></div>
</div>
<br>
<br>
<br>
<br>
<h3 style="color:black; font-family:Arial Rounded MT Bold; font-size:30px; margin-left:80px"><b>TOP CATEGORIES</b></h3>
<br>
<div class="row" style=" width:95%; margin-left:5%">
    <div class="col-sm-3"><a href="#"><img src="resources/images/Casual-Blazer.jpg"><b><h4 style="margin-left:50px">MENS BLAZER</h4></b></a></div>
    <div class="col-sm-3"><a href="#"><img src="resources/images/Solid-Casual-Shirt.jpg"><b><h4 style="margin-left:50px">CASUAL SHIRTS</h4></b></a></div>
    <div class="col-sm-3"><a href="#"><img src="resources/images/mens-shirt.jpg"><b><h4 style="margin-left:80px">SHIRTS</h4></b></a></div>
	<div class="col-sm-3"><a href="#"><img src="resources/images/Men-Kurtas.jpg"><b><h4 style="margin-left:50px">MENS KURTAS</h4></b></a></div>
</div>
<br>
<br>
<br>
<br>
<div class="row" style=" width:95%; margin-left:5%;">
    <div class="col-sm-3"><a href="#"><img src="resources/images/kids-indian.jpg"><b><h4 style="margin-left:30px">KIDS INDIAN WEAR</h4></b></a></div>
    <div class="col-sm-3"><a href="#"><img src="resources/images/Kids-Boys-Blue.jpg"><b><h4 style="margin-left:50px">KIDS SHIRTS</h4></b></a></div>
    <div class="col-sm-3"><a href="#"><img src="resources/images/Sherwani.jpg"><b><h4 style="margin-left:70px">SHERWANI</h4></b></a></div>
	<div class="col-sm-3"><a href="#"><img src="resources/images/mens-jacket.jpg"><b><h4 style="margin-left:50px">MENS JACKETS</h4></b></a></div>
</div>
<br>
<br>
<br>
<br>
<div class="row" style=" width:95%; margin-left:5%">
    <div class="col-sm-3"><a href="#"><img src="resources/images/Men-Suits.jpg"><b><h4 style="margin-left:80px">SUITS</h4></b></a></div>
    <div class="col-sm-3"><a href="#"><img src="resources/images/Men-Trousers.jpg"><b><h4 style="margin-left:70px">TROUSERS</h4></b></a></div>
    <div class="col-sm-3"><a href="#"><img src="resources/images/Regular-Trousers.jpg"><b><h4 style="margin-left:30px">CASUAL TROUSERS</h4></b></a></div>
	<div class="col-sm-3"><a href="#"><img src="resources/images/Track-Pants.jpg"><b><h4 style="margin-left:50px">TRACK PANTS</h4></b></a></div>
</div>  

<footer>
<div style="background-color: #F8F8F8;">
<hr>
<div class="row" style="width:95%; margin-left:5%;">
		<div class="col-sm-2"><b>USEFUL LINKS</b></div>
		<div class="col-sm-7"><b>KEEP IN TOUCH</b></div>
		<div class="col-sm-3"></div>
	</div>
	<br>
	<div class="row" style="width:95%; margin-left:5%;">
		<div class="col-sm-2"><a href="#">About Us</a></div>
		<div class="col-sm-4">
			<div>
				<a href="https://www.facebook.com/" class="fa fa-facebook" target="_blank"></a>
				<a href="https://twitter.com/" class="fa fa-twitter" target="_blank"></a>
				<a href="https://accounts.google.com/" class="fa fa-google"target="_blank"></a>
			</div> 
		</div>
		<div class="col-sm-6"><img src="resources/images/100.jpg">
		<b>100% ORIGINAL </b>guarantee for all products at fashioncore.com</div>
	</div>
	<div class="row" style="width:95%; margin-left:5%;">
		<div class="col-sm-2"><a href="#">Contact Us</a></div>
		<div class="col-sm-4"></div>
		<div class="col-sm-6"><img src="resources/images/30days.jpg">
		<b>Return within 30 days</b>guarantee for all products at fashioncore.com</div>
	</div>
	<div class="row" style="width:95%; margin-left:5%;">
		<div class="col-sm-2"><a href="#">FAQ</a></div>
		<div class="col-sm-4"></div>
		<div class="col-sm-6"><img src="resources/images/freehome.jpg"><b>Get free delivery </b> for every order above Rs. 1199</div>
	</div>
	<div class="row" style="width:95%; margin-left:5%;">
		<div class="col-sm-2"><a href="#">T&C</a></div>
		
	</div>
	<br>
	<hr>

<h5 style="margin-left:80px"><b>POPULAR SEARCHES</b></h5>
<br>
<h5 style="margin-left:80px">Mens Formal Shirts | Mens Trousers | Mens Casual Shirts | Blazers | Coats | Suits | Mens Trousers | Kurtas | Kurtas Sets | Sherwani | Jackets | 
<br>
<br>
Nehru Jackets | Mens Formal Trousers | Track Pants | Kids Indian Wear | Kids Shirts | Kids Trousers
<br>
<br>
<hr>
<br>
<div class="row" style=" width:95%;">
		<div class="col-sm-4">In Case of Any Concern, <a href="#">Contact Us</a></div>
		<div class="col-sm-6"> © 2017 www.fashioncore.com. All rights reserved</div>
		<div class="col-sm-2">A Fashion Comapany</div>
</div>
<br>
<br>

</div>
</footer>
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>
</body>
</html>