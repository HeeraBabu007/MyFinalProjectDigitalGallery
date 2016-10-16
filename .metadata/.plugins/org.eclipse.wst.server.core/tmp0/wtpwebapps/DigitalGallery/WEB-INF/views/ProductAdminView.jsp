<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="resources/My_Design/angular.min.js"></script>

<%@ include file="AdminHeader.jsp"%>

<script>
	var prod1 = ${mylist1};
	var prod2 = ${mylist2};
	var prod3 = ${mylist3};
	angular.module('repeatSample', []).controller('repeatController',
			function($scope) {
				$scope.mylist1 = prod1;
				$scope.mylist2 = prod2;
				$scope.mylist3 = prod3;

				$scope.sort = function(keyname) {
					$scope.sortKey = keyname; //set the sortKey to the param passed
					$scope.reverse = !$scope.reverse; //if true make it false and vice versa
				}

			});
</script>

<c:if test="${!checkk}">

<div class="container" ng-app="repeatSample">

	<div class="row">
		<div
			class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			<sf:form role="form" action="insertproduct" commandName="productadmin" method="post" modelAttribute="productadmin"  enctype="multipart/form-data">
				<h2>
					Please See the all Products<small>It's All and always will
						be for Admin</small>
				</h2>
				<hr class="colorgraph">
				<div class="row">
					<div class="row">
						<div class="col-xs-12">
						   <div class="form-group col-xs-12">
						    
                                 <sf:input type="file" path="pimage" class="form-control input-lg" 
                                 placeholder="file" tabindex="1" 
									title="minimum length for ProductDiscription is 1"/>
									</div>
						   
							<sf:input path="productname"
									class="form-control input-lg" placeholder="productname"
									tabindex="1" pattern=".{1,15}" required="true"
									title="minimum length for productname is 5"></sf:input>
						</div>
						<div class="form-group col-xs-6">
						<sf:input path="prize"
									class="form-control input-lg" placeholder="prize"
									tabindex="1" pattern=".{1,15}" required="true"
									title="minimum length for prize is 1"></sf:input>

					</div>
					<div class="form-group col-xs-6">
					<sf:input path="stock"
									class="form-control input-lg" placeholder="stock"
									tabindex="1" pattern=".{1,15}" required="true"
									title="minimum length for stock is 1"></sf:input>
				</div>
				<div class="form-group col-xs-12">
				<sf:input path="discrption"
									class="form-control input-lg" placeholder="discrption"
									tabindex="1" pattern=".{1,15}" required="true"
									title="minimum length for ProductDiscription is 1"></sf:input>
									</div>
			
			   <div class="form-group col-xs-6">
			  <sf:label path="categoryid">categoryid</sf:label>
			  <sf:select path="categoryid" class="form-control input-sm" ng-controller="repeatController">
			  <option ng-repeat="product in mylist1" value="{{product.categoryid}}">{{product.categoryName}}</option>
			  </sf:select>
			   </div>
			   
			      <div class="form-group col-xs-6">
			  <sf:label path="supplierid">supplierid</sf:label>
			  <sf:select path="supplierid" class="form-control input-sm" ng-controller="repeatController">
			  <option ng-repeat="product in mylist2" value="{{product.supplierid}}">{{product.suppliername}}</option>
			  </sf:select>
			   </div>
			   
			   
			   <div class="col-xs-12">
				<input type="submit" value="Get-Products"
				class="btn btn-primary btn-block btn-lg" tabindex="7">
				</div>
			   </div>	   
									
			</sf:form>
		</div>
	</div>
</div>

</c:if>

<c:if test="${checkk}">

