package com.lithan.model;

public class Users 
{
	int id;
	String firstname,lastname,companyname,city, country,email, password,search;
	

	public Users(int id, String firstname, String lastname, String companyname, String city, String country,
			String email) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.companyname = companyname;
		this.city = city;
		this.country = country;
		this.email = email;
	}

	public Users(int id, String firstname, String lastname, String companyname, String city,
			String country, String email, String password) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.companyname = companyname;
		this.city = city;
		this.country = country;
		this.email = email;
		this.password = password;
	}

	public Users(String firstname, String lastname, String companyname, String city, String country,
			String email, String password) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.companyname = companyname;
		this.city = city;
		this.country = country;
		this.email = email;
		this.password = password;
	}

	public Users(String email, String password) {
		this.email = email;
		this.password = password;
		
	}

	public Users(String email) {
		this.email = email;
	}

	public Users(String firstname, String lastname, String companyname) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.companyname = companyname;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getSearch() {
		return search;
	}





	public void setSearch(String search) {
		this.search = search;
	}

	@Override
	public String toString() {
		return "Users [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", companyname="
				+ companyname + ",city=" + city + ", country=" + country + ", email="
				+ email + ", password=" + password + "]";
	}
}
