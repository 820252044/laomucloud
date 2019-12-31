package com.laomuwms.store.service;

import com.laomuwms.store.mapper.WmImNoticeIMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author laomu
 * @version 1.0
 * @description
 * @date 2019-12-31
 */
@Service
public class BiService {

    @Autowired
    private WmImNoticeIMapper wmImNoticeIMapper;

    public long stayOnCounts() {
        return this.wmImNoticeIMapper.stayOnCounts();
    }

    public long stayGoods() {
        return this.wmImNoticeIMapper.stayGoods();
    }

    public long pickingGoods() {
        return this.wmImNoticeIMapper.pickingGoods();
    }

    public long stayPickGoods() {
        return this.wmImNoticeIMapper.stayPickGoods();
    }

    public long planGoods() {
        return this.wmImNoticeIMapper.planGoods();
    }
}
