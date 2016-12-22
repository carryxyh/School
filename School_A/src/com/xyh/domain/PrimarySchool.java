package com.xyh.domain;

public class PrimarySchool implements java.io.Serializable {

	private Integer id;
	private Town town;
	private City city;
	private String name;

	public PrimarySchool() {
	}

	public PrimarySchool(String name) {
		this.name = name;
	}

	public PrimarySchool(Town town, City city, String name) {
		this.town = town;
		this.city = city;
		this.name = name;
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

}