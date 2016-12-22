package com.xyh.domain;

public class UserUniversity implements java.io.Serializable {

	private Integer id;
	private University university;
	private Users users;
	private Integer uniYear;
	private String userType;
	private String college;
	private String drom;

	public UserUniversity() {
	}

	public UserUniversity(University university, Users users, Integer uniYear,
			String userType, String college, String drom) {
		this.university = university;
		this.users = users;
		this.uniYear = uniYear;
		this.userType = userType;
		this.college = college;
		this.drom = drom;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public University getUniversity() {
		return this.university;
	}

	public void setUniversity(University university) {
		this.university = university;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Integer getUniYear() {
		return this.uniYear;
	}

	public void setUniYear(Integer uniYear) {
		this.uniYear = uniYear;
	}

	public String getUserType() {
		return this.userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getCollege() {
		return this.college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getDrom() {
		return this.drom;
	}

	public void setDrom(String drom) {
		this.drom = drom;
	}

}