package com.laomukuq;

import cc.moecraft.icq.PicqBotX;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import java.util.List;
import java.util.concurrent.ExecutorService;

/**
 * @author laomu
 * @version 1.0
 * @description 机器人启动类
 * @date 2019-12-10
 */
@SpringBootApplication
@EnableDiscoveryClient
@EnableCaching
public class LaomukuqBotApplication {
    @Autowired
    private BuildBot buildBot;
    public static void main(String[] args) {
        SpringApplication.run(LaomukuqBotApplication.class, args);

    }

    @Bean
    public List<PicqBotX> getpicqBotXs(){
        return buildBot.getpicqBotXs();
    }

    @Bean
    public ExecutorService getExecutorService(){
        return buildBot.getExecutorService();
    }

    @Bean(initMethod = "initBots")
    public BuildBot getBuileBot(){
        return new BuildBot();
    }

}
