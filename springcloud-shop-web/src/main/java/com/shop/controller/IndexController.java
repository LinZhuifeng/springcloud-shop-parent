package com.shop.controller;

import com.shop.entity.Member;
import com.shop.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class IndexController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("main")
    public String main(){
        return "main";
    }

    @RequestMapping("list")
    public String list(Model model){
        List<Member> memberList =  memberService.list();
        model.addAttribute("memberList",memberList);
        return "member/list";
    }

    @RequestMapping("addMember")
    public String addMember(){
        return "member/addMember";
    }

    @RequestMapping("findById")
    public String findById(Long id,Model model){
        Member member = memberService.findById(id);
        model.addAttribute("member",member);
        return "member/editMember";
    }
}
