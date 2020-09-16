package com.shop.controller;

import com.alibaba.fastjson.JSON;
import com.shop.pojo.Cart;
import com.shop.pojo.Result;
import com.shop.service.CartService;
import com.shop.util.CookieUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("cart")
public class CartController {

    @Autowired
    private CartService cartService;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private HttpServletResponse response;

    //先让商品添加到购物车列表
    @RequestMapping("addGoodsToCartList")
    public List<Cart> addGoodsToCartList(List<Cart> cartList, Long itemId, Integer num)  {
        return cartService.addGoodsToCartList(cartList,itemId,num);
    }

    /**
     * 购物车列表
     * @param
     * @return
     */
    @RequestMapping("findCartList")
    public List<Cart> findCartList(){
        //aa为未登录
        String username = "aa";
        String cartListString = CookieUtil.getCookieValue(request, "cartList","UTF-8");
        if(cartListString==null || cartListString.equals("")){
            cartListString="[]";
        }
        List<Cart> cartList_cookie = JSON.parseArray(cartListString, Cart.class);

        if(username.equals("aa")){
            // ==aa就是未登录
            return cartList_cookie;
        }else{
            // 已登录 获取redis中商品
            List<Cart> cartList_redis = cartService.findCartListFromRedis(username);
            if(cartList_redis.size()>0){
                //合并购物车
                Map<String, Object> map = new HashMap<>();
                map.put("cartList1",cartList_cookie);//cookie
                map.put("cartList2",cartList_redis);//redis
                cartList_redis = cartService.mergeCartList(map);
                //清除本地cookie
                CookieUtil.deleteCookie(request, response, "cartList");
                cartService.saveCartListToRedis(username, cartList_redis);
            }
            return cartList_redis;
        }
    }

    /**
     * 添加商品到购物车
     * @param itemId
     * @param num
     * @return
     */
    @RequestMapping("addGoodsToCartList2")
    public Result addGoodsToCartList2(Long itemId, Integer num){
        //获得登录人
        String username = "aa";
        try {
            List<Cart> cartList =findCartList();//获取购物车列表
            cartList = cartService.addGoodsToCartList(cartList, itemId, num);
            if(username.equals("aa")){
                //aa 为未登录
                CookieUtil.setCookie(request, response, "cartList", JSON.toJSONString(cartList),3600*24,"UTF-8");
            }else{
                //已登录
                cartService.saveCartListToRedis(username,cartList);
            }
            return new Result(true, "添加成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false, "添加失败");
        }
    }





}
