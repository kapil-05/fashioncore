<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="icon" href="resources/images/favicon.jpg" type="image/jpeg" sizes="16x16">

<title>FashionCore</title>

<style>

#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  border: none;
  outline: none;
  background-color: #4B4C4D;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius:50%;
}

#myBtn:hover {
  opacity: 0.8;
}
i {
  display: inline-block;
  padding: 1px;
}

.up {
    transform: rotate(90deg);
}

/*GROW*/
.grow img {

	width:332px;
    height:152px;
  transition: all 1s ease;
}
 
.grow img:hover {
  width: 350px;
  height: 170px;
}


</style>

<jsp:include page="/WEB-INF/views/head.jsp"></jsp:include>

</head>

<body>

<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-arrow-up"></i></button>

<jsp:include page="/WEB-INF/views/Navbar.jsp"></jsp:include>

 <!----CAROUSEL---->
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
	  <li data-target="#myCarousel" data-slide-to="3"></li>
	  <li data-target="#myCarousel" data-slide-to="4"></li>
	  <li data-target="#myCarousel" data-slide-to="5"></li>
	  <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/Carousel1.jpg" alt="Shirts" style="width:100%;">
      </div>

      <div class="item">
        <img src="resources/images/Carousel2.jpg" alt="Formals">
      </div>      
	
		<div class="item">
        <img src="resources/images/Carousel3.jpg" alt="Outing" style="width:100%;">
      </div>
	  
	  <div class="item">
        <img src="resources/images/Carousel4.jpg" alt="Bussiness" style="width:100%;">
      </div>
	  
	  <div class="item">
        <img src="resources/images/Carousel5.jpg" alt="Bussiness" style="width:100%;">
      </div>
	  
	  <div class="item">
        <img src="resources/images/Carousel6.jpg" alt="Bussiness" style="width:100%;">
      </div>
	  
	  <div class="item">
        <img src="resources/images/Carousel7.jpg" alt="Bussiness" style="width:100%;">
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
<br>
<br>
<br>
<br>

<div class="panel panel-default" >
  <div style="text-align: center;" class="panel-heading">
  <p class="panel-title" style="font-size:45px; font-weight:bold;font-family:Vivaldi;" >Brands In Focus</p>
  </div>
  
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <img src="resources/images/hrx.jpg"  style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
    
	<div align="center" class="col-sm-4">
      <img src="resources/images/jackjones.jpg" style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
	
	<div align="center" class="col-sm-4">
      <img src="resources/images/mastandharbour.jpg" style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
	
</div>

<br>
<br>
<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <img src="resources/images/uspolo.jpg" style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
    
	<div align="center" class="col-sm-4">
      <img src="resources/images/roadster.jpg" style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
	
	<div align="center" class="col-sm-4">
      <img src="resources/images/tommy.jpg" style="border: 2px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage">
    </div>
	
</div>
<br>
<br>
</div>

<br>

<div class="panel panel-default" >
  <div style="text-align: center;" class="panel-heading">
  <p class="panel-title" style="font-size:45px; font-weight:bold;font-family:Vivaldi;" >What Are You Looking For</p>
  </div>

<br>
<div class="grow">
<div class="row" style=" width:100%;">
	<div class="col-sm-4" align="center">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Formal Shirts"><img src="resources/images/MenFormalShirt.jpg"  style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
    
	<div class="col-sm-4" align="center">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens 3 Piece"><img src="resources/images/Men3Piece.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div class="col-sm-4" align="center">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Blazer"><img src="resources/images/MenBlazer.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
</div>

<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Coats"><img src="resources/images/MenCoats.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Indo Western"><img src="resources/images/MenIndo.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Jacket"><img src="resources/images/MenJacket.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;"class="img-responsive indexcatimage"></a>
    </div>
</div>

<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Jeans"><img src="resources/images/MenJeans.png" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Kurta"><img src="resources/images/MenKurta.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Sherwani"><img src="resources/images/MenSherwani.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
</div>

<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Suits"><img src="resources/images/MenSuits.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Casual Pants"><img src="resources/images/MenCasualPant.png" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Formal Trousers"><img src="resources/images/MenFormalTrouser.png" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
</div>

<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens T-Shirts"><img src="resources/images/MenTShirt.png" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Mens Casual Shirts"><img src="resources/images/MenCasualShirt.png" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Kids Jeans"><img src="resources/images/Kidjeans.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
</div>

<br>
<br>

<div class="row" style=" width:100%;">
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Kids Shirts"><img src="resources/images/KidShirt.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Kids Pants"><img src="resources/images/KidPants.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
	
	<div align="center" class="col-sm-4">
      <a href="${pageContext.request.contextPath}/CategoryProduct/Kids Suits"><img src="resources/images/KidSuits.jpg" style="border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></a>
    </div>
    
</div>
</div>

<br>
<br>
</div>
 
<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>

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