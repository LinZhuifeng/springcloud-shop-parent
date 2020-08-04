package com.shop.service;

import com.shop.interfaces.SystemServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "springcloud-shop-manager-service")
public interface MemberService extends SystemServiceApi {

}
