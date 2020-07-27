package com.master.dto;

import java.util.Date;

public class FileVO {
	
	private int fno;
	private String fpath;
	private String fname;
	private Date regdate;
	private int fd_cnt;
	private int f_size;
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getFpath() {
		return fpath;
	}
	public void setFpath(String fpath) {
		this.fpath = fpath;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getFd_cnt() {
		return fd_cnt;
	}
	public void setFd_cnt(int fd_cnt) {
		this.fd_cnt = fd_cnt;
	}
	public int getF_size() {
		return f_size;
	}
	public void setF_size(int f_size) {
		this.f_size = f_size;
	}
	
	
}
