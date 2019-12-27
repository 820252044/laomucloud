package com.laomukuq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author laomu
 * @version 1.0
 * @description
 * @date 2019-12-17
 */
@RestController
public class TestController {

    @Autowired
    RedisTemplate<String,Object> redisTemplate;

    //添加字符串
    @GetMapping("setSet")
    public void setSet() {
        this.redisTemplate.opsForValue().set("key","value");
    }

    //获取字符串
    @GetMapping("getSet")
    public void getSet() {
        String str = (String)this.redisTemplate.opsForValue().get("key");
        System.out.println("你好"+str);
    }

    //添加对象
    @GetMapping("setUser")
    public void setUser(){
        this.redisTemplate.opsForValue().set("user",new User("张三","24","上海"));
    }

    //获取对象
    @GetMapping("getUser")
    public User getUser(){
        User user = (User) this.redisTemplate.opsForValue().get("user");
        System.out.println(user != null ? user.toString() : null);
        return user;
    }
}
