package com.xyh.domain;

import java.util.HashSet;
import java.util.Set;

public class City implements java.io.Serializable {


	private Integer id;
	private Province province;
	private String name;
	private Set towns = new HashSet(0);
	private Set seniors = new HashSet(0);
	private Set primarySchools = new HashSet(0);
	private Set techSchools = new HashSet(0);
	private Set userses = new HashSet(0);
	private Set juniors = new HashSet(0);


	public City() {
	}

	public City(String name) {
		this.name = name;
	}

	public City(Province province, String name, Set towns, Set seniors,
			Set primarySchools, Set techSchools, Set userses, Set juniors) {
		this.province = province;
		this.name = name;
		this.towns = towns;
		this.seniors = seniors;
		this.primarySchools = primarySchools;
		this.techSchools = techSchools;
		this.userses = userses;
		this.juniors = juniors;
	}


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public Set getTowns() {
		return this.towns;
	}

	public void setTowns(Set towns) {
		this.towns = towns;
	}

	public Set getSeniors() {
		return this.seniors;
	}

	public void setSeniors(Set seniors) {
		this.seniors = seniors;
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

	public Set getUserses() {
		return this.userses;
	}

	public void setUserses(Set userses) {
		this.userses = userses;
	}

	public Set getJuniors() {
		return this.juniors;
	}

	public void setJuniors(Set juniors) {
		this.juniors = juniors;
	}

}