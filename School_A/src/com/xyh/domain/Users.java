package com.xyh.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Users implements java.io.Serializable {

	private Integer id;
	private Junior junior;
	private Province province;
	private City city;
	private String email;
	private String name;
	private String pwd;
	private String photo;
	private String sex;
	private Date birth;
	private String tel;
	private String mobile;
	private String oicq;
	private String msn;
	private String website;
	private Integer techSch;
	private Integer techSchYear;
	private Integer juniorYear;
	private Integer primarySch;
	private Integer primaryYear;
	private String interest;
	private String music;
	private String movie;
	private String game;
	private String cartoon;
	private String sport;
	private String book;
	private String assn;
	private Integer visited;
	private String doing;
	private Short online;
	private Date registerDate;
	private Date loginDate;
	private Short level;
	private Short locked;
	private Set userSeniors = new HashSet(0);
	private Set userUniversities = new HashSet(0);
	private Set userNets = new HashSet(0);

	public Users() {
	}

	public Users(String email, String name, String pwd) {
		this.email = email;
		this.name = name;
		this.pwd = pwd;
	}

	public Users(Junior junior, Province province, City city, String email,
			String name, String pwd, String photo, String sex, Date birth,
			String tel, String mobile, String oicq, String msn, String website,
			Integer techSch, Integer techSchYear, Integer juniorYear,
			Integer primarySch, Integer primaryYear, String interest,
			String music, String movie, String game, String cartoon,
			String sport, String book, String assn, Integer visited,
			String doing, Short online, Date registerDate,
			Date loginDate, Short level, Short locked, Set userSeniors,
			Set userUniversities, Set userNets) {
		this.junior = junior;
		this.province = province;
		this.city = city;
		this.email = email;
		this.name = name;
		this.pwd = pwd;
		this.photo = photo;
		this.sex = sex;
		this.birth = birth;
		this.tel = tel;
		this.mobile = mobile;
		this.oicq = oicq;
		this.msn = msn;
		this.website = website;
		this.techSch = techSch;
		this.techSchYear = techSchYear;
		this.juniorYear = juniorYear;
		this.primarySch = primarySch;
		this.primaryYear = primaryYear;
		this.interest = interest;
		this.music = music;
		this.movie = movie;
		this.game = game;
		this.cartoon = cartoon;
		this.sport = sport;
		this.book = book;
		this.assn = assn;
		this.visited = visited;
		this.doing = doing;
		this.online = online;
		this.registerDate = registerDate;
		this.loginDate = loginDate;
		this.level = level;
		this.locked = locked;
		this.userSeniors = userSeniors;
		this.userUniversities = userUniversities;
		this.userNets = userNets;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Junior getJunior() {
		return this.junior;
	}

	public void setJunior(Junior junior) {
		this.junior = junior;
	}

	public Province getProvince() {
		return this.province;
	}

	public void setProvince(Province province) {
		this.province = province;
	}

	public City getCity() {
		return this.city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirth() {
		return this.birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getOicq() {
		return this.oicq;
	}

	public void setOicq(String oicq) {
		this.oicq = oicq;
	}

	public String getMsn() {
		return this.msn;
	}

	public void setMsn(String msn) {
		this.msn = msn;
	}

	public String getWebsite() {
		return this.website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public Integer getTechSch() {
		return this.techSch;
	}

	public void setTechSch(Integer techSch) {
		this.techSch = techSch;
	}

	public Integer getTechSchYear() {
		return this.techSchYear;
	}

	public void setTechSchYear(Integer techSchYear) {
		this.techSchYear = techSchYear;
	}

	public Integer getJuniorYear() {
		return this.juniorYear;
	}

	public void setJuniorYear(Integer juniorYear) {
		this.juniorYear = juniorYear;
	}

	public Integer getPrimarySch() {
		return this.primarySch;
	}

	public void setPrimarySch(Integer primarySch) {
		this.primarySch = primarySch;
	}

	public Integer getPrimaryYear() {
		return this.primaryYear;
	}

	public void setPrimaryYear(Integer primaryYear) {
		this.primaryYear = primaryYear;
	}

	public String getInterest() {
		return this.interest;
	}

	public void setInterest(String interest) {
		this.interest = interest;
	}

	public String getMusic() {
		return this.music;
	}

	public void setMusic(String music) {
		this.music = music;
	}

	public String getMovie() {
		return this.movie;
	}

	public void setMovie(String movie) {
		this.movie = movie;
	}

	public String getGame() {
		return this.game;
	}

	public void setGame(String game) {
		this.game = game;
	}

	public String getCartoon() {
		return this.cartoon;
	}

	public void setCartoon(String cartoon) {
		this.cartoon = cartoon;
	}

	public String getSport() {
		return this.sport;
	}

	public void setSport(String sport) {
		this.sport = sport;
	}

	public String getBook() {
		return this.book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public String getAssn() {
		return this.assn;
	}

	public void setAssn(String assn) {
		this.assn = assn;
	}

	public Integer getVisited() {
		return this.visited;
	}

	public void setVisited(Integer visited) {
		this.visited = visited;
	}

	public String getDoing() {
		return this.doing;
	}

	public void setDoing(String doing) {
		this.doing = doing;
	}

	public Short getOnline() {
		return this.online;
	}

	public void setOnline(Short online) {
		this.online = online;
	}

	public Date getRegisterDate() {
		return this.registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public Date getLoginDate() {
		return this.loginDate;
	}

	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}

	public Short getLevel() {
		return this.level;
	}

	public void setLevel(Short level) {
		this.level = level;
	}

	public Short getLocked() {
		return this.locked;
	}

	public void setLocked(Short locked) {
		this.locked = locked;
	}

	public Set getUserSeniors() {
		return this.userSeniors;
	}

	public void setUserSeniors(Set userSeniors) {
		this.userSeniors = userSeniors;
	}

	public Set getUserUniversities() {
		return this.userUniversities;
	}

	public void setUserUniversities(Set userUniversities) {
		this.userUniversities = userUniversities;
	}

	public Set getUserNets() {
		return this.userNets;
	}

	public void setUserNets(Set userNets) {
		this.userNets = userNets;
	}

}