package com.shop.interfaces;

import com.shop.entity.Member;
import com.shop.entity.Memberrank;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface SystemServiceApi {

    @RequestMapping(value = "list")
    List<Member> list();

    @RequestMapping(value = "deleteMember")
    void deleteMember(@RequestParam String ids);

    @RequestMapping(value = "addMember")
    void addMember(@RequestBody Member member);

    @RequestMapping(value = "findById")
    Member findById(@RequestParam Long id);

    @RequestMapping(value = "updateMember")
    void updateMember(@RequestBody Member member);

    @RequestMapping(value = "dengji")
    List<Memberrank> dengji();

    @RequestMapping(value = "addMemberRank")
    void addMemberRank(@RequestBody Memberrank memberrank);

    @RequestMapping(value = "deleteMemberRank")
    void deleteMemberRank(@RequestParam String ids);

    @RequestMapping(value = "editIdByRank")
    Memberrank editIdByRank(@RequestParam Long id);

}
