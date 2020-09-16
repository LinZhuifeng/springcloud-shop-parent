package com.shop.controller;

import com.shop.entity.Member;
import com.shop.entity.Memberrank;
import com.shop.interfaces.SystemServiceApi;
import com.shop.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class SystemController implements SystemServiceApi {

    @Autowired
    private MemberService memberService;

    @Override
    public List<Member> list() {
        return memberService.list();
    }

    @Override
    public void deleteMember(String ids) {
        memberService.deleteMember(ids);
    }

    @Override
    public void addMember(Member member) {
        memberService.addMember(member);
    }

    @Override
    public Member findById(Long id) {
        return memberService.findById(id);
    }

    @Override
    public void updateMember(Member member) {
        memberService.updateMember(member);
    }

    @Override
    public List<Memberrank> dengji() {
        return memberService.dengji();
    }

    @Override
    public void addMemberRank(Memberrank memberrank) {
        memberService.addMemberRank(memberrank);
    }

    @Override
    public void deleteMemberRank(String ids) {
        memberService.deleteMemberRank(ids);
    }

    @Override
    public Memberrank editIdByRank(Long id) {
        return memberService.editIdByRank(id);
    }


}
