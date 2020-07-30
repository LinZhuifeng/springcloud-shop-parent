package com.shop.controller;

import com.shop.interfaces.SystemServiceApi;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SystemController implements SystemServiceApi {

    @Override
    public void findAll() {
        System.out.println("牢记使命");
        System.out.println("成功调用");
    }
}
