package com.shopvite.web.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.shopvite.web.model.Carts;
import com.shopvite.web.model.Products;
import com.shopvite.web.model.Users;

public class CartDaoImpl implements CartDao {
	HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	private final Logger logger = Logger.getLogger(UserDaoImpl.class);

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
		logger.info("hibernate template has set");
	}

	@Override
	public void saveCart(Carts cart) {
		template.save(cart);
	}
	
	public void updateCart(Carts cart) {
		template.update(cart);
	}
	
	public void deleteCart(Carts cart) {
		template.delete(cart);
	}
	
	public void deleteItemsInCartForPurticularUser(List<Carts> cartList) {
		template.deleteAll( cartList);
	}
	public List<Carts> getCarts() {
		List<Carts> cartsList = new ArrayList<Carts>();
		cartsList = template.loadAll(Carts.class);
		return cartsList;

	}
	@SuppressWarnings("unchecked")
	public Carts getCartsByItemId(int id) {
		List<Carts> cartsList = new ArrayList<Carts>();
		DetachedCriteria criteria = DetachedCriteria.forClass(Carts.class);
		criteria.add(Restrictions.eq("itemId", id)); 
		cartsList = template.findByCriteria(criteria);
		return cartsList.get(0);
	}
	public Carts getCartsByCartId(int id) {
		Carts cart = template.get(Carts.class, id);
		return cart;
	}
	@SuppressWarnings("unchecked")
	public List<Carts> getCartsByUserId(int id){
		List<Carts> cartsList = new ArrayList<Carts>();
		Users user = new Users();
		user.setId(id);
		DetachedCriteria criteria = DetachedCriteria.forClass(Carts.class);
		criteria.add(Restrictions.eq("users", user)); 
		cartsList = template.findByCriteria(criteria);
		return cartsList;
		
	}


}
