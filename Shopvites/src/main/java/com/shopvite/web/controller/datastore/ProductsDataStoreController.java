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
import com.shopvite.web.model.Products;

@Controller
public class ProductsDataStoreController {
	
	private static Logger logger = Logger.getLogger(ProductsDataStoreController.class);
	@Autowired
	ProductDaoImpl productDaoImpl;
	
	
	@RequestMapping(value ="/datafetch" , consumes = MediaType.APPLICATION_JSON_VALUE , method=RequestMethod.POST)
	public @ResponseBody String updateGet(@RequestBody Products product) throws JsonProcessingException {
		 List<Products> list =  productDaoImpl.getProducts();
		 ObjectMapper mapper = new ObjectMapper();
		 String output = mapper.writeValueAsString(list);
  		 return output;
	}
	
	
	
	@RequestMapping(value ="/deleteData" , consumes = MediaType.APPLICATION_JSON_VALUE , method=RequestMethod.DELETE)
	public @ResponseBody String deleteData(@RequestBody Products product) throws JsonProcessingException {
		int id = product.getId();
		Products prod = productDaoImpl.getProductById(id);
		productDaoImpl.deleteProducts(prod);
		return "successfull delete Operation";
	}
	
	
	
	@RequestMapping(value ="/dataStore" , consumes = MediaType.APPLICATION_JSON_VALUE , method=RequestMethod.POST)
	public @ResponseBody String storeDataInDatabase( @RequestBody Products product) throws JsonProcessingException  {
		
		logger.info("inside store data in database example" );
	
		ObjectMapper mapper  = new ObjectMapper();
		String  prod = mapper.writeValueAsString(product);
		productDaoImpl.saveProducts(product);
	
	    return "successfull data storation";
	}
	
	
	@RequestMapping(value ="/dataUpdate" , consumes = MediaType.APPLICATION_JSON_VALUE , method=RequestMethod.POST)
	public @ResponseBody String updateDataInDatabase( @RequestBody Products product) throws JsonProcessingException  {
		
		logger.info("inside store data in database example" );
		logger.info(product.getName() + "  "+product.getImage());
		
		ObjectMapper mapper  = new ObjectMapper();
		String  prod = mapper.writeValueAsString(product);
		productDaoImpl.updateProduct(product);
	
		return "successfull data storation";
	}
	
	
	
	
}