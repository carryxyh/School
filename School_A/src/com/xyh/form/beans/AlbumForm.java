package com.xyh.form.beans;

import org.springframework.web.multipart.MultipartFile;

public class AlbumForm {
	private String id;
	private String name;
	private String descript;
	private String whoSee;
	// 照片的名字
	private String photoName;
	// 照片文件表单
	private MultipartFile photo1;
	private MultipartFile photo2;
	private MultipartFile photo3;
	private MultipartFile photo4;
	private MultipartFile photo5;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescript() {
		return descript;
	}
	public void setDescript(String descript) {
		this.descript = descript;
	}
	public String getWhoSee() {
		return whoSee;
	}
	public void setWhoSee(String whoSee) {
		this.whoSee = whoSee;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public MultipartFile getPhoto1() {
		return photo1;
	}
	public void setPhoto1(MultipartFile photo1) {
		this.photo1 = photo1;
	}
	public MultipartFile getPhoto2() {
		return photo2;
	}
	public void setPhoto2(MultipartFile photo2) {
		this.photo2 = photo2;
	}
	public MultipartFile getPhoto3() {
		return photo3;
	}
	public void setPhoto3(MultipartFile photo3) {
		this.photo3 = photo3;
	}
	public MultipartFile getPhoto4() {
		return photo4;
	}
	public void setPhoto4(MultipartFile photo4) {
		this.photo4 = photo4;
	}
	public MultipartFile getPhoto5() {
		return photo5;
	}
	public void setPhoto5(MultipartFile photo5) {
		this.photo5 = photo5;
	}
}
