package com.shop.service;

import com.shop.entity.Member;
import com.shop.entity.Memberrank;

import java.util.List;

public interface MemberService {
    List<Member> list();

    void deleteMember(String ids);

    void addMember(Member member);

    Member findById(Long id);

    void updateMember(Member member);

    List<Memberrank> dengji();

    void addMemberRank(Memberrank memberrank);

    void deleteMemberRank(String ids);

    Memberrank editIdByRank(Long id);
}
