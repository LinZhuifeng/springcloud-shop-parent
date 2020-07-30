package com.shop.interfaces;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public interface SystemServiceApi {

    @RequestMapping(value = "/findAll", method = RequestMethod.POST)
    void findAll();
}
