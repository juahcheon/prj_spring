package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value="/")
	public String home() {
		
		// 서버단에서 필요한 작업은 여기서 수행한다.
		
//		정적데이터 연결 방법
//		href="/resources/xdm/v1/css/commonXdm.css"
		
		
//		jsp 상단에 넣을 내용
//		<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
		
		// 아래의 JSP파일 호출
		return "home";
	}
	
	@RequestMapping(value="/home2")
	public String home2() {
		// 서버단에서 필요한 작업은 여기서 수행한다.
		
		// 아래의 JSP파일 호출
		return "app/home/home2";
	}
	
	@RequestMapping(value = "/home3")
	public ModelAndView home3() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("home3");
		
		return mav;
	}
	
	@RequestMapping(value="/home4")
	public ModelAndView home4() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("app/home/home4");
		return mav;
	}
	
	@RequestMapping(value="/home5")
	public ModelAndView home5() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("app/home/home5");
		return mav;
	}
	
	@RequestMapping(value="/home6")
	public ModelAndView home6() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("app/home/home6");
		return mav;
	}
	
	@RequestMapping(value="/maintain")
	public String maintain() {
		
		return "maintain";
	}
	
	@RequestMapping(value="/DB")
	public String DB() {
		return "DB";
	}
	
	@RequestMapping(value="/home9")
	public String home9() {
		return "app/home/home9";
	}
	
	@RequestMapping(value="/home10")
	public String home10() {
		return "app/home/home10";
	}
	
	
	
	
	
}
