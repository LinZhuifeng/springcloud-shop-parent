package com.shop.controller;

import com.shop.entity.Member;
import com.shop.entity.Memberrank;
import com.shop.pojo.Result;
import com.shop.service.MemberService;
import com.shop.util.ExportExcel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("member")
public class MemberController {

    @Autowired
    private MemberService memberService;

    //会员管理的操作
    @RequestMapping("deleteMember")
    public Result deleteMember(String ids){
        try {
            memberService.deleteMember(ids);
            return new Result(true, "删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false, "删除失败");
        }
    }

    @RequestMapping("addMember")
    public Result addMember(Member member){
        try {
            memberService.addMember(member);
            return new Result(true, "新增成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false, "新增失败");
        }
    }

    @RequestMapping("updateMember")
    public Result updateMember(Member member){
        try {
            memberService.updateMember(member);
            return new Result(true, "修改成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false, "修改失败");
        }
    }

    @RequestMapping("exportMemberRank")
    public void exportMemberRank(Member member, HttpServletResponse response) throws Exception {
        //查询所有导出数据
        List<Member> members = memberService.list();
        String title = "会员管理";
        String[] rowName = {"用户名","会员等级","E-mail","创建日期","状态"};
        List<Object[]> dataList = new ArrayList<Object[]>();
        Object[] obj = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        for (Member m: members) {
            obj = new Object[rowName.length];
            obj[0] = m.getUsername();
            obj[1] = m.getMemberrankId();
            obj[2] = m.getEmail();
            if (m.getBirth() != null && !"".equals(m.getBirth())) {
                obj[3] = sdf.format(m.getBirth());
            }
            obj[4] = m.getGender();

            dataList.add(obj);
        }
        ExportExcel exportExcel = new ExportExcel(title, rowName, dataList, response);
        exportExcel.export();
    }


    //会员等级管理的操作
    @RequestMapping("addMemberRank")
    public Result addMemberRank(Memberrank memberrank){
        try {
            memberService.addMemberRank(memberrank);
            return new Result(true,"添加成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false,"添加失败");
        }
    }

    @RequestMapping("deleteMemberRank")
    public Result deleteMemberRank(String ids){
        try {
            memberService.deleteMemberRank(ids);
            return new Result(true, "删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false, "删除失败");
        }
    }


}
