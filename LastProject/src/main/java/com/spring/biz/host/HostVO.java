package com.spring.biz.host;

import java.sql.Date;

public class HostVO {
	 // 아이디 
    private String m_id;
    //이름
    private String m_name;
    // 최대투숙객 
    private String h_maximumguest;
    // 선호성별 
    private String h_gender;
    // 흡연가능 여부 
    private String h_smoke;
    // 방종류 
    private String h_roomtype;
    // 숙소이용주의사항 
    private String h_rule;
    // 사용가능날짜 
    private Date h_startdate;
    private Date h_enddate;
    // 펫유무 
    private String h_haspet;
    // 자녀유무 
    private String h_haschild;
    
    private String p_route;
    private String m_address;
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getH_maximumguest() {
		return h_maximumguest;
	}
	public void setH_maximumguest(String h_maximumguest) {
		this.h_maximumguest = h_maximumguest;
	}
	public String getH_gender() {
		return h_gender;
	}
	public void setH_gender(String h_gender) {
		this.h_gender = h_gender;
	}
	public String getH_smoke() {
		return h_smoke;
	}
	public void setH_smoke(String h_smoke) {
		this.h_smoke = h_smoke;
	}
	public String getH_roomtype() {
		return h_roomtype;
	}
	public void setH_roomtype(String h_roomtype) {
		this.h_roomtype = h_roomtype;
	}
	public String getH_rule() {
		return h_rule;
	}
	public void setH_rule(String h_rule) {
		this.h_rule = h_rule;
	}
	public Date getH_startdate() {
		return h_startdate;
	}
	public void setH_startdate(Date h_startdate) {
		this.h_startdate = h_startdate;
	}
	public Date getH_enddate() {
		return h_enddate;
	}
	public void setH_enddate(Date h_enddate) {
		this.h_enddate = h_enddate;
	}
	@Override
	public String toString() {
		return "HostVO [m_id=" + m_id + ", m_name=" + m_name + ", h_maximumguest=" + h_maximumguest + ", h_gender="
				+ h_gender + ", h_smoke=" + h_smoke + ", h_roomtype=" + h_roomtype + ", h_rule=" + h_rule
				+ ", h_startdate=" + h_startdate + ", h_enddate=" + h_enddate + ", h_haspet=" + h_haspet
				+ ", h_haschild=" + h_haschild + ", p_route=" + p_route + ", m_address=" + m_address + "]";
	}
	public String getH_haspet() {
		return h_haspet;
	}
	public void setH_haspet(String h_haspet) {
		this.h_haspet = h_haspet;
	}
	public String getH_haschild() {
		return h_haschild;
	}
	public void setH_haschild(String h_haschild) {
		this.h_haschild = h_haschild;
	}
	public String getP_route() {
		return p_route;
	}
	public void setP_route(String p_route) {
		this.p_route = p_route;
	}
	public String getM_address() {
		return m_address;
	}
	public void setM_address(String m_address) {
		this.m_address = m_address;
	}
    
    
    

	
	
	
	
    
	
}
