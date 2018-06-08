package com.youtx.rent.dao;

import com.youtx.rent.entity.LodgerOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LodgerOrderMapper {
    int deleteByPrimaryKey(Integer lodgerOrderId);

    int insert(LodgerOrder record);

    int insertSelective(LodgerOrder record);

    LodgerOrder selectByPrimaryKey(Integer lodgerOrderId);

    List<LodgerOrder> selectByUserId(Integer userId);

    List<LodgerOrder> selectByStatus(@Param("userId") Integer userId, @Param("status") String status);

    int CountAllOrder(Integer userId);
    int CountStatusOrder(@Param("userId") Integer userId,@Param("status") String orderStatus);
    int updateByPrimaryKeySelective(LodgerOrder record);

    int updateByPrimaryKey(LodgerOrder record);
}