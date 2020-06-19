package com.lithan.controller;

import com.lithan.dao.userMgtDao;

public class DeleteAction extends com.opensymphony.xwork2.ActionSupport{
	int id;

	public String execute() {
		int recDeleted=0;
		try {
			recDeleted = userMgtDao.deleteUser(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(recDeleted ==1) {
			return "success";
		}
		else {
			return "error";
		}
	}
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}
