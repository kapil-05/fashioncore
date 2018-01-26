<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="resources/images/favicon.jpg" type="image/jpeg" sizes="16x16">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FashionCore</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<script>

var app = angular.module("myApp", []).controller("myCtrl", function($scope,$http) {
   
    
   $scope.data=[];
    
    $http(	{
    			method: 'POST',
	      		url: 'DeleteCartItems',
	      		 headers : {'Content-Type':'application/x-www-form-urlencoded'}
    			}).then(function(response){
			    	console.log(response.data);
			    
			    	
			    	
    			});
    
    $scope.Delete=function(arg){
    	
    	alert(arg);
    	
    	var json={"id":arg};
    	
    	console.log( JSON.stringify(json) );
    	
    	$http(	{
			method: 'POST',
      		url: 'deletefromcart',
      		data:JSON.stringify(json),
      		 headers : {'Content-Type':'application/json'}
			}).then(function(response){
		    	console.log(response.data);
		    
		    	//Fetch Again
		    	$http(	{
	    			method: 'POST',
		      		url: 'getAllCartItems',
		      		 headers : {'Content-Type':'application/x-www-form-urlencoded'}
	    			}).then(function(response){
				    	console.log(response.data);
				    
				    	$scope.data = response.data;
				    	
	    			});
		    	
			});
    	
    }
    
});


</script>

</head>

<body ng-app="myApp" ng-controller="myCtrl">

<jsp:include page="/WEB-INF/views/Navbar.jsp"></jsp:include>

<a href="${pageContext.request.contextPath}/"><p style="font-family:AR CHRISTY; font-size:50px; text-align: center;">FashionCORE</p></a>

<br>
<br>

<h1 style="margin:auto; text-align:center"><i class="material-icons" style="font-size:48px;color:black">check_circle</i>Thank You For Submit Your Order.</h1>

<br>
<br>
<br>
<br>

<a href="${pageContext.request.contextPath}/"><input type="submit" value="Home" class="btn btn-success" style="width: 50%; margin-left: 350px;"></a>

<br>
<br>

<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>
</body>
</html>