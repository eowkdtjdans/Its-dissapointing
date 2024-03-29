package com.spring.biz.message;

import java.util.Date;

public class MessageSendVO {
	private int send_idx, send_read, send_accept;
	public int getSend_accept() {
		return send_accept;
	}
	public void setSend_accept(int send_accept) {
		this.send_accept = send_accept;
	}
	private String send_sender,
	send_receiver,
	send_title,
	p_route,
	send_content;
	private Date send_regdate, send_startdate, send_enddate;
	public int getSend_idx() {
		return send_idx;
	}
	public void setSend_idx(int send_idx) {
		this.send_idx = send_idx;
	}
	public int getSend_read() {
		return send_read;
	}
	public void setSend_read(int send_read) {
		this.send_read = send_read;
	}
	public String getSend_sender() {
		return send_sender;
	}
	public void setSend_sender(String send_sender) {
		this.send_sender = send_sender;
	}
	public String getSend_receiver() {
		return send_receiver;
	}
	public void setSend_receiver(String send_receiver) {
		this.send_receiver = send_receiver;
	}
	public String getSend_title() {
		return send_title;
	}
	public void setSend_title(String send_title) {
		this.send_title = send_title;
	}
	public String getP_route() {
		return p_route;
	}
	public void setP_route(String p_route) {
		this.p_route = p_route;
	}
	public String getSend_content() {
		return send_content;
	}
	public void setSend_content(String send_content) {
		this.send_content = send_content;
	}
	public Date getSend_regdate() {
		return send_regdate;
	}
	public void setSend_regdate(Date send_regdate) {
		this.send_regdate = send_regdate;
	}
	public Date getSend_startdate() {
		return send_startdate;
	}
	public void setSend_startdate(Date send_startdate) {
		this.send_startdate = send_startdate;
	}
	public Date getSend_enddate() {
		return send_enddate;
	}
	public void setSend_enddate(Date send_enddate) {
		this.send_enddate = send_enddate;
	}
	@Override
	public String toString() {
		return "MessageSendVO [send_idx=" + send_idx + ", send_read=" + send_read + ", send_sender=" + send_sender
				+ ", send_receiver=" + send_receiver + ", send_title=" + send_title + ", p_route=" + p_route
				+ ", send_content=" + send_content + ", send_regdate=" + send_regdate + ", send_startdate="
				+ send_startdate + ", send_enddate=" + send_enddate + "]";
	}

	
	
	
	
	
	
	

	
	
	
}
