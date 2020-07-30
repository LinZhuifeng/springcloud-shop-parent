package com.shop.controller;

import com.shop.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sys")
public class SystemController {

    @Autowired
    private SystemService systemService;

    @RequestMapping("/findAll")
    public String findAll() {
        try {
            System.out.println("不忘初心");
            systemService.findAll();
            return "成1功";
        } catch (Exception e) {
            e.printStackTrace();
            return "失败";
        }
    }
}
