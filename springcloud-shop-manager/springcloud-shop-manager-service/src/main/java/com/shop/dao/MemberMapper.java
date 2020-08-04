package com.shop.dao;

import com.shop.entity.Member;

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
}