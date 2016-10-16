<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="resources/My_Design/angular.min.js"></script>
  <jsp:include page="header.jsp"></jsp:include>

<script>

	var prod3 = ${cart};
	angular.module('repeatSample', []).controller('repeatController',['$scope', function($scope)
			 {
		
				$scope.products = prod3;
				$scope.value;

				 $scope.change=function(value)
                 {
                	 $scope.products.qty=Number($scope.value);
                 };
				

    }]);
</script>

<div class="container">
<c:choose>
<c:when test="${empty count}">
List is empty
</c:when>
<c:otherwise>
<sf:form class="form-horizontal" method="get" action="updateqty">
<div ng-app="repeatSample" ng-controller="repeatController">
<table class="table table-bordered table-hover table-striped">
<thead>
					<tr>
						
                        <th>Image</th>
                        <th>productname</th>
						<th>Quantity</th> 
						<th>prize</th>
				                                       
						<th>total</th>
						
						
					</tr>
				</thead>
				<c:forEach items="${cartitm}" var="product">
				<form action="updateqty" method="get">
				<tr >
				<td><img src="resources/My_Design/${product.productid}.jpg" height="50px" 
                  width="50px"></td>
				<td>${product.productname}</td>
				   <td><input type="text" name="qty" value="${product.qty}" />
				   <input type="hidden" name="pid" value="${product.productid}"/>&nbsp;&nbsp;&nbsp; <input type="submit" value="update"></td>
				   <td>${product.prize}</td>
				   <td>${product.qty*product.prize}</td>
					
                    <td><a href="Removecart?pid=${product.productid}">Remove</a></td>
                     
                    </tr>
				</form>
						</c:forEach>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>


							<td>GrandTotal:${sessionScope.grandtotal}</td>
						</tr>
	</table>
	</sf:form>
				
				

</c:otherwise>

</c:choose>


<div class="container">
	<a href="DisplayProduct"><h1>Continue Shopping</h1></a>
    <a href="HeyOrderConfirmation"><h1>Place Your Order</h1></a>		


                  </div>
                  <jsp:include page="Footer.jsp"></jsp:include>