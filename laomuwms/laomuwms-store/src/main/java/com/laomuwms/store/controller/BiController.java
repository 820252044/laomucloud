package com.laomuwms.store.controller;

import com.laomuwms.store.service.BiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/BiController")
public class BiController {

    @Autowired
    private BiService biService;

    @GetMapping("/homeBi")
    public ResponseEntity<Map> bi() {

        String num1 = "0";
        String num2 = "0";
        String num3 = "0";
        String num4 = "0";
        String num5 = "0";

        // 预约进货行项目  待上架

        num1 = String.valueOf(biService.stayOnCounts());

        // 验收记录  待收货

        num2 = String.valueOf(biService.stayGoods());

        // 拣货中

        num3 = String.valueOf(biService.pickingGoods());


        // 待拣货

        num4 = String.valueOf(biService.stayPickGoods());

        // 计划数量

        num5 = String.valueOf(biService.planGoods());

        Map<String, String> resultMap = new HashMap<>();
        resultMap.put("num1", num1);
        resultMap.put("num2", num2);
        resultMap.put("num3", num3);
        resultMap.put("num4", num4);
        resultMap.put("num5", num5);

        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }

}
