package com.laomuwms.store.mapper;

import com.laomuwms.store.entity.WmImNoticeI;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @author laomu
 * @description 
 * @date 2019-12-31
 * @version 1.0
 */
@Repository
public interface WmImNoticeIMapper {
    int deleteByPrimaryKey(String id);

    int insert(WmImNoticeI record);

    int insertSelective(WmImNoticeI record);

    WmImNoticeI selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(WmImNoticeI record);

    int updateByPrimaryKey(WmImNoticeI record);

    long stayOnCounts();

    long stayGoods();

    long pickingGoods();

    long stayPickGoods();

    long planGoods();

    List<Map<String, Object>> dayCountMonth();

    List<Map<String, Object>> studentCountMonth();

    List<Map<String, Object>> studentCount();
}