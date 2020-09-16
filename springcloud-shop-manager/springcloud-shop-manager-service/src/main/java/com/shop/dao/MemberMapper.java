package com.shop.dao;

import com.shop.entity.Member;
import com.shop.entity.Memberrank;

import java.util.List;

public interface MemberMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);

    List<Member> list();

    List<Member> findId();

    void addMember(Member member);

    Member findById(Long id);

    void updateMember(Member member);

    List<Memberrank> dengji();

    void addMemberRank(Memberrank memberrank);

    List<Memberrank> findIdByRank();

    void deleteMemberRank(Long id);

    Memberrank editIdByRank(Long id);
}