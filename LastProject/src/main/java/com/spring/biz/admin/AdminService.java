package com.spring.biz.admin;

import java.util.List;
import java.util.Map;

import com.spring.biz.event.EventVO;
import com.spring.biz.localAdvice.LocalAdviceVO;
import com.spring.biz.member.MemberVO;

public interface AdminService {
	void logVisit(Map<String, String> lvMap);
	void logLogin(Map<String, String> llMap);
	void insertEvent(EventVO eventVO);
	void insertEventImg(Map<String, String> eventImgMap);
	
	UserAdminViewVO userAdminView(String m_id);
	
	List<MemberVO> userAdminList();
	List<UserAdminPostVO> userAdminPostList(String m_id);
	List<UserAdminCommentVO> userAdminCommentList(String m_id);
	List<EventVO> eventAdminList();
	
	AdminCntVO adminCnt();
	
	List<logLoginVO> getLoginRecord(logLoginVO vo);
	void adminDeleteProfileImage(Map<String, String> delParam);
	void deleteEvent(int e_idx);
	void deleteEventImg(Map<String, String> delImgMap);
	void modifyEvent(EventVO eventVO);
	void insertModifyEventImg(Map<String, String> eventImgMap);
	int countLog(String ll_id);
	List<logLoginVO> getLogLoginList(Map<String, Object> map);
	int countPost(String m_id);
	List<logLoginVO> getmyPostList(Map<String, Object> map);
	int countComment(String m_id);
	List<logLoginVO> getmyCommentList(Map<String, Object> map);
	List<LocalAdviceVO> localAdviceAdminList();
	List<LVChartVO> logVisitChart();
	List<LVChartVO> logVisitChartMonth();
	List<LVChartVO> logVisitChartYear();
	List<ChartJSVO> browserChart();
	List<ChartJSVO> genderChart();
	List<BarChartJSVO> registChart();
	List<LogVisitVO> chartVisit();
}
