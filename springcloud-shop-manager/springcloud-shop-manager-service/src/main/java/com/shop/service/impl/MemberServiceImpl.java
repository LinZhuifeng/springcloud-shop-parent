package com.shop.service.impl;

import com.shop.dao.MemberMapper;
import com.shop.entity.Member;
import com.shop.entity.Memberrank;
import com.shop.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public List<Member> list() {
        return memberMapper.list();
    }

    @Override
    public void deleteMember(String ids) {
        String[] split = ids.split(",");
        for (int i = 0; i < split.length; i++) {
            if (split[i] != null && !"".equals(split[i])) {
                memberMapper.deleteByPrimaryKey(Long.valueOf(split[i].trim()));
            }
        }

    }

    @Override
    public void addMember(Member member) {
        List<Member> list = memberMapper.findId();
        if(list==null || CollectionUtils.isEmpty(list)){
            member.setId(1L);
        }else{
            member.setId(list.get(0).getId()+1);
        }
        member.setAddress("无地址");
        member.setAmount("0");
        member.setAttributevalue1("0");
        member.setBalance(new BigDecimal(100));
        member.setPoint(100l);

        member.setBirth(new Date());
        member.setGender(1);
        memberMapper.addMember(member);
    }

    @Override
    public Member findById(Long id) {
        return memberMapper.findById(id);
    }

    @Override
    public void updateMember(Member member) {
        memberMapper.updateMember(member);
    }

    @Override
    public List<Memberrank> dengji() {
        return memberMapper.dengji();
    }

    @Override
    public void addMemberRank(Memberrank memberrank) {
        List<Memberrank> rankList = memberMapper.findIdByRank();
        if(rankList ==null || CollectionUtils.isEmpty(rankList)){
            memberrank.setId(1l);
        }else{
            memberrank.setId(rankList.get(0).getId()+1);
        }

        if(memberrank.getIsspecial()==true){
            memberrank.setAmount(new BigDecimal(0));
        }else{
            memberrank.setAmount(memberrank.getAmount());
        }

        memberrank.setCreateddate(new Date());
        memberrank.setLastmodifieddate(new Date());
        memberrank.setVersion(0l);
        memberMapper.addMemberRank(memberrank);
    }

    @Override
    public void deleteMemberRank(String ids) {
        String[] split = ids.split(",");
        for (int i = 0; i < split.length; i++) {
            if (split[i] != null && !"".equals(split[i])) {
                memberMapper.deleteMemberRank(Long.valueOf(split[i].trim()));
            }
        }
    }

    @Override
    public Memberrank editIdByRank(Long id) {
        return memberMapper.editIdByRank(id);
    }

}
