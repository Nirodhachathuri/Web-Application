package com.lithan.model;

public class SearchInfo {
	
	String search;
	

	public SearchInfo(String search) {
		super();
		this.search = search;
	}

	public SearchInfo() {
		super();
		
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	@Override
	public String toString() {
		return "SearchInfo [search=" + search + "]";
	}

	

	
	

}
