package com.shopvite.web.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateTemplate;


import com.shopvite.web.model.Users;

public class UserDaoImpl implements UserDao{
	HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}
	private final Logger logger = Logger.getLogger(UserDaoImpl.class);

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
		logger.info("hibernate template has set");
	}
	
	public void saveUsers(Users users) {
		template.save(users);
	}
	
	@SuppressWarnings("unchecked")
	public Users getUsers(String username) {
		List<Users> usersList = null;
		DetachedCriteria criteria = DetachedCriteria.forClass(Users.class);
		criteria.add(Restrictions.eq("username", username)); 
		usersList = template.findByCriteria(criteria);
		return usersList.get(0);
	}
}
