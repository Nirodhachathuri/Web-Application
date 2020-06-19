package com.lithan.controller;

import com.lithan.dao.loginDao;
import com.lithan.model.AdminLoginInfo;
import com.opensymphony.xwork2.ActionSupport;

public class AdminLoginAction extends ActionSupport {
	String email,password;
	boolean isValidAdmin = false;
	
	public String execute() {
		AdminLoginInfo userInfo=new AdminLoginInfo(email,password);
		try {
			isValidAdmin=loginDao.isValidAdmin(userInfo);
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		if(isValidAdmin) {
			return "success";
		}
		
		else
		{
			return "error";
		}
	}

	
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
