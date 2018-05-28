package com.shopvite.web.controller.datastore;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shopvite.web.dao.CartDaoImpl;
import com.shopvite.web.dao.ProductDaoImpl;
import com.shopvite.web.model.Carts;
import com.shopvite.web.model.Users;
import com.shopvite.web.sessionprovider.SessionProvider;


@Controller
public class CartsdatastoreController {
	
	private static Logger logger = Logger.getLogger(CartsdatastoreController.class);
	
	
	@Autowired
	CartDaoImpl cartDaoImpl;
	
	
	@RequestMapping(value ="/saveInCarts" , consumes = MediaType.APPLICATION_JSON_VALUE , method=RequestMethod.POST)
	public @ResponseBody String saveInCarts( @RequestBody Carts cart) throws JsonProcessingException  {
		
		logger.info("inside carts" );
		Users user = (Users) SessionProvider.getSession().getAttribute("userObject");
		logger.info(user.getName());
		cart.setUsers(user);
		
		ObjectMapper mapper  = new ObjectMapper();
		String  cartJsonString = mapper.writeValueAsString(cart);
		
		logger.info(cartJsonString);
		cartDaoImpl.saveCart(cart);
		
		return "successfull data storation";
	}
	
	
	@RequestMapping(value ="/updateInCarts" , consumes = MediaType.APPLICATION_JSON_VALUE , method=RequestMethod.POST)
	public @ResponseBody String updateInCarts( @RequestBody Carts cart) throws JsonProcessingException  {
		
		logger.info("inside cartsUpdate" );
		Users user = (Users) SessionProvider.getSession().getAttribute("userObject");
		cart.setUsers(user);
		
		Carts cartObject = cartDaoImpl.getCartsByItemId(cart.getItemId());
		
		int id = cartObject.getId();
		cart.setId(id);
		ObjectMapper mapper  = new ObjectMapper();
		String  cartJsonString = mapper.writeValueAsString(cart);
		
		cartDaoImpl.updateCart(cart);
		
		return "successfull data storation";
		
		}
	@RequestMapping(value ="/deleteItemInCart" , consumes = MediaType.APPLICATION_JSON_VALUE ,  method=RequestMethod.DELETE)
	public @ResponseBody String deleteItemInCart(@RequestBody Carts cart) throws JsonProcessingException {
		
		logger.info("inside my delete item in cart");
		Carts cartObject = cartDaoImpl.getCartsByItemId(cart.getItemId());
		int id = cartObject.getId();
		cart.setId(id);
		Users user = (Users) SessionProvider.getSession().getAttribute("userObject");
		cart.setUsers(user);
		ObjectMapper mapper  = new ObjectMapper();
		String  cartJsonString = mapper.writeValueAsString(cart);
		
		logger.info(cartJsonString);
		cartDaoImpl.deleteCart(cart);
		return "successfull delete Operation";
	}
	
	
	@RequestMapping(value ="/deleteAllItemInCart" , consumes = {"application/json;charset=UTF-8"} , method=RequestMethod.DELETE)
	public @ResponseBody String deleteAllItemInCart() throws JsonProcessingException {
		
		logger.info("inside my delete All item in cart");
		Users user = (Users) SessionProvider.getSession().getAttribute("userObject");
		int id = user.getId();
		List<Carts> cartList = cartDaoImpl.getCartsByUserId(id);
		
		ObjectMapper mapper  = new ObjectMapper();
		String  cartJsonString = mapper.writeValueAsString(cartList);
		
		logger.info(cartJsonString);
		cartDaoImpl.deleteItemsInCartForPurticularUser(cartList);
		return "successfull delete Operation";
	}
	
	
	@RequestMapping(value ="/dataFetchFromCart" , consumes = {"application/json;charset=UTF-8"} , method=RequestMethod.POST)
	public @ResponseBody String fetchCartData(@RequestBody Carts cart) throws JsonProcessingException {
		logger.info("fetch Cart data");
		String cartListObject = null;
		/*try {
			Thread.sleep(3000);*/
			Users user = (Users) SessionProvider.getSession().getAttribute("userObject");
			int id = user.getId();
			logger.info(id + "  " + user.getName());
			List<Carts> cartList = cartDaoImpl.getCartsByUserId(id);
			ObjectMapper mapper = new ObjectMapper();
			cartListObject = mapper.writeValueAsString(cartList);
			logger.info(cartListObject);
		/*}
		catch(Exception e) {
			logger.info("exception is occuring");
		}
*/
		return cartListObject;
	}
}
