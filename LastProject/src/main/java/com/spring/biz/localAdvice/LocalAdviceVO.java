package com.spring.biz.localAdvice;

import java.sql.Date;

public class LocalAdviceVO {

	  // 게시글번호 
    private int l_idx;
    // 아이디 
    private String m_id;
    // 게시글제목 
    private String l_subject;
    // 게시글내용 
    private String l_content;
    // 게시글작성일 
    private Date l_date;
    // 게시글추천수 
    private int l_upvote;
    // 게시글조회수 
    private int l_reviewcount;
    
    private String m_address;
    
    private String p_route;
    
    private int lc_cnt;
    
    
	public int getL_idx() {
		return l_idx;
	}
	public void setL_idx(int l_idx) {
		this.l_idx = l_idx;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getL_subject() {
		return l_subject;
	}
	public void setL_subject(String l_subject) {
		this.l_subject = l_subject;
	}
	public String getL_content() {
		return l_content;
	}
	public void setL_content(String l_content) {
		this.l_content = l_content;
	}
	public Date getL_date() {
		return l_date;
	}
	public void setL_date(Date l_date) {
		this.l_date = l_date;
	}
	public int getL_upvote() {
		return l_upvote;
	}
	public void setL_upvote(int l_uupvote) {
		this.l_upvote = l_uupvote;
	}
	public int getL_reviewcount() {
		return l_reviewcount;
	}
	public void setL_reviewcount(int l_reviewcount) {
		this.l_reviewcount = l_reviewcount;
	}
	public String getM_address() {
		return m_address;
	}
	public void setM_address(String m_address) {
		this.m_address = m_address;
	}
		
	public String getP_route() {
		return p_route;
	}
	public void setP_route(String p_route) {
		this.p_route = p_route;
	}

	public int getLc_cnt() {
		return lc_cnt;
	}
	public void setLc_cnt(int lc_cnt) {
		this.lc_cnt = lc_cnt;
	}
	@Override
	public String toString() {
		return "LocalAdviceVO [l_idx=" + l_idx + ", m_id=" + m_id + ", l_subject=" + l_subject + ", l_content="
				+ l_content + ", l_date=" + l_date + ", l_upvote=" + l_upvote + ", l_reviewcount=" + l_reviewcount
				+ ", m_address=" + m_address + ", p_route=" + p_route + ", lc_cnt=" + lc_cnt + "]";
	}
	

    
}
