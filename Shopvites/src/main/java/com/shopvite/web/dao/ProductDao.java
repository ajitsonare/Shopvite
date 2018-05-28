package com.shopvite.web.dao;

import java.util.ArrayList;
import java.util.List;

import com.shopvite.web.model.Products;



public interface ProductDao {
	

	public void saveProducts(Products product);
	public List<Products> getProducts();
	public void deleteProducts(Products product);
	public void saveOrUpdateProduct(Products product);
	public void updateProduct(Products product);
	/*public Users getUsers(String username);*/
}
