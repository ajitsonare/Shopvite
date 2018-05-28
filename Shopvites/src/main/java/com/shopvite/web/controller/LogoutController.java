package com.shopvite.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shopvite.web.sessionprovider.SessionProvider;


@Controller
public class LogoutController {

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String printHello(ModelMap model) {
		model.addAttribute("logout", "you Successfully Logged out");
		SessionProvider.destroySession();
	
		return "index";
	}
}
