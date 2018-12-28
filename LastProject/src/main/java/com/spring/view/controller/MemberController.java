package com.spring.view.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.com.admin.AdminService;
import com.spring.biz.member.Email;
import com.spring.biz.member.EmailSender;
import com.spring.biz.member.MemberService;
import com.spring.biz.member.MemberVO;
import com.spring.biz.profile.ProfileService;
import com.spring.biz.profile.ProfileVO;
@Controller 
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private ProfileService profileService;
	@Autowired
	private Email email;
	@Autowired
	private EmailSender emailSender;
	
	public MemberController() {
		System.out.println("=======멤버 컨트롤러 시작");
	}
	
	//======================================================================
	//회원가입
	@RequestMapping(value = "/insertMember.do", method=RequestMethod.GET)
	public String insertMemberGet(MemberVO vo) {
		System.out.println("=======겟방식");
		return "views/member/MemberRegister.jsp";
	}
	//회원가입
	@RequestMapping(value = "/insertMember.do", method=RequestMethod.POST)
	public String insertMemberPost(MemberVO vo, HttpSession session) throws Exception {
		System.out.println("=======인서트시작");
		System.out.println("인서트두 컨트롤러 vo: " + vo);
		memberService.insertMember(vo);
		
		//session.setAttribute("m_id", vo.getM_id());
		session.setAttribute("member", vo);
		return "redirect:/sub2.do";
	}
	
	//=======================================================================
	@RequestMapping(value="/loginMember.do", method=RequestMethod.GET) 
	public String loginGet(MemberVO vo) {
		System.out.println(">> 겟방식");
			return "views/member/MemberLogin.jsp";
	}	
	
	
	
	//로그인
	@RequestMapping(value="/loginMember.do", method=RequestMethod.POST) //@RequestParam("m_id") String m_id, @RequestParam("m_pwd") String m_pwd,
	public String loginPost(MemberVO vo, HttpSession session, ProfileVO profileVO) throws Exception {
		System.out.println(">> 포스트방식 로그인처리");
		System.out.println("m_id : " + vo.getM_id());
		System.out.println("m_pwd : " + vo.getM_pwd());
		
		MemberVO vo2 = memberService.loginMember(vo, session);
		ProfileVO profileVO2 = profileService.getProfile2(profileVO, session);
		
		System.out.println("vo2.getM_id : " + vo2.getM_id());
		System.out.println("vo2.getM_pwd : " + vo2.getM_pwd());
		
		if (vo2.getM_id() != null && vo2.getM_id().equals(vo.getM_id()) && vo2.getM_pwd() != null && vo2.getM_pwd().equals(vo.getM_pwd())) {
			System.out.println("======있는 아이디======");
			//session.setAttribute("m_id", vo.getM_id());
			session.setAttribute("member", vo2);
			session.setAttribute("profile", profileVO2);
			
			return "redirect:/sub2.do";
		} else {
			System.out.println("=====없는 아이디=====");
			
			return "redirect:/loginMember.do";
		}
	}	
	
	//비밀번호 변경
	@RequestMapping(value="ModifyPwdMember.do", method=RequestMethod.POST)
	public String ModifyMemberPwdPost(MemberVO vo, @RequestParam("pwdModify") String pwdModify, @RequestParam("m_id") String m_id, HttpSession session) throws Exception {
		System.out.println("=====비밀번호 변경 시작=====");
		System.out.println("pwdModify : " + pwdModify);
		vo.setM_pwd(pwdModify);
		vo.setM_id(m_id);
		memberService.ModifyPwd(vo);	
		session.setAttribute("member", vo);
		return "redirect:/sub2.do";
	}
	//핸드폰 번호 변경
	@RequestMapping(value="ModifyPhoneMember.do", method=RequestMethod.POST)
	public String ModifyMemberPhonePost(MemberVO vo, @RequestParam("phoneModify") String phoneModify, @RequestParam("m_id") String m_id, HttpSession session) throws Exception {
		System.out.println("=====핸드폰번호 변경 시작=====");
		System.out.println("phoneModify : " + phoneModify);
		vo.setM_id(m_id);
		vo.setM_phone(phoneModify);
		memberService.ModifyPhone(vo);	
		session.setAttribute("member", vo);
		return "redirect:/sub2.do";
	}
	@RequestMapping(value="DeleteMember.do", method=RequestMethod.POST)
	public String DeleteMember(MemberVO vo,  @RequestParam("m_id") String m_id, @RequestParam("m_pwd") String m_pwd, @RequestParam("m_phone") String m_phone, HttpSession session) throws Exception {
		System.out.println("=====회원탈퇴 시작=====");
		System.out.println("modifyM_pwd : " + m_pwd);
		vo.setM_id(m_id);
		vo.setM_pwd(m_pwd);
		vo.setM_phone(m_phone);
		memberService.DeleteMember(vo);	
		session.invalidate();
		return "redirect:/sub2.do";
	}
	@RequestMapping(value="ModifyAddressMember.do", method=RequestMethod.POST) 
	public String ModifyAddressMember(MemberVO vo, @RequestParam("m_id") String m_id, @RequestParam("m_address") String m_address, 
			@RequestParam("lat") Double lat, @RequestParam("lng") Double lng, HttpSession session) throws Exception {
		System.out.println("=====주소 변경 시작=====");
		System.out.println(lat);
		System.out.println(lng);
		vo.setM_id(m_id);
		vo.setM_address(m_address);
		vo.setLat(lat);
		vo.setLng(lng);
		
		memberService.ModifyAddress(vo);
		session.setAttribute("member", vo);
		return "redirect:/sub2.do";
	}
	
	
	
	
	//====================================================================== JSON
	//====================================================================== JSON
	//====================================================================== JSON 
	@RequestMapping(value="/MemberDeleteJson.do", method=RequestMethod.POST)
    @ResponseBody
    public Map<Object, Object> MemberDeleteJson(MemberVO vo) {
        int count = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
        
        count = memberService.MemberDeleteJson(vo);
        map.put("cnt", count);
 
        return map;
    }
	@RequestMapping(value="/MemberModifyPwdJson.do", method=RequestMethod.POST)
    @ResponseBody
    public Map<Object, Object> MemberModifyPwdJson(MemberVO vo) {
        int count = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
        
        count = memberService.ModifyMemberPwdJson(vo);
        map.put("cnt", count);
 
        return map;
    }
	
	@RequestMapping(value="/MemberModifyPhoneJson.do", method=RequestMethod.POST)
    @ResponseBody
    public Map<Object, Object> MemberModifyPhoneJson(MemberVO vo) {
        int count = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
        
        count = memberService.ModifyMemberPhoneJson(vo);
        map.put("cnt", count);
 
        return map;
    }
	
	
	@RequestMapping(value="/findPwdMemberJson.do", method=RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> findPwdMemberJson(MemberVO vo) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count = memberService.findPwdMemberJson(vo);
		map.put("cnt",  count);
		return map;
	}
	
	
	
	@RequestMapping(value="/findIdMemberJson.do", method=RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> findIdMemberJson(MemberVO vo) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count = memberService.findIdMemberJson(vo);
		map.put("cnt",  count);
		return map;
	}
	
	
	
	@RequestMapping(value="/loginMemberJson.do", method=RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> loginMemberJson(MemberVO vo) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		count = memberService.loginMemberJson(vo);
		map.put("cnt",  count);
		return map;
	}
	
	
	
	//핸드폰 번호 체크
	@RequestMapping(value="/checkPhoneJson.do")
	@ResponseBody
	public Map<Object, Object> checkPhoneJson(@RequestBody String m_phone) {
		int count = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
	 
		
		count = memberService.checkPhoneJson(m_phone);
		map.put("cnt", count);
		 
        return map;
	}
	
	
	
	//멤버 체크
	@RequestMapping("/checkMemberJson.do")
    @ResponseBody
    public Map<Object, Object> checkMemberJson(@RequestBody String m_id) {
        
        int count = 0;
        Map<Object, Object> map = new HashMap<Object, Object>();
 
        count = memberService.checkMemberJson(m_id);
        map.put("cnt", count);
 
        return map;
    }
	
	
	
	
		//======================================================================

	
	
	
	//======================================================================
	//로그아웃
	@RequestMapping(value="/logoutMember.do")
	public String logoutMember(HttpSession session) throws Exception {
		memberService.logoutMember(session);
		return "redirect:/sub2.do";
	}
	
	
	
	//======================================================================
	@RequestMapping(value="/findIdMember.do", method=RequestMethod.GET)
	public String findId(MemberVO vo) {
		System.out.println("findPwd === get ");
		return "views/member/MemberFindId.jsp";
	}
	
	@RequestMapping(value="/findPwdMember.do", method=RequestMethod.GET)
	public String findPwd(MemberVO vo) {
		System.out.println("findPwd === get ");
		return "views/member/MemberFindPwd.jsp";
	}
	
	
	
	//======================================================================
	
	@RequestMapping(value="ModifyPwdMember.do", method=RequestMethod.GET)
	public String ModifyPwd(MemberVO vo) {
		System.out.println("비밀번호 변경 GET ====");
		return "views/member/MemberModifyPwd.jsp";
	}
	@RequestMapping(value="ModifyPhoneMember.do", method=RequestMethod.GET)
	public String ModifyPhone(MemberVO vo) {
		System.out.println("핸드폰번호 변경 GET ====");
		return "views/member/MemberModifyPhone.jsp";
	}
	@RequestMapping(value="DeleteMember.do", method=RequestMethod.GET)
	public String DeleteMember(MemberVO vo) {
		System.out.println("핸드폰번호 변경 GET ====");
		return "views/member/MemberDelete.jsp";
	}
	@RequestMapping(value="ModifyAddressMember.do", method=RequestMethod.GET)
	public String ModifyAddressMember(MemberVO vo) {
		System.out.println("주소 변경 GET ====");
		return "views/member/MemberModifyAddress.jsp";
	}
	
	
	//======================================================================
	@RequestMapping(value="/findIdMember.do", method=RequestMethod.POST)
    public String sendEmailFindId (@RequestParam Map<String, Object> paramMap, ModelMap model, @RequestParam("m_id") String m_id) throws Exception {
    	MemberVO vo= memberService.getId(paramMap);
    	
    	if(vo.getM_id() != null) {
    		email.setSubject(" [국봉월드] " + vo.getM_name()+"님 아이디 찾기 이메일입니다.");
    		email.setReceiver(m_id);
    		email.setContent("아이디는 [ "+ vo.getM_id()+ "]입니다.");
    		emailSender.SendEmail(email);
            return "redirect:/sub2.do";
    	}else {
    		System.out.println("회원정보가 없습니다.");
    		return "redirect:/findIdMember.do";
    	}
    }
	
	
	
	@RequestMapping(value="/findPwdMember.do", method=RequestMethod.POST)
    public String sendEmailFindPwd (@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception {
    	String m_id= (String) paramMap.get("m_id");
    	MemberVO vo= memberService.getPw(paramMap);
    	
    	if(vo.getM_pwd() != null) {
    		email.setSubject(" [국봉월드] " + vo.getM_name()+"님 비밀번호 찾기 이메일입니다.");
    		email.setReceiver(vo.getM_id());
    		email.setContent("비밀번호는 [ "+vo.getM_pwd()+ "]입니다.");
    		emailSender.SendEmail(email);
            return "redirect:/sub2.do";
    	}else {
    		System.out.println("회원정보가 없습니다.");
    		return "redirect:/findPwdMember.do";
    	}
    }
	
	
	
	
	
}
