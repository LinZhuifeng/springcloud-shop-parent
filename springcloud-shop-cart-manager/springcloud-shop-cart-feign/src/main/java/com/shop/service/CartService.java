package com.shop.service;

import com.shop.interfaces.CartServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "springcloud-shop-cart-service")
public interface CartService extends CartServiceApi {

}
