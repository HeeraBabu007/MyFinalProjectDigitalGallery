<script src="resources/My_Design/angular.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>
<script>


var order = ${data};
angular.module('myApp', []).controller('myCtrl',
			function($scope) {
				$scope.pro = order;
               
				
			});
</script>
</head>
<body>

<div class="Container" ng-app='myApp'>
<div class="row thumbnail">
			<div class="col-12">
                 <center><h2><b>Thank you!!!!....Your Recipt is Here  </b></h2></center>
				<div ng-app="repeatSample" ng-controller="myCtrl">
				<table class="table table-hover">
				<thead>
							<tr><th>Order No -</th>
								<th>{{pro.orderId}}</th>
							</tr>
							<tr>
								<th>Order Status</th>
								<th>{{pro.orderStatus}}</th>
							</tr>

							<tr>
								<th>Order Date</th>
								<th>{{pro.orderDate}}</th>
							</tr>
							<tr>
								<th>Customer  ID</th>
								<th>{{pro.userId}}</th>
							</tr>
                                  <tr>
								<th>Amount Payable</th>
								<th>{{pro.grandTotal}}</th>
							</tr>
							  <tr>
								<th>Payment Method</th>
								<th>{{pro.paymentMode}}</th>
							</tr>
							  <tr>
								<th>Delivery Address</th>
								<th>{{pro.address}}</th>
							</tr>
						</thead>

					</table>
						</div>

	
			
				</div>
			</div>
				
		</div>	
  <jsp:include page="Footer.jsp"></jsp:include>