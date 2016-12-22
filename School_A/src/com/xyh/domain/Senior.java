package com.xyh.domain;

import java.util.HashSet;
import java.util.Set;

public class Senior implements java.io.Serializable {

	private Integer id;
	private Town town;
	private City city;
	private String name;
	private Set userSeniors = new HashSet(0);

	public Senior() {
	}

	public Senior(String name) {
		this.name = name;
	}

	public Senior(Town town, City city, String name, Set userSeniors) {
		this.town = town;
		this.city = city;
		this.name = name;
		this.userSeniors = userSeniors;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Town getTown() {
		return this.town;
	}

	public void setTown(Town town) {
		this.town = town;
	}

	public City getCity() {
		return this.city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getUserSeniors() {
		return this.userSeniors;
	}

	public void setUserSeniors(Set userSeniors) {
		this.userSeniors = userSeniors;
	}

}