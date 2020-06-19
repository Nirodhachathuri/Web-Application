package com.lithan.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import com.lithan.dao.userMgtDao;
import com.lithan.model.SearchInfo;
import com.lithan.model.Users;
import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport {
	String search;
	ArrayList<Users> users;
	public String execute() throws SQLException{
		SearchInfo user=new SearchInfo(search);
		users=(ArrayList<Users>) userMgtDao.searchValue(user);
		return "success";
	}
	
	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public ArrayList<Users> getUsers() {
		return users;
	}

	public void setUsers(ArrayList<Users> users) {
		this.users = users;
	}

}
