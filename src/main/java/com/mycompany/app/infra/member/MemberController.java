package com.mycompany.app.infra.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {

    @Autowired
    MemberServiceImpl service;

    @RequestMapping("/memberList")
    public String codeGroupList(@ModelAttribute("vo") MemberVo vo, Model model){
        
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
        
		vo.setParamsPaging(service.selectOneCount(vo));
        
		
		if(vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
        
        return "admin/infra/member/memberList";

		/*
		 * vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		 * List<CodeGroup> list = service.selectList(vo); model.addAttribute("list",
		 * list);  model.addAttribute("vo", vo);
		 * 
		 *  model.addAttribute("list", service.selectList());
		 * 
		 * 
		 * return "admin/infra/codegroup/codeGroupList";
		 */
    }

    @RequestMapping("/memberAdmForm")
    public String memberAdmForm(MemberVo vo, Model model){
        Member item = service.selectOne(vo);

        model.addAttribute("item", item);

        return "admin/infra/member/memberAdmForm";
    }
    

	
	
	@ResponseBody
	@RequestMapping("/indexUsrLoginViewAjax")
	public Map<String, Object> indexUsrLoginView(MemberVo vo, HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneAjax(vo);
		
		if(rtMember != null) {
			
			httpSession.setMaxInactiveInterval(60*60);	// 60min
			httpSession.setAttribute("sessionId", vo.getId());
			
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping("/logoutUsrProc")
	public Map<String, Object> logoutUsrForm(HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	
	@ResponseBody
	@RequestMapping("/checkIdProc")
	public Map<String, Object> checkIdProc(MemberVo vo) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int rtNum = service.selectOneCheckId(vo);
		
		if(rtNum == 0) {
			returnMap.put("rt", "available");
		} else {
			returnMap.put("rt", "unavailable");
		}
		
		return returnMap;
	}
	
	

    @RequestMapping("/memberUpdt2")
    public String memberUpdt(Member dto){
        service.update(dto);
        return "redirect:/memberList";
    }

    @RequestMapping("/memberDelt2")
    public String memberDelt(Member dto){
        service.delete(dto);
        return "redirect:/memberList";
    }
    @RequestMapping("/memberNsrt2")
    public String memberNsrt(Member vo){
        service.insert(vo);
        return "redirect:/memberList";
    }
}