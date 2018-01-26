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
    
$scope.data = [];
    
    $scope.total = 0;
    
    $http(	{
    			method: 'POST',
	      		url: 'getAllCartItems',
	      		 headers : {'Content-Type':'application/x-www-form-urlencoded'}
    			}).then(function(response){
			    	console.log(response.data);
			    
			    	$scope.data = response.data;
			    	
			    	for( var x = 0; x < $scope.data.length ; x++ )
			    	{
			    		$scope.total += $scope.data[x].price *  $scope.data[x].qty;
			    	}
			    	
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

<a href="${flowExecutionUrl}&_eventId=BillingDetail" class="btn btn-primary" style="float:left; margin-left:20px;">Back</a>

<a href="${flowExecutionUrl}&_eventId=OrderSubmit" class="btn btn-primary" style="float:right; margin-right:20px;">Submit Your Order</a>

<br>
<br>

<table class="table table-striped " style="margin: auto; width: 80%;">
	<thead>
		<tr>
			<th></th>
			<th></th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Sub Total</th>		
		</tr>
	</thead>
	
	<tbody>
		<tr ng-repeat="x in data">
			
			<td><img src="{{x.img}}" style="width:100px; height:150px; border: 1px solid black; box-shadow: 8px 8px 6px grey;" class="img-responsive indexcatimage"></td>
			<td>{{x.pname}}</td>			
			<td>&#8377; {{x.price}}</td>
			<td>{{x.qty}}</td>
			<td>&#8377; {{x.price*x.qty}}</td>
			
		</tr>
			<td></td>
			<td></td>
			<td></td>
			<td><span style="font-weight:bold;">Grand Total:-</span></td>
			<td><span style="font-weight:bold;">&#8377; {{total}}</span></td>
		<tr>
			
		</tr>
	</tbody>

</table>

<br>
<br>

<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-4"><h3>Shipping Address:</h3></div>
		<div class="col-sm-2"></div>
		<div class="col-sm-4"><h3>Billing Address:</h3></div>
</div>

<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-4"><h3>{{data[0].shipaddr}}</h3></div>
		<div class="col-sm-2"></div>
		<div class="col-sm-4"><h3>{{data[0].billaddr}}</h3></div>
</div>
<br>
<br>

<a href="${flowExecutionUrl}&_eventId=OrderSubmit" class="btn btn-primary" style="width: 80%; margin-left: 135px;">Submit Your Order</a>

<br>
<br>

<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>

</body>
</html>