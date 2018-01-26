<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
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
    
    $scope.billadd='';
    $scope.shipadd='';

    $scope.done = false;
    
    $http(	{
    			method: 'POST',
	      		url: 'getAddress',
	      		 headers : {'Content-Type':'application/x-www-form-urlencoded'}
    			}).then(function(response){
			    	console.log(response.data);
			    
			    	$scope.data = response.data;
			   
			    	$scope.billadd=response.data.shipaddr;
			        $scope.shipadd=response.data.billaddr;
			        
			        console.log( $scope.shipadd );
			        console.log( $scope.billadd );
    			});
    
 $scope.Update=function(){
    	
	 	var json = {"ship":$scope.shipadd,"bill":$scope.billadd};
	 
    	$http(	{
			method: 'POST',
      		url: 'UpdateCartToDB',
      		data:JSON.stringify(json),
      		 headers : {'Content-Type':'application/json'}
			}).then(function(response){
		    	console.log(response.data);
		    
		    	if(response.data.msg=="Updated")
		    	{
		    		$scope.done = true;	    	
		    	}
		    	
		    
		    	
			});
    	
    }
});


</script>

</head>

<body ng-app="myApp" ng-controller="myCtrl">

<jsp:include page="/WEB-INF/views/Navbar.jsp"></jsp:include>

<a href="${pageContext.request.contextPath}/"><p style="font-family:AR CHRISTY; font-size:50px; text-align: center;">FashionCORE</p></a>

<a href="${flowExecutionUrl}&_eventId=ViewCart" class="btn btn-primary" style="float:left; margin-left:20px;">Back</a>

<a href="${flowExecutionUrl}&_eventId=ShippingDetail" class="btn btn-primary" style="float:right; margin-right:20px;">Continue</a>

<br>
<br>
<br>
<br>

<table class="table table-striped " style="margin: auto; width: 50%;">
	
	<thead>
		<tr>
		<%
	      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		    if (auth != null && !auth.getName().equals("anonymousUser"))
		    {    
		    	String currUser=auth.getName();
		    	
		    	request.setAttribute("currUser", currUser);
		 %>
      		<th>${currUser}: (Shipping Address)</th>
			<th>${currUser}: (Billing Address)</th>
        <%
	    	}
		%>
				
		</tr>
	</thead>
	
	<tbody>
		<tr>
			<td><textarea rows="5" name="shipaddr"  class="form-control" ng-model="shipadd"></textarea></td>
			<td><textarea rows="5" name="billaddr" class="form-control" ng-model="billadd"></textarea></td>
		</tr>
	</tbody>
	
	<tbody>
		<tr>
			<td><button ng-click="Update()" class="btn btn-success">Edit</button></td>
			<td><button ng-click="Update()" class="btn btn-success">Edit</button></td>
		</tr>
	</tbody>

</table>

<br>
<br>
<br>
<br>

<h1 class="text text-success" ng-show='done' style="margin: auto; width: 80%; text-align: center;">Updated Successfully</h1>

<jsp:include page="/WEB-INF/views/Footer.jsp"></jsp:include>
</body>
</html>