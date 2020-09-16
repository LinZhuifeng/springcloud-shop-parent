package com.shop.interfaces;

import com.shop.pojo.Cart;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

public interface CartServiceApi {

    @RequestMapping("addGoodsToCartList")
    public List<Cart> addGoodsToCartList(@RequestBody List<Cart> cartList, @RequestParam Long itemId,@RequestParam Integer num);

    //从redis中查询商品
    @RequestMapping("findCartList")
    public List<Cart> findCartListFromRedis(@RequestParam String username);

    //新增商品到redis中
    @RequestMapping("saveCartListToRedis")
    public void saveCartListToRedis(@RequestParam String username,@RequestBody List<Cart> cartList);

    //合并购物车
    @RequestMapping("mergeCartList")
    public List<Cart> mergeCartList(@RequestBody Map<String, Object> map);
}
