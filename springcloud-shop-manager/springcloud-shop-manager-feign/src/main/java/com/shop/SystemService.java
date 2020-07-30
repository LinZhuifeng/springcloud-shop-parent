package com.shop;

import com.shop.interfaces.SystemServiceApi;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;

@FeignClient(value = "springcloud-shop-manager-service")
@Component
public interface SystemService extends SystemServiceApi {
}
