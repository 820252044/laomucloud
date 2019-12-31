package com.laomuwms.store;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

/**
 * @author laomu
 * @version 1.0
 * @description
 * @date 2019-12-31
 */
@SpringBootApplication
//@EnableDiscoveryClient
@MapperScan(value = "com.laomuwms.store.mapper")
public class LaomuwmsStoreApplication {
    public static void main(String[] args) {
        SpringApplication.run(LaomuwmsStoreApplication.class, args);
    }
}
