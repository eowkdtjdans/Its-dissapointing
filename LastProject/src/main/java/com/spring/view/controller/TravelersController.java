package com.spring.view.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.biz.travelers.TravelersService;
import com.spring.biz.travelers.TravelersVO;
import com.spring.pagination.PagingVO;

@Controller
@SessionAttributes({"key","cPage"})
public class TravelersController {
	@Autowired
	private TravelersService travelersService;
	
	public TravelersController() {
		System.out.println("TravelersController 실행");
	}
	
	@RequestMapping(value="/getTravelersList.do", method=RequestMethod.POST)
	public String getTravelersList(Model model, @ModelAttribute("key") String key, @RequestParam("cPage") String cPage) {
		System.out.println(">> 글목록 조회 처리(getTravelersList) - POST");
		
		PagingVO p = new PagingVO();
		p.setNumPerPage(5);
		p.setPagePerBlock(5);
		int countTravelers = travelersService.countTravelers(key);
		p.setTotalRecord(countTravelers);
		p.setTotalPage();
		
		if (cPage != null) {
			p.setNowPage(Integer.parseInt(cPage));
		}
		
		p.setEnd(p.getNowPage() * p.getNumPerPage());
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
				
		int nowPage = p.getNowPage();
		p.setBeginPage((nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1);
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);
		
		if (p.getEndPage() > p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}
		
		Map<String, Object> map = new HashMap<>();
		map.put("begin", p.getBegin());
		map.put("end", p.getEnd());
		map.put("key", key);
		
		List<TravelersVO> travelersList = travelersService.getTravelersList(map);
		System.out.println("travelersList: " + travelersList);
		
		model.addAttribute("travelersList", travelersList);
		model.addAttribute("countTravelers", countTravelers);
		model.addAttribute("pvo", p);
		
		model.addAttribute("cPage", cPage);
		
		return "views/travelers/Travelers.jsp";
	}
	
	@RequestMapping(value="/getTravelersList.do", method=RequestMethod.GET)
	public String getTravelersList2(Model model, @ModelAttribute("key") String key, @RequestParam("cPage") String cPage) {
		System.out.println(">> 글목록 조회 처리(getTravelersList) - GET");

		PagingVO p = new PagingVO();
		p.setNumPerPage(5);
		p.setPagePerBlock(5);
		int countTravelers = travelersService.countTravelers(key);
		System.out.println("countTravelers : " + countTravelers);
		
		p.setTotalRecord(countTravelers);
		p.setTotalPage();
		
		if (cPage != null) {
			p.setNowPage(Integer.parseInt(cPage));
		}
		
		p.setEnd(p.getNowPage() * p.getNumPerPage());
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
				
		int nowPage = p.getNowPage();
		p.setBeginPage((nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1);
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);
		
		if (p.getEndPage() > p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}
		
		Map<String, Object> map = new HashMap<>();
		map.put("begin", p.getBegin());
		map.put("end", p.getEnd());
		map.put("key", key);
		
		System.out.println("p.getBegin() : " + p.getBegin());
		System.out.println("p.getEnd() :" +p.getEnd());
		System.out.println("key : " + key);
		
		
		List<TravelersVO> travelersList = travelersService.getTravelersList(map);
		System.out.println("travelersList : " + travelersList);
		
		model.addAttribute("travelersList", travelersList);
		model.addAttribute("countTravelers", countTravelers);
		model.addAttribute("pvo", p);
		
		model.addAttribute("cPage", cPage);
		
		return "views/travelers/Travelers.jsp";
	}
	
	
}
