package com.shopvite.web.dao;

import java.util.List;

import com.shopvite.web.model.Users;

public interface UserDao {
	
	public void saveUsers(Users users);
	
	public Users getUsers(String username);
	
/*	public void saveUsers(Users users);
	
	public void saveOrUpdate(Users users );
	
	public void deleteUsers(Users users );
	
	public void updateUsers(Users users );
	
	public Users getById(String id);

	public List<Users> getEmployees();*/
}
