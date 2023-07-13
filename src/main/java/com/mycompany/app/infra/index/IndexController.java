package com.mycompany.app.infra.index;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.app.infra.codegroup.CodeGroup;
import com.mycompany.app.infra.codegroup.CodeGroupServiceImpl;
import com.mycompany.app.infra.codegroup.CodeGroupVo;

@Controller
public class IndexController {
	
	@Autowired
    CodeGroupServiceImpl service;

	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/biographyUsrView";
	}
	
	
	@RequestMapping("/indexUsrView")
	public String indexUsrView() {
		return "usr/infra/index/indexUsrView";
	}
	
	@RequestMapping("/loginAdmForm")
	public String loginAdmForm() {
		return "admin/infra/member/loginAdmForm";
	}
	
	@RequestMapping("/loginUsrForm")
	public String loginUsrForm() {
		return "usr/infra/member/loginUsrForm";
	}
	
	@RequestMapping("/signUpUsrForm")
	public String signUpUsrForm() {
		return "usr/infra/member/signUpUsrForm";
	}
	
	@RequestMapping("/myUsrPage")
	public String myUsrPage() {
		return "usr/infra/member/myUsrPage";
	}
	
//	@RequestMapping("/loginUsrForm")
//	public String loginUsrForm() {
//		return "usr/infra/member/loginUsrForm";
//	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/loginProc") public Map<String, Object> loginProc(MemberVo
	 * vo) { Map<String, Object> returnMap = new HashMap<String, Object>();
	 * 
	 * Member rtMember = service.selectOne(vo);
	 * 
	 * if(rtMember != null) { returnMap.put("rtMember", rtMember);
	 * returnMap.put("rt", "success");
	 * 
	 * } else { returnMap.put("rt", "fail"); }
	 * 
	 * return returnMap; }
	 */
	
	@RequestMapping("/indexAdmView")
	public String indexAdmView(CodeGroupVo vo, Model model) {
		
        
		return "admin/infra/index/indexAdmView";
	}
	
	@RequestMapping("/codeGroupAdmForm")
	public String codeGroupAdmForm(CodeGroupVo vo, Model model) {
		
		CodeGroup codeGroup = service.selectOne(vo);
		model.addAttribute("item", codeGroup);
		
		return "admin/infra/codegroup/codeGroupAdmForm";
	}
	
	@RequestMapping("/codeGroupUpdt")
    public String codeGroupUpdt(CodeGroup dto){
        System.out.println("dto.getTheme(): " + dto.getTheme());
		
		service.update(dto);
        return "redirect:/codeGroupList";
    }

    @RequestMapping("/codeGroupDelt")
    public String codeGroupDelt(CodeGroup dto){
        service.delete(dto);
        return "redirect:/codeGroupList";
    }
    @RequestMapping("/codeGroupNsrt")
    public String codeGroupNsrt(CodeGroup vo){
        service.insert(vo);
        return "redirect:/codeGroupList";
    }
	
	
	/*
	 * @RequestMapping(value="/") public String home() {
	 * 
	 * // 서버단에서 필요한 작업은 여기서 수행한다.
	 * 
	 * // 정적데이터 연결 방법 // href="/resources/xdm/v1/css/commonXdm.css"
	 * 
	 * 
	 * // jsp 상단에 넣을 내용 // <%@ page language="java"
	 * contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	 * 
	 * // 아래의 JSP파일 호출 return "home"; }
	 * 
	 * @RequestMapping(value="/home2") public String home2() { // 서버단에서 필요한 작업은 여기서
	 * 수행한다.
	 * 
	 * // 아래의 JSP파일 호출 return "app/home/home2"; }
	 * 
	 * @RequestMapping(value = "/home3") public ModelAndView home3() { ModelAndView
	 * mav = new ModelAndView();
	 * 
	 * mav.setViewName("home3");
	 * 
	 * return mav; }
	 * 
	 * @RequestMapping(value="/home4") public ModelAndView home4() { ModelAndView
	 * mav = new ModelAndView(); mav.setViewName("app/home/home4"); return mav; }
	 * 
	 * @RequestMapping(value="/home5") public ModelAndView home5() { ModelAndView
	 * mav = new ModelAndView(); mav.setViewName("app/home/home5"); return mav; }
	 * 
	 * @RequestMapping(value="/home6") public ModelAndView home6() { ModelAndView
	 * mav = new ModelAndView(); mav.setViewName("app/home/home6"); return mav; }
	 * 
	 * @RequestMapping(value="/maintain") public String maintain() {
	 * 
	 * return "maintain"; }
	 * 
	 * @RequestMapping(value="/DB") public String DB() { return "DB"; }
	 * 
	 * @RequestMapping(value="/home9") public String home9() { return
	 * "app/home/home9"; }
	 * 
	 * @RequestMapping(value="/home10") public String home10() { return
	 * "app/home/home10"; }
	 */
	
	
	
	
	
}