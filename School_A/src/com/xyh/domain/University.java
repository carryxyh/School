package com.xyh.domain;

import java.util.HashSet;
import java.util.Set;

public class University implements java.io.Serializable {

	private Integer id;
	private Country country;
	private Province province;
	private String name;
	private Set userUniversities = new HashSet(0);

	public University() {
	}

	public University(String name) {
		this.name = name;
	}

	public University(Country country, Province province, String name,
			Set userUniversities) {
		this.country = country;
		this.province = province;
		this.name = name;
		this.userUniversities = userUniversities;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Country getCountry() {
		return this.country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public Province getProvince() {
		return this.province;
	}

	public void setProvince(Province province) {
		this.province = province;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getUserUniversities() {
		return this.userUniversities;
	}

	public void setUserUniversities(Set userUniversities) {
		this.userUniversities = userUniversities;
	}

}