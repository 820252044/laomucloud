package com.laomukuq;

import com.laomurfid.base.RfidBase;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;


/**
 * @author laomu
 * @version 1.0
 * @description
 * @date 2019-12-20
 */
@SpringBootApplication
@EnableDiscoveryClient
@EnableCaching
public class LaomuWmsApplication {

    public static void main(String[] args) {
        SpringApplication.run(LaomuWmsApplication.class, args);
    }
}
