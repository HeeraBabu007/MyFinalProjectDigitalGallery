
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<script src="resources/My_Design/angular.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<%@ include file="header.jsp" %>

<script>
var prod = ${details};
angular.module('repeatSample', []).controller('repeatController', function($scope)
 {
			            $scope.products=prod;
			   
			          $scope.sort = function(keyname)
			          {
			              $scope.sortKey = keyname;   //set the sortKey to the param passed
			              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
			          }
			              
			    });
</script>
			
			
			
		
	<div ng-app="repeatSample" ng-controller="repeatController">
	<div class="container" ng-model="searchText">
		<div class="row" >
			<div class="col-md-6">
				<a href=" ">
				<img src="./resources/My_Design/{{products.productid}}.jpg" height="600px" 
                     width="500px"/></a>
                     </div>
                     <div class="col-md-6">
			<h4>Productid:{{products.productid}}</h4>
			<h4>Product name: {{products.productname}}</h4> 
			<h4>Product description:{{products.discrption}} </h4>
			<h4>Product description:{{products.prize}} </h4>
			</div>
		
				      
			</div></div>
			</div>
			
			
<%@ include file="Footer.jsp"%>