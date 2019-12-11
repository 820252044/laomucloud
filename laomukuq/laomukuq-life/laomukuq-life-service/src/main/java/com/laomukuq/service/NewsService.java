package com.laomukuq.service;

import com.laomukuq.mapper.NewsMapper;
import com.laomukuq.model.news.NewsCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author laomu
 * @date 2019-12-07
 * @version 1.0
 */
@Service
public class NewsService {

    @Autowired
    private NewsMapper newsMapper;

    public NewsCode selectByName(String newsName) {
        // 根据newsName来查询对应的newsCode
        return this.newsMapper.selectByName(newsName);
    }

}