<div class="container" ng-app="repeatSample">

	<div class="row">
		<div
			class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			<sf:form role="form" action="plzNowUpdatedproducts" commandName="productadmin" method="post" >
				<h2>
					Please Update Products<small>It's All and always will
						be for Admin</small>
				</h2>
				<hr class="colorgraph">
				<div class="row">
					<div class="row">
						<div class="col-xs-12">
						<div class="form-group col-xs-12">
						   <sf:input type="file" path="pimage" class="form-control input-lg" 
                                 placeholder="file" tabindex="1" 
									title="minimum length for ProductDiscription is 1"/>
									</div>
						
				
						<sf:input path="productid"
									class="form-control input-lg" placeholder="productid"
									tabindex="1" pattern=".{1,15}" required="true"
									title="minimum length for productid is 5"></sf:input>
						</div>
						
							<sf:input path="productname"
									class="form-control input-lg" placeholder="productname"
									tabindex="1" pattern=".{1,15}" required="true"
									title="minimum length for productname is 5"></sf:input>
						</div>
						<div class="form-group col-xs-6">
						<sf:input path="prize"
									class="form-control input-lg" placeholder="prize"
									tabindex="1" pattern=".{1,15}" required="true"
									title="minimum length for prize is 1"></sf:input>

					</div>
					<div class="form-group col-xs-6">
					<sf:input path="stock"
									class="form-control input-lg" placeholder="stock"
									tabindex="1" pattern=".{1,15}" required="true"
									title="minimum length for stock is 1"></sf:input>
				</div>
				<div class="form-group col-xs-12">
				<sf:input path="discrption"
									class="form-control input-lg" placeholder="discrption"
									tabindex="1" pattern=".{1,15}" required="true"
									title="minimum length for ProductDiscription is 1"></sf:input>
									</div>
			
			   <div class="form-group col-xs-6">
			  <sf:label path="categoryid">categoryid</sf:label>
			  <sf:select path="categoryid" class="form-control input-sm" ng-controller="repeatController">
			  <option ng-repeat="product in mylist1" value="{{product.categoryid}}">{{product.categoryName}}</option>
			  </sf:select>
			   </div>
			   
			      <div class="form-group col-xs-6">
			  <sf:label path="supplierid">supplierid</sf:label>
			  <sf:select path="supplierid" class="form-control input-sm" ng-controller="repeatController">
			  <option ng-repeat="product in mylist2" value="{{product.supplierid}}">{{product.suppliername}}</option>
			  </sf:select>
			   </div>
			   
			
									
			   <div class="col-xs-12">
				<input type="submit" value="Get-Update-Products"
				class="btn btn-primary btn-block btn-lg" tabindex="7">
				</div>
			   </div>	   
									
			</sf:form>
		</div>
	</div>


</c:if>




<div ng-controller="repeatController">
<div class="row">
<div class="input-group col-md-12">

<h2 align="center">Search Products</h2>
<input type="text" class="search-query form-control" placeholder="Search" ng-model="searchText" />
</div>

<div class="row">
<div ng-controller="repeatController">
<table class="table table-responsive">
<thead>
					<tr>
						<th>productid</th>

						<th>productname</th>
						<th>prize</th>
						<th>stock</th>
						<th>categoryid</th>
						<th>supplierid</th>
						<th>discrption</th>
						<th>Image</th>
					</tr>
				</thead>
				<tr ng-repeat="product in mylist3|filter:searchText">
				<td><a href="ProductDescription?pid={{product.productid}}">{{product.productid}}</a></td>
					<td><a href="ProductDescription?pid={{product.productname}}">{{product.productname}}</a></td>
					<td><a href="ProductDescription?pid={{product.prize}}">{{product.prize}}</a></td>
					<td><a href="ProductDescription?pid={{product.stock}}">{{product.stock}}</a></td>
					<td><a href="ProductDescription?pid={{product.categoryid}}">{{product.categoryid}}</a></td>
					<td><a href="ProductDescription?pid={{product.supplierid}}">{{product.supplierid}}</a></td>
					<td><a href="ProductDescription?pid={{product.discrption}}">{{product.discrption}}</a></td>
					<td><a href="Deleteproduct?pid={{product.productid}}">Delete</a></td>
					<td><a href="plzUpdatedproduct?pid={{product.productid}}"><img src="./resources/My_Design/{{product.productid}}.jpg" height="50px" 
                     width="50px">Update</a></td>
					



</tr>
</table>
</div>
</div>
</div>













<%@ include file="Footer.jsp"%>
