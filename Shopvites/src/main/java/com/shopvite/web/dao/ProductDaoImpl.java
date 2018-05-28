package com.shopvite.web.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.shopvite.web.model.Products;



public class ProductDaoImpl implements ProductDao{
	HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}
	private final Logger logger = Logger.getLogger(UserDaoImpl.class);

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
		logger.info("hibernate template has set");
	}
	
	public void saveProducts(Products product) {
		template.save(product);
	}
	
	public List<Products> getProducts(){
		List<Products> productsList = new ArrayList<Products>();
		productsList = template.loadAll(Products.class);
		return productsList;
	}
	
	public void deleteProducts(Products product) {
		template.delete(product);
	}
	
	public Products getProductById(int id) {
		Products product = template.get(Products.class, id);
		return product;
	}

	public void saveOrUpdateProduct(Products product) {
		template.saveOrUpdate(product);
	}
	public void updateProduct(Products product) {
		template.update(product);
	}
}
