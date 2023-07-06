package com.mycompany.app.infra.codegroup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CodeGroupController {

    @Autowired
    CodeGroupServiceImpl service;

    @RequestMapping("/codeGroupList")
    public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model){
        
        vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
        
        vo.setParamsPaging(service.selectOneCount(vo));
        
		
		if(vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
        
        return "admin/infra/codegroup/codeGroupList";

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

    @RequestMapping("/codeGroupForm")
    public String codeGroupForm(CodeGroupVo vo, Model model){
        CodeGroup codeGroup = service.selectOne(vo);

        model.addAttribute("item", codeGroup);

        return "admin/infra/codegroup/codeGroupForm";
    }

    @RequestMapping("/codeGroupUpdt2")
    public String codeGroupUpdt(CodeGroup dto){
        service.update(dto);
        return "redirect:/codeGroupList";
    }

    @RequestMapping("/codeGroupDelt2")
    public String codeGroupDelt(CodeGroup dto){
        service.delete(dto);
        return "redirect:/codeGroupList";
    }
    @RequestMapping("/codeGroupNsrt2")
    public String codeGroupNsrt(CodeGroup vo){
        service.insert(vo);
        return "redirect:/codeGroupList";
    }
}