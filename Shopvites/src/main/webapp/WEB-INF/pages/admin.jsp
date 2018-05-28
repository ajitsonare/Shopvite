<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="true"%>
<html>
<head>
<title>MainPage</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="resources/scripts/slider.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.js"></script>
<script type="text/javascript" src="resources/scripts/mainpage.js"></script>
<script type="text/javascript" src="resources/scripts/admin.js"></script>
<link rel="stylesheet" href="resources/stylesheets/style.css">
<link rel="stylesheet" href="resources/stylesheets/bootstrap4.css">
<link rel="stylesheet" href="resources/stylesheets/mainpage.css">
<link rel="stylesheet" href="resources/stylesheets/slider.css">
<link rel="stylesheet" href="resources/stylesheets/admin.css">
</head>
<body>
<div class="container-fluid" ng-app="myApp" ng-controller="myCtrl">
	<nav class="navbar navbar-expand-lg  fixed-top" role="navigation">

		<a class="navbar-brand" href="#">Shopvite</a> <ul class="nav navbar-nav">
		  <li class="nav-item">
                    <a href="#" class="nav-link" id="addItems">Add-Product</a>
          </li>

				<li><c:if
						test="${pageContext.request.userPrincipal.name != null}">
						<h4>Welcome : ${pageContext.request.userPrincipal.name}</h4>
						<h5>
							<a href="<c:url value="/j_spring_security_logout" />"> Logout</a>
						</h5>
					</c:if>
				</li>
	</nav>

	<!-- Alternative 
	<c:if test="${pageContext.request.remoteUser != null}">
		<h2>Welcome : ${pageContext.request.remoteUser}</h2>
	</c:if>
 	-->
	<h1>${status}</h1>
		<div id="storeTable">
		<!-- 	<form action="datastore" method="post" enctype="multipart/form-data"> -->
				<table class="table table-striped table-bordered" id="addTable">
					<tr>
						<td><b>Description:</td>
						<td><input type="text" name="description" ng-model="item.description"/> </b></td>
					</tr>
					<tr>
						<td><b>Discount:</td>
						<td><input type="number" name="discount" ng-model="item.discount"/> </b></td>
					</tr>
					<tr>
						<td><b>Image: </td>
						<td><input type="file" name="file" ng-model="item.image" id="upload" /> </b></td>
					</tr>
					<tr>
						<td><b>Name:</td>
						<td><input type="text" name="name" ng-model="item.name"/> </b></td>
					</tr>
					<tr>
						<td><b>Price:</td>
						<td><input type="number" name="price" ng-model="item.price"/> </b></td>
					</tr>
					<tr>
						<td><b>Quantity </td>
						<td><input type="number" name="qty" ng-model="item.qty"/> </b></td>
					</tr>
					<tr>
						<td><b>itemType</td>
						<td><input type="text" name="itemType" ng-model="item.itemType"/> </b>
						<select ng-model="item.itemType" ng-options="item for item in itemTypes" ng-init="item.itemType = item.item">
							<option value="">select-categories</option>
						</select></td>
					</tr>
					<tr>
						<td><b> <input type="submit" class="btn btn-primary" ng-click="saveItem(item);" name="submit" />
						</b></td>
					</tr>
				</table>
		<!-- 	</form> -->
		</div>
		
<div>

			<table class="table table-striped table-bordered tableUpdate">
				<tr>
					<th><b>Id</b></th>
					<th><b>Name</b></th>
					<th><b>description</b></th>
					<th><b>Image</b></th>
					<th><b>Quantity</b></th>
					<th><b>discount</b></th>
					<th><b>price</b></th>
					<th><b>ItemType</b></th>
					<th><b>Delete</b></th>
					<th><b>Update</b></th>
				</tr>
				<tr ng-repeat="productItem in productItems">
					<td><div ng-hide="item[productItem.id]">
							<b>{{productItem.id}}</b>
						</div>
						<div ng-show="item[productItem.id]">
							<input type="number" name="id" ng-model="productItem.id" size="4"/></div></td>
					
					<td><div ng-hide="item[productItem.id]">
							<b>{{productItem.name}}</b>
						</div>
						<div ng-show="item[productItem.id]">
							<input type="text" name="name"  ng-model="productItem.name"/></div></td>
					
					<td><div ng-hide="item[productItem.id]">
							<b>{{productItem.description}}</b>
						</div>
					<div ng-show="item[productItem.id]">
							<input type="text" name="discription" ng-model="productItem.description"/></div></td>
					
					<td><div ng-hide="item[productItem.id]"  id="imageBox">
							<b><img src="<c:url value="/resources/images/{{productItem.image}}" />" /></b>
						</div>
						<div ng-show="item[productItem.id]">
							<input type="file" ng-model="productItem.image" onchange="angular.element(this).scope().uploadImage()" />
						</div>
					</td>
					
					<td><div ng-hide="item[productItem.id]">
							<b>{{productItem.qty}} </b>
						</div>
						<div ng-show="item[productItem.id]">
							<input type="number" name="qty" ng-model="productItem.qty" size="4"/></div></td>
					
					<td><div ng-hide="item[productItem.id]">
							<b>{{productItem.discount}} </b>
						</div>
						<div ng-show="item[productItem.id]">
							<input type="number" name="discount" ng-model="productItem.discount" size="4"/></div></td>
					
					<td><div ng-hide="item[productItem.id]">
							<b>{{productItem.price}}</b>
						</div>
						<div ng-show="item[productItem.id]">
							<input type="number" name="price" ng-model="productItem.price" size="4"/></div></td>
					
					<td><div ng-hide="item[productItem.id]"> 
							<b>{{productItem.itemType}} </b>
						</div>
						<div ng-show="item[productItem.id]">
							<input type="text" name="itemType" ng-model="productItem.itemType"/></div></td>
					
					<td ng-click="removeProductItem(item);deleteItem(productItem.id);">delete</td>
					<td><div ng-show="item[productItem.id]" ng-click="updateItem(productItem);"><b>update</b></div>
						<button ng-hide="item[productItem.id]" ng-click="modifyItem(productItem);">modify</button>
					</td>
				</tr>
			</table>
		</div>

</div>

</body>
</html>