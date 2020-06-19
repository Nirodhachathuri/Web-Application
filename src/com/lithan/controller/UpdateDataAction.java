package com.lithan.controller;

import com.lithan.dao.userMgtDao;
import com.lithan.model.Users;
import com.opensymphony.xwork2.*;

public class UpdateDataAction extends ActionSupport {

	int id;
	String firstname, lastname, companyname, city, country, email;

	public String execute() {
		Users users = userMgtDao.getUserByID(id);
		id = users.getId();
		firstname = users.getFirstname();
		lastname = users.getLastname();
		companyname = users.getCompanyname();
		city = users.getCity();
		country = users.getCountry();
		email = users.getEmail();

		return "success";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
