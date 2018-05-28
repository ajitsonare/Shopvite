<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>

<head>
<title>Sample</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="resources/scripts/jquery.js"></script>
<script type="text/javascript" src="resources/scripts/slider.js"></script>
<script type="text/javascript" src="resources/scripts/mainpage.js"></script>
<link rel="stylesheet" href="resources/stylesheets/style.css">
<link rel="stylesheet" href="resources/stylesheets/bootstrap4.css">

</head>

<body>
    <div class="container-fluid" ng-app="myApp" ng-controller="myCtrl">

        <nav class="navbar navbar-expand-lg fixed-top" role="navigation">

            <a class="navbar-brand" href="#">Shopvite</a>
            <ul class="nav navbar-nav">
                <li class="nav-item">
                    <a href="#" class="nav-link">Men's</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">Women's</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">kid's</a>
                </li>
                <li class="nav-item">
                    <a href="#About-us" class="nav-link">About-us</a>
                </li>
                <li>
                        <div class="form-group">
                            <input type="text" class="form-control" size="35" ng-model="searchText" placeholder="Search">
                        </div>
                </li>
            </ul>

            <ul class="nav navbar-nav flex-row justify-content-between ml-auto" id="loginSignup" ng-hide="loginSignup">
                <li class="dropdown order-1">
                    <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn btn-outline-secondary dropdown-toggle">Sign-up
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right mt-2">
                        <li class="px-3 py-2">
                            <form class="form" role="form" action="signup" method="post">
                                <div class="form-group">
                                    <input id="emailInput" name="name" placeholder="Name" class="form-control form-control-sm" type="text" required="">
                                </div>
                                <div class="form-group">
                                    <input id="passwordInput"  name="username" placeholder="Username" class="form-control form-control-sm" type="text" required="">
                                </div>
                                <div class="form-group">
                                    <input id="rePasswordInput" name="password" placeholder="Password" class="form-control form-control-sm" type="text" required="">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-block">sign-up</button>
                                </div>
                            </form>
                        </li>
                    </ul>
                </li>
                <li class="dropdown order-2">
                    <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn btn-outline-secondary dropdown-toggle">Login
                        <span class="caret"></span>
                    </button>
                  <ul class="dropdown-menu dropdown-menu-right mt-2">
						<li class="px-3 py-2">
							<form class="form" role="form" action="login" method="post" >
								<div class="form-group">
									<input name="username" placeholder="user email"
										class="form-control form-control-sm" type="text" required="">
								</div>
								<div class="form-group">
									<input name="password" placeholder="Password"
										class="form-control form-control-sm" type="text" required="">
								</div>
								<div class="form-group">
									<button type="submit" class="btn btn-primary btn-block"
										id="loginButton" >Login</button>
								</div>
								<div class="form-group text-center">
									<small> <a href="#" data-toggle="modal"
										data-target="#modalPassword">Forgot password?</a>
									</small>
								</div>
							</form>
						</li>
					</ul>
                </li>
            </ul>
        </nav>
        <div id="section1">
            <div class="startShop" id="startShop">
                <h1>Shopvite</h1>
                <hr>
                <h4>India's No.1 Shopping site</h4>
                <hr>
                <a href="#section2">
                    <h2 id="shopNow">Shop Now</h2>
                </a>
            </div>
        </div>
        <div id="section2">

            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item">
                        <img src="https://images11.voonik.com/campaigns/W_Master1.jpg"
                            alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img src="https://mommypoints.boardingarea.com/wp-content/uploads/2018/05/Southwest-summer-sale-49.jpg.png" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img src="https://cdn.pixabay.com/photo/2017/11/29/13/28/a-discount-2986181__340.jpg"
                            alt="Third slide">
                    </div>
                    <div class="carousel-item active">
                            <img src="https://images.koovs.com/uploads/home/Summer-Style-Unisex-VBufUQ.jpg"
                                alt="Forth slide">
                        </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
                <h3>Feachered Products</h3>
                <div class="row">
                <div class="box" Id="shirtBox" ng-repeat="jeans in womensJeansProducts |filter:searchText ">
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
                <div class="box" Id="shirtBox" ng-repeat="jeans in womensShirtsProducts | filter:searchText">
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
               <p><b> ©2018 Shopvite. All Rights Reserved. Site Created by Ajit Sonare</b>.</p>
            </div>
        </div>
    </div>
</body>

</html>