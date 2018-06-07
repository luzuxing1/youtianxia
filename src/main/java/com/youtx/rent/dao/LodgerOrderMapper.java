package com.youtx.rent.dao;

import com.youtx.rent.entity.LodgerOrder;

import java.util.List;

public interface LodgerOrderMapper {
    int deleteByPrimaryKey(Integer lodgerOrderId);

    int insert(LodgerOrder record);

    int insertSelective(LodgerOrder record);

    LodgerOrder selectByPrimaryKey(Integer lodgerOrderId);

    List<LodgerOrder> selectByUserId(Integer userId);
    int CountAllOrder(Integer userId);

    int updateByPrimaryKeySelective(LodgerOrder record);

    int updateByPrimaryKey(LodgerOrder record);
}