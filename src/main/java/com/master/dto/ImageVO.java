package com.master.dto;

import java.util.Date;

public class ImageVO {
	
	private int ino;
	private String img_cd;
	private String img_use;
	private String img_name;
	private String img_path;
	private Date regdate;
	
	private String img_thumb;
	
	public String getImg_thumb() {
		return img_thumb;
	}
	public void setImg_thumb(String img_thumb) {
		this.img_thumb = img_thumb;
	}
	public int getIno() {
		return ino;
	}
	public void setIno(int ino) {
		this.ino = ino;
	}
	public String getImg_cd() {
		return img_cd;
	}
	public void setImg_cd(String img_cd) {
		this.img_cd = img_cd;
	}
	public String getImg_use() {
		return img_use;
	}
	public void setImg_use(String img_use) {
		this.img_use = img_use;
	}
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}
