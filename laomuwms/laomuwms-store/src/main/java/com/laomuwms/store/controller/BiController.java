package com.laomuwms.store.controller;

import com.laomuwms.store.service.BiService;
import laomuwms.model.json.Highchart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/BiController")
public class BiController {

    @Autowired
    private BiService biService;

    /**
     * 首页概览数据
     *
     * @return
     */
    @GetMapping("/homeBi")
    public ResponseEntity<Map> bi() {

        // 预约进货行项目  待上架
        long num1 = biService.stayOnCounts();
        // 验收记录  待收货
        long num2 = biService.stayGoods();
        // 拣货中
        long num3 = biService.pickingGoods();
        // 待拣货
        long num4 = biService.stayPickGoods();
        // 计划数量
        long num5 = biService.planGoods();

        Map<String, Long> resultMap = new HashMap<>();
        resultMap.put("num1", num1);
        resultMap.put("num2", num2);
        resultMap.put("num3", num3);
        resultMap.put("num4", num4);
        resultMap.put("num5", num5);

        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }

    /**
     * highchart
     *
     * @return
     */
    @GetMapping("/dayCountMonth/{reportType}")
    public ResponseEntity<List<Highchart>> dayCountMonth(@PathVariable("reportType") String reportType) {
        List<Highchart> list = new ArrayList<Highchart>();
        Highchart hc = new Highchart();
        List<Map<String, Object>> maplist = biService.dayCountMonth();
        List<Map> lt = new ArrayList<>();
        hc.setName("近七日下架数量");
        hc.setType(reportType);
        Map<String, Object> map;

        if (maplist != null && maplist.size() > 0) {
            for (Map<String, Object> object : maplist) {
                map = new HashMap<>();
                map.put("name", object.get("create_date").toString());
                map.put("y", (int) Double.parseDouble(object.get("amount").toString()));
                lt.add(map);
            }
        }
        hc.setData(lt);
        list.add(hc);
        return ResponseEntity.ok(list);
    }

    /**
     * highchart
     *
     * @return
     */
    @GetMapping("/studentCountMonth/{reportType}")
    public ResponseEntity<List<Highchart>> studentCountMonth(@PathVariable("reportType") String reportType) {
        List<Highchart> list = new ArrayList<>();
        Highchart hc = new Highchart();
        List<Map<String, Object>> maplist = biService.studentCountMonth();

        List<Map> lt = new ArrayList<>();
        hc.setName("上架数量前6");
        hc.setType(reportType);
        Map<String, Object> map;

        if (null != maplist && maplist.size() > 0) {
            for (Map<String, Object> object : maplist) {
                map = new HashMap<>();
                map.put("name", object.get("goodsid").toString());
                map.put("y", (int) Double.parseDouble(object.get("amount").toString()));
                lt.add(map);
            }
        }

        hc.setData(lt);
        list.add(hc);
        return ResponseEntity.ok(list);
    }

    /**
     * highchart
     *
     * @return
     */
    @GetMapping("/studentCount/{reportType}")
    @ResponseBody
    public ResponseEntity<List<Highchart>> studentCount(@PathVariable("reportType") String reportType) {
        List<Highchart> list = new ArrayList<Highchart>();
        Highchart hc = new Highchart();
        List<Map<String,Object>> maplist=biService.studentCount();
        List<Map> lt = new ArrayList<>();
        hc.setName("下架数量前6");
        hc.setType(reportType);
        Map<String, Object> map;

        if (null != maplist && maplist.size() > 0) {
            for (Map<String,Object> object : maplist) {
                map = new HashMap<>();
                map.put("name", object.get("goodsid").toString());
                map.put("y",  (int) Double.parseDouble(object.get("amount").toString()));
                lt.add(map);
            }
        }

        hc.setData(lt);
        list.add(hc);
        return ResponseEntity.ok(list);
    }

}
