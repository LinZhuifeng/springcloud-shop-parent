package com.shop.controller;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.interfaces.CartServiceApi;
import com.shop.pojo.Cart;
import com.shop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
public class CartController implements CartServiceApi {

    @Autowired
    private CartService cartService;


    @Override
    public List<Cart> addGoodsToCartList(List<Cart> cartList, Long itemId, Integer num) {
        return cartService.addGoodsToCartList(cartList,itemId,num);
    }

    @Override
    public List<Cart> findCartListFromRedis(String username) {
        return cartService.findCartListFromRedis(username);
    }

    @Override
    public void saveCartListToRedis(String username, List<Cart> cartList) {
        cartService.saveCartListToRedis(username,cartList);
    }

    @Override
    public List<Cart> mergeCartList(Map<String, Object> map) {

        ObjectMapper mapper = new ObjectMapper();
        List<Cart> cartList1 = mapper.convertValue(map.get("cartList1"),new TypeReference<List<Cart>>(){});
        List<Cart> cartList2 = mapper.convertValue(map.get("cartList2"),new TypeReference<List<Cart>>(){});

        return cartService.mergeCartList(cartList1,cartList2);
    }
}
