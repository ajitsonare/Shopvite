<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <title>MainPage</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="resources/scripts/slider.js"></script>
    <script type="text/javascript" src="resources/scripts/jquery.js"></script>
    <script type="text/javascript" src="resources/scripts/mainpage.js"></script>
    <link rel="stylesheet" href="resources/stylesheets/style.css">
    <link rel="stylesheet" href="resources/stylesheets/bootstrap4.css">
    <link rel="stylesheet" href="resources/stylesheets/mainpage.css">
    <link rel="stylesheet" href="resources/stylesheets/slider.css">
</head>

<body class="mainpage">
    <div class="container-fluid" ng-app="myApp" ng-controller="myCtrl">
        <nav class="navbar navbar-expand-lg  fixed-top" role="navigation">

            <a class="navbar-brand" href="#">Shopvite</a>
            <ul class="nav navbar-nav">
                <li class="nav-item">
                    <a href="#" class="nav-link" id="mens">Men's</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link" id="womens">Women's</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link"> kid's</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link" id="electronics">Electronic's</a>
                </li>
                <li>
                         <div class="form-group">
                            <input type="text" class="form-control" size="30" placeholder="Search" ng-model="searchText">
                        </div>
                </li>
                <li class="nav-item">
                    <a href="/SpringSecurityHelloWorld/admin" class="nav-link" id="adminPage" ng-if="'${user.username}' === 'ajit'">Manage-Products</a>
                </li>
            </ul>

            <ul class="nav navbar-nav flex-row justify-content-between ml-auto">
                <li class="dropdown order-1">
                    <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn btn-outline-secondary dropdown-toggle">My profile
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right mt-2">
                        <li class="px-3 py-2">
                            <b>${user.name}</b>
                        </li>
                        <li class="px-3 py-2">
                            <form action="logout">
								<input type="submit" value="Logout" id="demo">
							</form>
                        </li>
                    </ul>
                </li>
                <li class="dropdown order-2">
                    <button id="cartInfo">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB9ACJ9p5_9N_z56Ke36loIy4so7bQmwyKOBSVqLpXsbfpnPjS_A" ng-click="initializeCartData();"> 
                        <b ng-show="cartLength();"> &nbsp;{{cartLength()}}</b>
                    </button>
                </li>
            </ul>
        </nav>
        <div class="row">
            <div class="col-sm-2">
                <div id="electronicsCata" class="list-group">
                    <div class="itemsDiv">
                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('LCD');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i> LCD</h4>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('Camra');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i> Cameras</h4>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('Extra');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i>Extra </h4>
                        </a>

                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('electronics');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i> All </h4>
                        </a>
                    </div>
                    <div class="sliderDiv">
                        <br>
                        <lable>
                            <b>Filter-By-Price</b>
                        </lable>
                        <br>
                        <slider floor="0" ceiling="250000" ng-model-low="lowerPriceBound" ng-model-high="upperPriceBound"></slider>
                        <br>
                        <b>Lower-Range : </b>
                        <br>
                        <input type="text" ng-model="lowerPriceBound" > &nbsp;
                        <br>
                        <b>Upper-Range :</b>
                        <br/>
                        <input type="text" ng-model="upperPriceBound" >
                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                    </div>
                </div>
                <div id="mensCata" class="list-group">
                    <div class="itemsDiv">
                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('Mens Jeans');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i>jeans</h4>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('Mens shirts');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i>shirts</h4>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('Mens shoes');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i>shoes</h4>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('Mens');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i> All </h4>
                        </a>
                    </div>
                    <div class="sliderDiv">
                        <br>
                        <lable>
                            <b>Filter-By-Price</b>
                        </lable>
                        <br>
                        <slider floor="0" ceiling="250000" ng-model-low="lowerPriceBound" ng-model-high="upperPriceBound"></slider>
                        <br>
                        <b>Lower-Range : </b>
                        <br>
                        <input type="text" ng-model="lowerPriceBound"> &nbsp;
                        <br>
                        <b>Upper-Range :</b>
                        <br/>
                        <input type="text" ng-model="upperPriceBound">
                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                    </div>
                </div>
                <div id="womensCata" class="list-group">
                    <div class="itemsDiv">
                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('Womens Jeans');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i>Jeans</h4>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('womens shirts');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i>Top</h4>
                        </a>

                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('womens shoes');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i>shoes</h4>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 ng-click="searchByDisc('womens');">
                                <i class="fa fa-chevron-right" aria-hidden="true"></i> All </h4>
                        </a>
                    </div>
                    <div class="sliderDiv">
                        <br>
                        <lable>
                            <b>Filter-By-Price</b>
                        </lable>
                        <br>
                        <slider floor="0" ceiling="250000" ng-model-low="lowerPriceBound" ng-model-high="upperPriceBound"></slider>
                        <br>
                        <b>Lower-Range : </b>
                        <br>
                        <input type="text" ng-model="lowerPriceBound"> &nbsp;
                        <br>
                        <b>Upper-Range :</b>
                        <br/>
                        <input type="text" ng-model="upperPriceBound">
                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                    </div>
                </div>
            </div>

            <div class="col-sm-10">
                <h5 class="filterClass">Filter By Brand:
                    <input type="text" ng-model="searchType.name">
                </h5>
                <h5><b class="filterClass" id="sortByCataDropdownSort">Sort-by:</b><select name="repeatSelect" class="filterClass" id="sortByCataDropdown" ng-model="orderByType">
                        <option value="price"><b>Price</b></option>
                        <option value="discount"><b>Discount</b></option>
                        <option value="" ><b>Popularity</b></option>
                </select></h5>
                <div id="mySidenav" class="sidenav">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav();">&times;</a>
                    <div id="image">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwPtzZYMXZLlqAfRFJFEz3gjbsG01vyNinxqcZk7reCt2N4Kti9Q">
                    </div>
                    <br><b>Your Cart</b>
                        <hr>
                        <b> Total: {{ getTotal() | currency:"&#8377;" }}</h3>
                        </b>
                    <br><br>
                    <h4>
                            <input type="text" ng-model="searchCartItems" placeholder="Filter Items">
                        </h4>
                        <div id="scrollableTable">
                           <table class="cartTable">
                            <tr>
                                <td class="tableItemName">
                                    <strong>Items <strong>
                                </td>
                                <td>
                                    <strong>Qty</strong>
                                </td>
                                <td>
                                    <strong>Price <strong>
                                </td>
                                <td>
                                    <strong>Remove <strong>
                                </td>
                                <td>
                                   <strong>update</strong>
                                </td>
                            </tr>
                       <tr ng-repeat="item in cart | filter:searchCartItems | orderBy:'name'">
                            <td class="tableItemName">
                                <h6>{{item.name}}</h6>
                            </td>
                            <td>
                                <h6 ng-hide="edit[item.productId]">{{ item.qty}}<h6>

                                <h6 ng-show="edit[item.productId]">
                                    <input type="number" ng-model="item.qty" size="3"  ng-minlength="1" ng-maxlength="2" min="1" max="50">
                                    <h6>
                            </td>
                            <td>
                                <h6>{{(getCost(item) | currency:"&#8377;") }}<h6>
                            </td>
                            <td>
                                <button class="btn btn-primary" ng-click="removeItem(item);">rem</button>
                            </td>
                            <td>
                                <button ng-hide="edit[item.productId]" ng-click="modify(item);" class="btn btn-primary">mod</button>
                                <button ng-show="edit[item.productId]" ng-click="update(item);" class="btn btn-primary">upd</button>
                            </td>
                        </tr>
                    </table> 
                   </div>
                       <br>
                        <button class="btn-danger btn-xs" ng-click="clearCart();">clear Cart</button>
                
                        </br>
                      <span> <p>PAY NOW</p></span>
                       
                </div>
          <!--       <div class "arrangeProducts">
                        <div class="row" ng-repeat="product in products">
                            <div class="box forMargin" Id="shirtBox" ng-repeat="jeans in product | priceFilter:lowerPriceBound:upperPriceBound | filter:searchText | filter:searchType | orderBy:orderByType">
                                <h3>{{jeans.name}}</h3>
                                <img src='{{jeans.image}}' class="itemImages">
                                <br>
                                <p>
                                   <b>MRP:&nbsp;</b> <strike>{{jeans.price | currency:"&#8377;"}}</strike>&nbsp; &nbsp; <b>Off:&nbsp;</b>{{jeans.discount |currency:"&#8377;"}}
                                    <br><b>sellingPrice:&nbsp;</b>{{jeans.price-jeans.discount |currency:"&#8377;"}}
                                    <br>
                                    <b>{{jeans.description}}</b>
                                    <br>
                                    <b>Qty:</b>
                                    <input type="text" ng-model="jeans.qty" size="4"> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                    <button class="btn btn-primary" ng-click="addItem(jeans)" >Add To Cart</button>
                                </p>
                            </div>
                        </div>
                </div> -->
                <div class= "arrangeProducts">
              
                        <div class="row" >
                          <div class="box forMargin" Id="shirtBox" ng-repeat="jeans in productItems | priceFilter:lowerPriceBound:upperPriceBound | filter:searchText | filter:searchType | orderBy:orderByType" >
                                <h3>{{jeans.name}}</h3>
                                <img src="<c:url value="/resources/images/{{jeans.image}}" />" class="itemImages">
                                <br>
                                <p>
                                   <b>MRP:&nbsp;</b> <strike>{{jeans.price | currency:"&#8377;"}}</strike>&nbsp; &nbsp; <b>Off:&nbsp;</b>{{jeans.discount |currency:"&#8377;"}}
                                    <br><b>sellingPrice:&nbsp;</b>{{jeans.price-jeans.discount |currency:"&#8377;"}}
                                    <br>
                                    <b>{{jeans.description}}</b>
                                    <br>
                                    <b>Qty:</b>
                                    <input type="text" ng-model="jeans.qty" size="4"> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                    <button class="btn btn-primary" ng-click="addItem(jeans)" >Add To Cart</button>
                                </p>
                           </div>
                               
                        </div>
                </div>
            </div>
            
        </div>
        <div class="footer" id="About-us">
            <div class="foot-links">
                <ul>
                    <h3>Services</h3>
                    <hr>
                    <li>
                        <a href="https://w3layouts.com/">Home</a>
                    </li>
                    <li>
                        <a href="https://w3layouts.com/about">About</a>
                    </li>
                    <li>
                        <a href="//w3layouts.com/contact">Contact Us</a>
                    </li>
                </ul>
                <ul>
                    <h3>Policy</h3>
                    <hr>
                    <li>
                        <a href="https://w3layouts.com/privacy-policy/">Privacy Policy</a>
                    </li>
                    <li>
                        <a href="https://w3layouts.com//terms-and-conditions/">Terms & Conditions</a>
                    </li>
                    <li>
                        <a href="https://w3layouts.com/faqs">FAQ</li>
                    </a>
                    <li>
                        <a href="//support.w3layouts.com">Support</a>
                    </li>
                </ul>
                <ul class="connectFoot">
                  <h3>Connect</h3>
                   <hr>
                    <a href="https://like2have.it/shopdressup" target="_blank">
                                <i class="fa fa-instagram"></i>
                    </a>
                    <a href="https://www.facebook.com/ShopDressUp/" target="_blank">
                                <i class="fa fa-facebook-official"></i>
                        <a href="https://twitter.com/ShopDressUp" target="_blank">
                                    <i class="fa fa-twitter-square"></i>
                        </a>
                        <a href="http://www.youtube.com/user/shopdressup" target="_blank">
                                    <i class="fa fa-google-plus-square"></i>
                        </a>
                </ul>
                <hr id="rights">
                  <p><b><span class="copyWrite">©</span>2018 Shopvite. All Rights Reserved. Site Created by Ajit Sonare</b>.</p>
            </div>
        </div>
    </div>
    
    </div>
    
</body>


</html>