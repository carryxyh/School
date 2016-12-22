package com.xyh.domain;

import java.util.HashSet;
import java.util.Set;

public class Province implements java.io.Serializable {

	private Integer id;
	private Country country;
	private String name;
	private Set universities = new HashSet(0);
	private Set userses = new HashSet(0);
	private Set cities = new HashSet(0);

	public Province() {
	}

	public Province(String name) {
		this.name = name;
	}

	public Province(Country country, String name, Set universities,
			Set userses, Set cities) {
		this.country = country;
		this.name = name;
		this.universities = universities;
		this.userses = userses;
		this.cities = cities;
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

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getUniversities() {
		return this.universities;
	}

	public void setUniversities(Set universities) {
		this.universities = universities;
	}

	public Set getUserses() {
		return this.userses;
	}

	public void setUserses(Set userses) {
		this.userses = userses;
	}

	public Set getCities() {
		return this.cities;
	}

	public void setCities(Set cities) {
		this.cities = cities;
	}

}