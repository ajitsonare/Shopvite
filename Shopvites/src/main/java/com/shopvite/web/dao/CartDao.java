package com.shopvite.web.dao;

import java.util.List;

import com.shopvite.web.model.Carts;
import com.shopvite.web.model.Products;

public interface CartDao {
	
	public  void saveCart(Carts cart);
	
	public  void deleteCart(Carts cart);
	
	public void deleteItemsInCartForPurticularUser(List<Carts> cartlist);
	
	public void updateCart(Carts cart);
	
	public List<Carts> getCarts(); 
	
	public Carts getCartsByCartId(int id);
	
	public List<Carts> getCartsByUserId(int id);
	
	public Carts getCartsByItemId(int id);
}
