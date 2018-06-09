package com.youtx.rent.dao;

import com.youtx.rent.entity.LodgerOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface LodgerOrderMapper {
    int deleteByPrimaryKey(Integer lodgerOrderId);

    int insert(LodgerOrder record);

    int insertSelective(LodgerOrder record);

    LodgerOrder selectByPrimaryKey(Integer lodgerOrderId);

    List<LodgerOrder> selectByUserId(Integer userId);
    List<LodgerOrder> selectByStatus(@Param("userId") Integer userId, @Param("status") String status);
    List<LodgerOrder> selectByOrderNum(@Param("userId") Integer userId,@Param("orderNum") String orderNum);
    LodgerOrder selectByScheduleId(@Param("userId") Integer userId,@Param("scheduleId") Integer scheduleId);


    int CountAllOrder(Integer userId);
    int CountStatusOrder(@Param("userId") Integer userId,@Param("status") String orderStatus);
    int updateByPrimaryKeySelective(LodgerOrder record);
    void updateStatusById(@Param("lodgerOrderId") Integer lodgerOrderId,@Param("orderStatus") String status);

    int updateByPrimaryKey(LodgerOrder record);
}