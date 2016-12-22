package com.xyh.domain;

public class UserNet implements java.io.Serializable {

	private Integer id;
	private Users users;
	private String name;
	private Short isPrimary;

	public UserNet() {
	}

	public UserNet(String name) {
		this.name = name;
	}

	public UserNet(Users users, String name, Short isPrimary) {
		this.users = users;
		this.name = name;
		this.isPrimary = isPrimary;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Short getIsPrimary() {
		return this.isPrimary;
	}

	public void setIsPrimary(Short isPrimary) {
		this.isPrimary = isPrimary;
	}

}