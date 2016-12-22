package com.xyh.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;


public class Country implements Serializable {


	private Integer id;
	private String name;
	private Set provinces = new HashSet(0);
	private Set universities = new HashSet(0);


	public Country() {
	}

	public Country(String name) {
		this.name = name;
	}

	public Country(String name, Set provinces, Set universities) {
		this.name = name;
		this.provinces = provinces;
		this.universities = universities;
	}


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getProvinces() {
		return this.provinces;
	}

	public void setProvinces(Set provinces) {
		this.provinces = provinces;
	}

	public Set getUniversities() {
		return this.universities;
	}

	public void setUniversities(Set universities) {
		this.universities = universities;
	}

}