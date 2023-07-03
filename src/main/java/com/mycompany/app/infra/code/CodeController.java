package com.mycompany.app.infra.code;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CodeController {

    @Autowired
    CodeServiceImpl service;

    @RequestMapping("/codeList")
    public String codeList(@ModelAttribute("vo") CodeVo vo, Model model){
        System.out.println(vo.getShOption());
        System.out.println(vo.getShKeyword());

//        vo.setShKeyword(vo.getShKeyword() == null ? "미진" : vo.getShKeyword());
        List<Code> list = service.selectList(vo);
        model.addAttribute("list", list);
        // model.addAttribute("vo", vo);

//        model.addAttribute("list", service.selectList());


        return "admin/infra/code/codeList";
    }

    @RequestMapping("/codeAdmForm")
    public String codeForm(CodeVo vo, Model model){
        Code code = service.selectOne(vo);

        model.addAttribute("item", code);

        return "admin/infra/code/codeAdmForm";
    }

    @RequestMapping("/codeUpdt2")
    public String codeUpdt(Code dto){
        service.update(dto);
        return "redirect:/codeList";
    }

    @RequestMapping("/codeDelt2")
    public String codeDelt(Code dto){
        service.delete(dto);
        return "redirect:/codeList";
    }
    @RequestMapping("/codeNsrt2")
    public String codeNsrt(Code vo){
        service.insert(vo);
        return "redirect:/codeList";
    }
}