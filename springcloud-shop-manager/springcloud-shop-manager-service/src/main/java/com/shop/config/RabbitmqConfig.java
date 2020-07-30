package com.shop.config;

import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitmqConfig {

    // 配置一个工作模型队列
    @Bean
    public Queue queueWork1() {
        return new Queue("virtual_rambo");
    }
}
