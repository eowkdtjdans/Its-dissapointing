package com.spring.biz.com.event;

import java.util.Date;

public class EventVO {
	private String e_address, e_name, e_content;
	private int e_idx, e_upvote, e_reviewcount;
	private Date e_startdate, e_enddate;
	
	public String getE_address() {
		return e_address;
	}
	public void setE_address(String e_address) {
		this.e_address = e_address;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getE_content() {
		return e_content;
	}
	public void setE_content(String e_content) {
		this.e_content = e_content;
	}
	public int getE_idx() {
		return e_idx;
	}
	public void setE_idx(int e_idx) {
		this.e_idx = e_idx;
	}
	public int getE_upvote() {
		return e_upvote;
	}
	public void setE_upvote(int e_upvote) {
		this.e_upvote = e_upvote;
	}
	public int getE_reviewcount() {
		return e_reviewcount;
	}
	public void setE_reviewcount(int e_reviewcount) {
		this.e_reviewcount = e_reviewcount;
	}
	public Date getE_startdate() {
		return e_startdate;
	}
	public void setE_startdate(Date e_startdate) {
		this.e_startdate = e_startdate;
	}
	public Date getE_enddate() {
		return e_enddate;
	}
	public void setE_enddate(Date e_enddate) {
		this.e_enddate = e_enddate;
	}
	
	@Override
	public String toString() {
		return "EventVO [e_address=" + e_address + ", e_name=" + e_name + ", e_content=" + e_content + ", e_idx="
				+ e_idx + ", e_upvote=" + e_upvote + ", e_reviewcount=" + e_reviewcount + ", e_startdate=" + e_startdate
				+ ", e_enddate=" + e_enddate + "]";
	}
	
}