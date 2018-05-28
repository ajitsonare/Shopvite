package com.shopvite.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shopvite.web.dao.UserDaoImpl;
import com.shopvite.web.model.Users;
import com.shopvite.web.sessionprovider.SessionProvider;

@Controller
public class LoginController {
	
	private static Logger logger = Logger.getLogger(LoginController.class);
	@Autowired
	UserDaoImpl userDaoImpl;
	
	
	@RequestMapping(value="/login" , method=RequestMethod.POST)
	public ModelAndView loginMethod( HttpServletRequest request , HttpServletResponse response) {
		
		logger.info("inside my LoginController" );
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		logger.info(username+" this is " + password);
		Users user = userDaoImpl.getUsers(username);
		
		SessionProvider.setSession(request, user);
		
		String name = user.getName();
		
		if(username.equals(user.getUsername()) && password.equals(user.getPassword())) {
		return new ModelAndView("mainpage","user",user);
		}
		else {
			return new ModelAndView("errorpage" ,"error","sorry incorrect username or password");
		}
	
	}
}

