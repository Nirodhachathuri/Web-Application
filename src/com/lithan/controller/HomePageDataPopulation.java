package com.lithan.controller;

import java.util.List;

import com.lithan.dao.userMgtDao;
import com.lithan.model.Users;
import com.opensymphony.xwork2.ActionSupport;

public class HomePageDataPopulation extends ActionSupport{
	
	List<Users> users;
	
	public String execute() {
		initializeUsers();
		return "success";
	}

	public void initializeUsers() {
		users =userMgtDao.getAllUser();
	}
	
	public List<Users> getUsers() {
		return users;
	}

	public void setUsers(List<Users> users) {
		this.users = users;
	}

}
