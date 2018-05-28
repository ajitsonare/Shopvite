package com.shopvite.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shopvite.web.dao.UserDaoImpl;
import com.shopvite.web.model.Users;

@Controller
public class SignupController {

	@Autowired
	UserDaoImpl userDaoImpl;

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signupMethod(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");


		Users users = new Users();
		users.setUsername(username);
		users.setPassword(password);
		users.setName(name);
		userDaoImpl.saveUsers(users);

		return new ModelAndView("index", "status", "YOUR SIGN-UP IS SUCCESSFULL");
	}
}