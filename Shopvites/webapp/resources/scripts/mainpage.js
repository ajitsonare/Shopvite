var app = angular.module('myApp', ['uiSlider']);

//angularjs controller declare
app.controller('myCtrl', function ($scope , $http) {
	$http({
		method : 'POST',
		url : 'datafetch',
		headers : {
			'Content-Type': 'application/json', 
	        'Accept': 'application/json'
		},
		data:{
		    "name": name,
		}
	}).then(function mySuccess(response) {
		console.log('success');
		$scope.productItems = response.data;
		}),
	function myError(response) {
    	console.log('error');
	};
    //initial initialization of lower and upper bound for search by price
    $scope.lowerPriceBound = 0;
    $scope.upperPriceBound = 250000;

    //All database for men's and women's and electronics
    $scope.products = [
        $scope.electronicsLCDProducts = [
            {
                productId: 301, name: 'Sony', description: 'LCD Electronics', qty: 1, image: 'https://cdn.pixabay.com/photo/2013/07/13/01/08/monitor-155158__340.png'
                , price: '154000', discount: '45000'
            },
            { productId: 302, name: 'LG', description: 'LCD Electronics', qty: 1, image: 'http://images.all-free-download.com/images/graphicthumb/set_of_electronics_lcd_tv_elements_vector_526261.jpg', price: '180000', discount: '40000' },
            { productId: 303, name: 'Toshiba', description: 'LCD Electronics', qty: 1, image: 'http://images.all-free-download.com/images/graphicthumb/tv_and_monitor_03_vector_155105.jpg', price: '110000', discount: '35000' },
            { productId: 304, name: 'Philips', description: 'LCD Electronics', qty: 1, image: 'http://images.all-free-download.com/images/graphicthumb/tvs_and_monitors_01_vector_154995.jpg', price: '190999', discount: '29999' },
            { productId: 305, name: 'Hitachi', description: 'LCD Electronics', qty: 1, image: 'http://images.all-free-download.com/images/graphicthumb/led_tv_06_vector_180678.jpg', price: '190000', discount: '34000' },
            { productId: 306, name: 'Panasonic', description: 'LCD Electronics', qty: 1, image: 'https://media.gettyimages.com/photos/family-watching-television-in-living-room-picture-id507832501', price: '250000', discount: '35000' }
        ],
        $scope.electronicsCamraProducts = [
            {
                productId: 311, name: 'Kodak', description: 'Camra Electronics', qty: 1, image: 'https://rukminim1.flixcart.com/image/704/704/camera/s/r/f/kodak-pixpro-az251-point-shoot-original-imadqd48kyk8dtj5.jpeg?q=70'
                , price: '1500', discount: '500'
            },
            { productId: 312, name: 'Philips', description: 'Camra Electronics', qty: 1, image: 'https://brain-images-ssl.cdn.dixons.com/0/7/10172870/u_10172870.jpg', price: '23000', discount: '1320' },
            { productId: 313, name: 'Samsung', description: 'Camra Electronics', qty: 1, image: 'https://d2pa5gi5n2e1an.cloudfront.net/global/images/product/digitalcameras/SAMSUNG_WB2200F/SAMSUNG_WB2200F_L_1.jpg', price: '17380', discount: '1920' },
            { productId: 314, name: 'Sony', description: 'Camra Electronics', qty: 1, image: 'http://www.dreams.metroeve.com/wp-content/uploads/2017/04/dreams.metroeve_cameras-dreams-meaning.jpg', price: '13200', discount: '1200' },
            { productId: 315, name: 'Canon', description: 'Camra Electronics', qty: 1, image: 'https://multimedia.bbycastatic.ca/multimedia/products/500x500/104/10416/10416668.jpg', price: '19500', discount: '3700' },
            { productId: 316, name: 'Nikon', description: 'Camra Electronics', qty: 1, image: 'https://images-na.ssl-images-amazon.com/images/I/71mlXrzcMOL._SX355_.jpg', price: '25000', discount: '4500' }
        ],
        $scope.electronicsExtraProducts = [
            {
                productId: 321, name: 'Samsung', description: 'Extra Electronics', qty: 1, image: 'https://media.gettyimages.com/photos/refrigerator-picture-id185072493'
                , price: '17500', discount: '4500'
            },
            { productId: 322, name: 'Whirlpool', description: 'Extra Electronics', qty: 1, image: 'https://media.gettyimages.com/photos/refrigerator-picture-id185297636', price: '18000', discount: '3400' },
            { productId: 323, name: 'Haier', description: 'Extra Electronics', qty: 1, image: 'https://media.gettyimages.com/photos/two-door-silver-stylish-digital-refrigerator-picture-id182218342', price: '41100', discount: '4300' },
            { productId: 324, name: 'LG', description: 'Extra Electronics', qty: 1, image: 'https://media.gettyimages.com/photos/washing-machine-picture-id136848238', price: '900', discount: '200' },
            { productId: 325, name: 'Frigidaire', description: 'Extra Electronics', qty: 1, image: 'https://media.gettyimages.com/photos/rendering-of-white-washing-machine-front-view-picture-id184268095', price: '21900', discount: '1700' },
            { productId: 326, name: 'Blomberg', description: 'Extra Electronics', qty: 1, image: 'https://media.gettyimages.com/photos/silver-fridge-an-oven-and-dryer-lined-up-side-by-side-picture-id165789002', price: '23500', discount: '7500' }
        ],
        $scope.mensJeansProducts = [
            {
                productId: 101, name: 'LEVIS', description: 'Mens Jeans', qty: 1, image: 'https://sc02.alicdn.com/kf/HTB19h8TLXXXXXaPaXXXq6xXFXXXX/Wholesale-Denim-Branded-Name-Authentic-Men-Biker.jpg'
                , price: '1500', discount: '500'
            },
            { productId: 102, name: 'DIESEL', description: 'Mens Jeans', qty: 1, image: 'https://sc02.alicdn.com/kf/HTB1N6jhXYWi31JjSZJiq6zRspXaX/2017-Unique-Style-Mens-Skinny-Round-Ripped.jpg', price: '1800', discount: '400' },
            { productId: 103, name: 'Van Heusen', description: 'Mens Jeans', qty: 1, image: 'https://sc01.alicdn.com/kf/HTB1J7NQHpXXXXXLaXXXq6xXFXXXv/skinny-comfort-ultra-stretch-wash-funky-men.jpg', price: '1100', discount: '300' },
            { productId: 104, name: 'LEE', description: 'Mens Jeans', qty: 1, image: 'https://sc02.alicdn.com/kf/HTB1scgWfTXYBeNkHFrdq6AiuVXat/Royal-wolf-denim-garment-factory-dark-blue.jpg', price: '900', discount: '200' },
            { productId: 105, name: 'SPYKAR', description: 'Mens Jeans', qty: 1, image: 'https://sc01.alicdn.com/kf/HTB1EL7SKVXXXXXYaXXXq6xXFXXXh/2016-Thin-Section-Men-Funky-Pencil-Jeans.jpg', price: '1900', discount: '700' },
            { productId: 106, name: 'PEPE JEANS', description: 'Mens Jeans', qty: 1, image: 'https://sc01.alicdn.com/kf/HTB1neqZSVXXXXahXpXXq6xXFXXX5/OEM-High-quality-98-cotton-2-spandex.jpg', price: '2500', discount: '500' }
        ],
        $scope.mensShirtsProducts = [
            {
                productId: 111, name: 'Peter England', description: 'Mens shirts', qty: 1, image: 'https://sc01.alicdn.com/kf/HT1iOXdFGJkXXagOFbXY/220128135/HT1iOXdFGJkXXagOFbXY.jpg'
                , price: '1500', discount: '500'
            },
            { productId: 112, name: 'Tommy Hilfiger', description: 'Mens shirts', qty: 1, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHKOYYEqKJeNb5zp4sOk_t2jIjKGIQYozOG1RvJwIgTB6eCtEG3Q', price: '1800', discount: '400' },
            { productId: 113, name: 'WRANGLER', description: 'Mens shirts', qty: 1, image: 'https://i.pinimg.com/564x/b3/c3/8e/b3c38ef6806d514f60a9449411d31db6.jpg', price: '1100', discount: '300' },
            { productId: 114, name: 'John Players', description: 'Mens shirts', qty: 1, image: 'https://i.pinimg.com/564x/86/97/50/869750a701166786d965b2bd47642e96.jpg', price: '900', discount: '200' },
            { productId: 115, name: 'Raymond', description: 'Mens shirts', qty: 1, image: 'https://i.pinimg.com/564x/af/04/64/af0464dc5ca7e0b462a2d283fc09fafe.jpg', price: '1900', discount: '700' },
            { productId: 116, name: 'Park Avenue', description: 'Mens shirts', qty: 1, image: 'https://i.pinimg.com/564x/d1/64/8a/d1648af360055a90b84f227072325e33.jpg', price: '2500', discount: '500' }
        ],
        $scope.mensShoesProducts = [
            {
                productId: 121, name: 'Adidas', description: 'Mens shoes', qty: 1, image: 'https://images.pexels.com/photos/5601/fashion-shoes-white-snickers.jpg?auto=compress&cs=tinysrgb&h=350'
                , price: '1500', discount: '500'
            },
            { productId: 122, name: 'Nike', description: 'Mens shoes', qty: 1, image: 'https://images.pexels.com/photos/637076/pexels-photo-637076.jpeg?auto=compress&cs=tinysrgb&h=350', price: '1800', discount: '400' },
            { productId: 123, name: 'Lee Cooper', description: 'Mens shoes', qty: 1, image: 'https://images.pexels.com/photos/266840/pexels-photo-266840.jpeg?auto=compress&cs=tinysrgb&h=350', price: '1100', discount: '300' },
            { productId: 124, name: 'Timberland', description: 'Mens shoes', qty: 1, image: 'https://images.pexels.com/photos/267301/pexels-photo-267301.jpeg?auto=compress&cs=tinysrgb&h=350', price: '900', discount: '200' },
            { productId: 125, name: 'Puma', description: 'Mens shoes', qty: 1, image: 'https://images.pexels.com/photos/812875/pexels-photo-812875.jpeg?auto=compress&cs=tinysrgb&h=350', price: '1900', discount: '700' },
            { productId: 126, name: 'Wolverine', description: 'Mens shoes', qty: 1, image: 'https://images.pexels.com/photos/413672/pexels-photo-413672.jpeg?auto=compress&cs=tinysrgb&h=350', price: '2500', discount: '500' }
        ],
        $scope.womensJeansProducts = [
            {
                productId: 201, name: 'Van Heusen', description: 'Womens Jeans', qty: 1, image: 'https://mobile-cdn.123rf.com/300wm/heckmannoleg/heckmannoleg1606/heckmannoleg160600031/58556151-fashion-portrait-of-beautiful-young-woman-with-red-hair-girl-in-blouse-and-jeans-jewelry-and-hairsty.jpg?ver=6'
                , price: '1500', discount: '500'
            },
            { productId: 202, name: 'Classic Polo', description: 'Womens Jeans', qty: 1, image: 'https://image.dhgate.com/0x0/f2/albu/g4/M00/82/B8/rBVaEFe9rnKAcfupAALbwosRT0M305.jpg', price: '1800', discount: '400' },
            { productId: 203, name: 'Roadster', description: 'Womens Jeans', qty: 1, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqwnWZmkr-_ZAQVvLST6DfKOCJgjWDSsoQpzVpkP0uxX5IB7xW', price: '1100', discount: '300' },
            { productId: 204, name: 'Duke', description: 'Womens Jeans', qty: 1, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRklTi2yMcbOgoqZG0ojZUEKL2-8gLQcmOubncoTJw7Q57jWCUA_w', price: '900', discount: '200' },
            { productId: 205, name: 'WRANGLER', description: 'Womens Jeans', qty: 1, image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8-9qxtRbcOeNDG2wZgQqUdFeDIPZtMSz30MRY3cdT4hrVQI8J', price: '1900', discount: '700' },
            { productId: 206, name: 'PEPE JEANS', description: 'Womens Jeans', qty: 1, image: 'https://ae01.alicdn.com/kf/HTB1YexZKFXXXXXOXpXXq6xXFXXX2/NewArrival-2018-Korean-Style-Women-s-Cowboy-Hole-Jeans-Classic-Denim-Casual-Loose-Cross-Pants-Plus.jpg', price: '2500', discount: '500' }
        ],
        $scope.womensShirtsProducts = [
            {
                productId: 211, name: 'Tommy Hilfiger', description: 'Womens shirts', qty: 1, image: 'https://rukminim1.flixcart.com/image/312/312/top/y/f/h/m-ep1602-pink-rare-original-imaeqct5fbzghe4q.jpeg?q=70'
                , price: '1500', discount: '500'
            },
            { productId: 212, name: 'Van Heusen', description: 'Womens shirts', qty: 1, image: 'https://img1.junaroad.com/uiproducts/14447377/std_300_0-1510752213.jpg', price: '1800', discount: '400' },
            { productId: 213, name: 'Louis Philippe', description: 'Womens shirts', qty: 1, image: 'https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Fcdn-image.realsimple.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fportrait_435x518%2Fpublic%2Fimage%2Fimages%2Fdaily-finds%2Ffashion%2F0312%2Fmng-jacket_300.jpg%3Fitok%3DtiuW040L&w=800&q=85', price: '1100', discount: '300' },
            { productId: 214, name: 'LEE', description: 'Womens shirts', qty: 1, image: 'https://images.voonik.com/57720612/mds-jeans-dark-blue-denim-shirt-for-women-mds-jeans-product.jpg?1507031028&sizes=250px', price: '900', discount: '200' },
            { productId: 215, name: 'SPYKAR', description: 'Womens shirts', qty: 1, image: 'https://i.pinimg.com/564x/09/25/92/0925924d3fd843bf8db46518e3f70e0a.jpg', price: '1900', discount: '700' },
            { productId: 216, name: 'LEE', description: 'Womens shirts', qty: 1, image: 'http://www.girlshue.com/wp-content/uploads/2016/07/unnamed-file-3330.jpg', price: '2500', discount: '500' }
        ],
        $scope.womensShoesProducts = [
            {
                productId: 221, name: 'Jimmy Choo', description: 'Womens shoes', qty: 1, image: 'https://images.pexels.com/photos/66856/women-s-shoes-red-pin-fashion-66856.jpeg?auto=compress&cs=tinysrgb&h=350'
                , price: '1500', discount: '500'
            },
            { productId: 222, name: 'Gucci', description: 'Womens shoes', qty: 1, image: 'https://images.pexels.com/photos/54621/shoes-red-stock-add-54621.jpeg?auto=compress&cs=tinysrgb&h=350', price: '1800', discount: '400' },
            { productId: 223, name: 'Christian Louboutin', description: 'Womens shoes', qty: 1, image: 'https://images.pexels.com/photos/52574/pexels-photo-52574.jpeg?auto=compress&cs=tinysrgb&h=350', price: '1100', discount: '300' },
            { productId: 224, name: 'Walter Steiger', description: 'Womens shoes', qty: 1, image: 'https://images.pexels.com/photos/142837/pexels-photo-142837.jpeg?auto=compress&cs=tinysrgb&h=350', price: '900', discount: '200' },
            { productId: 225, name: 'NIKE', description: 'Womens shoes', qty: 1, image: 'https://m.media-amazon.com/images/G/01/Shopbop/p/prod/products/goose/goose2043711887/goose2043711887_q6_2-0._UX357_QL90_.jpg', price: '1900', discount: '700' },
            { productId: 226, name: 'Lotus', description: 'Womens shoes', qty: 1, image: 'https://images.pexels.com/photos/376636/pexels-photo-376636.jpeg?auto=compress&cs=tinysrgb&h=350', price: '2500', discount: '500' }
        ]

    ];
    
    //cart and total initial values
    $scope.cart = [];
    $scope.total = 0;
  
    //itemTypes array
    $scope.itemTypes = ['electronicsLCDProducts','electronicsCamraProducts','electronicsExtraProducts','mensJeansProducts','mensShirtsProducts','mensShoesProducts','womensJeansProducts','womensShirtsProducts','womensShoesProducts'];
    
    //initialize CartData
    $scope.initializeCartData = function(){
    	alert('initialize cart');
    	$http({
    		method : "POST",
    		url : "dataFetchFromCart",
    		headers : {
    			'Content-Type' : 'application/json'
    		},
    		data :{
    			name : name
			}
    	}).then(function mySuccess(response) {
			$scope.cart = response.data;
		}),
		function myError(response) {
    	
    	alert("data is = "+response.data);
    	};
    
    }
    
 
    //this method return an object based on particular Id
    var findItemById = function (items, id) {
        var returnObject;
        for (var i = 0; i < items.length; i++) {
            if (items[i].id === id) {
                returnObject = items[i];
            }
        }
        return returnObject;
    };

    //this method initialize in searchText for filter
    $scope.searchByDisc = function (type) {
        $scope.searchText = type;
    };

    //return total cost after count
    $scope.getCost = function (item) {
        return item.qty * (item.price - item.discount);
    };

    //this method used for add the items
    $scope.addItem = function (itemToAdd) {
        var found = findItemById($scope.cart, itemToAdd.id);
        if (found) {
            found.qty += itemToAdd.qty;
            $http({
    			method : 'POST',
    			url : 'updateInCarts',
    			headers : {
    				'Content-Type': 'application/json', 
    		        'Accept': 'application/json'
    			},
    			data : {
					itemId : itemToAdd.id, 
					name : itemToAdd.name,
					price : itemToAdd.price,
					qty :found.qty,
					discount : itemToAdd.discount
					
					}
    		}).then(function mySuccess(response) {
    			$scope.productItems = response.data;
    			}),
    		function myError(response) {
    	    	console.log('error');
    		};
        }
        else {
            $scope.cart.push(angular.copy(itemToAdd));
            $http({
    			method : 'POST',
    			url : 'saveInCarts',
    			headers : {
    				'Content-Type': 'application/json', 
    		        'Accept': 'application/json'
    			},
    			data : {
    				itemId : itemToAdd.id, 
					name : itemToAdd.name,
					price : itemToAdd.price,
					qty :itemToAdd.qty,
					discount : itemToAdd.discount
					}
    		}).then(function mySuccess(response) {
    			alert('sent');
    			$scope.productItems = response.data;
    			}),
    		function myError(response) {
    	    	console.log('error');
    		};
        }
    };
    
    //calculation for check total cart ballance
    var t = function () {
        var sum = 0;
        for (var i = 0; i < $scope.cart.length; i++) {
            sum += $scope.cart[i].qty * ($scope.cart[i].price - $scope.cart[i].discount);
        }
        return sum;
    };
    //returning total ballance in cart
    $scope.getTotal = function() {
        var total = t();
        return total;
    };

    //clear the all items in  cart
    $scope.clearCart = function () {
        $scope.cart.length = 0;
       
        $http({
			method : 'DELETE',
			url : 'deleteAllItemInCart',
			data :{
    			name : name
    			},
    		headers : {
    			'Content-Type' : 'application/json'
    		}
        
		}).then(function mySuccess(response) {
			console.log('success');
			}),
		function myError(response) {
	    	console.log('error');
		};
    };

    //length of the cart
    $scope.cartLength = function () {
        return $scope.cart.length;
    };

    //remove cart items one by one
    $scope.removeItem = function (item) {
        var index = $scope.cart.indexOf(item);
        $scope.cart.splice(index, 1);
    	$http({
			method : 'DELETE',
			url : 'deleteItemInCart',
			headers : {
				'Content-Type': 'application/json', 
		        'Accept': 'application/json'
			},
			data:{
			    itemId : item.id
			}
		}).then(function mySuccess(response) {
			console.log('success');
			}),
		function myError(response) {
	    	console.log('error');
		};
        
    };
    
  //for change the value of quantity in cart
    $scope.edit = {};
    $scope.update = function(item){
        $scope.edit[item.productId] = false;
        $http({
			method : 'POST',
			url : 'updateInCarts',
			headers : {
				'Content-Type': 'application/json', 
		        'Accept': 'application/json'
			},
			data : {
				itemId : item.id, 
				name : item.name,
				price : item.price,
				qty :item.qty
				}
		}).then(function mySuccess(response) {
			alert('sent');
			$scope.productItems = response.data;
			}),
		function myError(response) {
	    	console.log('error');
		};
        
    };
    $scope.modify = function(item){
        $scope.edit[item.productId] = true;
    };
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   
    //function for fetchDataFrom Database

	
	//for remove items on browser
	$scope.removeProductItem = function(item){
		$scope.productItems.splice(item,1);
	}
	
	$scope.item ={}
	// for remove items from server
	$scope.deleteItem = function(id){
		$http({
			method : 'DELETE',
			url : 'deleteData',
			headers : {
				'Content-Type': 'application/json', 
		        'Accept': 'application/json'
			},
			data:{
			    "id": id,
			}
		}).then(function mySuccess(response) {
			console.log('success');
			}),
		function myError(response) {
	    	console.log('error');
		};
	}
	//for modify the items
	$scope.modifyItem = function(item){
		$scope.item[item.id] = true; 
	}
	 //for update item in db and UI
	 $scope.updateItem = function(item){
		 $scope.item[item.id] = false; 
		 item.image = $scope.imageValue;
		    $http({
				method : "POST",
				url : "dataUpdate",
				headers : {
					'Content-Type' : 'application/json'
				},
				data : {
					id : item.id, 
					name : item.name,
					description : item.description,
					price : item.price,
					discount : item.discount,
					image : item.image,
					qty :item.qty,
					itemType : item.itemType
					}
			}).then(function mySuccess(response) {
				alert("the data is update successfully in backend" + "  "+ $response.data);
				}),
			function myError(response) {
				alert("Some error in successfully added ");
				        
	    };
	 }

	 //save item in db 
	 $scope.saveItem = function(item){
		 $scope.item[item.id] = false; 
		 item.image = $scope.imageValue;
		    $http({
				method : "POST",
				url : "dataStore",
				headers : {
					'Content-Type' : 'application/json'
				},
				data : {
					id : item.id, 
					name : item.name,
					description : item.description,
					price : item.price,
					discount : item.discount,
					image : item.image,
					qty :item.qty,
					itemType : item.itemType
					}
			}).then(function mySuccess(response) {
				alert("the data is update successfully in backend" + "  "+ $scope.response.data);
				}),
			function myError(response) {
				alert("Some error in successfully added ");
				        
	    };
	 }
	 
	   
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	  //for change image url in string formate
	 function readURL(input) {
		    var url = input.value;
		    var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
		    $scope.imageValue = url.substring(url.lastIndexOf('\\') + 1);
	
	 }
	 //for readURL method exicution
	 $('#upload').change(function(){
		 alert('exicute upper method');
	         readURL(this);
	     });
	  $scope.uploadImage = function () {
	        alert("Changed");
	    }
	 
	 $scope.onChange = function(x){
		 alert('atleast exicute');
	 }
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	 
});

//custome filter for search by price
app.filter('priceFilter', function () {
    return function (items, lowerPriceBound, upperPriceBound) {
        var filterResult = [];
        angular.forEach(items, function (item) {
            if (item.price - item.discount >= lowerPriceBound && item.price - item.discount <= upperPriceBound) {
                filterResult.push(item);
            }
        });
        return filterResult;
    };
});