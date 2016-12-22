package com.xyh.domain;

import java.util.HashSet;
import java.util.Set;

public class Town implements java.io.Serializable {

	private Integer id;
	private City city;
	private String name;
	private Set primarySchools = new HashSet(0);
	private Set techSchools = new HashSet(0);
	private Set juniors = new HashSet(0);
	private Set seniors = new HashSet(0);

	public Town() {
	}

	public Town(String name) {
		this.name = name;
	}

	public Town(City city, String name, Set primarySchools, Set techSchools,
			Set juniors, Set seniors) {
		this.city = city;
		this.name = name;
		this.primarySchools = primarySchools;
		this.techSchools = techSchools;
		this.juniors = juniors;
		this.seniors = seniors;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public Set getPrimarySchools() {
		return this.primarySchools;
	}

	public void setPrimarySchools(Set primarySchools) {
		this.primarySchools = primarySchools;
	}

	public Set getTechSchools() {
		return this.techSchools;
	}

	public void setTechSchools(Set techSchools) {
		this.techSchools = techSchools;
	}

	public Set getJuniors() {
		return this.juniors;
	}

	public void setJuniors(Set juniors) {
		this.juniors = juniors;
	}

	public Set getSeniors() {
		return this.seniors;
	}

	public void setSeniors(Set seniors) {
		this.seniors = seniors;
	}

}