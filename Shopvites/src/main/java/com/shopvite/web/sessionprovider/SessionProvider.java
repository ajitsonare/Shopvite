package com.shopvite.web.sessionprovider;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import com.shopvite.web.model.Users;

public class SessionProvider {
	private static HttpSession session = null;
	
	
	public static void setSession(HttpServletRequest request , Users userObject) {
		
		session  =	(HttpSession) request.getSession();
		session.setAttribute("userObject", userObject);
	}
	
	public static HttpSession getSession() {
		return session;
	}


	public static void destroySession() {
		session.invalidate();
	}
}
