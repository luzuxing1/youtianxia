package com.youtx.rent.dao;

import com.youtx.rent.entity.LodgerOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;
@Repository
public interface LodgerOrderMapper {
    int deleteByPrimaryKey(Integer lodgerOrderId);

    int insert(LodgerOrder record);

    int insertSelective(LodgerOrder record);

    LodgerOrder selectByPrimaryKey(Integer lodgerOrderId);
    List<LodgerOrder> selectByUserId(@Param("userId") Integer userId,@Param("start") Integer start,@Param("length") Integer length);
    List<LodgerOrder> selectByStatus(@Param("userId") Integer userId, @Param("status") String status,@Param("start") Integer start,@Param("length") Integer length);
    List<LodgerOrder> selectByOrderNum(@Param("userId") Integer userId,@Param("orderNum") String orderNum,@Param("start") Integer start,@Param("length") Integer length);
    LodgerOrder selectByScheduleId(@Param("userId") Integer userId,@Param("scheduleId") Integer scheduleId);


    int CountAllOrder(Integer userId);
    int CountStatusOrder(@Param("userId") Integer userId,@Param("status") String orderStatus);
    int updateByPrimaryKeySelective(LodgerOrder record);
    void updateStatusById(@Param("lodgerOrderId") Integer lodgerOrderId,@Param("orderStatus") String status);

    int updateByPrimaryKey(LodgerOrder record);


    Integer CountAllOrderByRoomId(Integer roomId);
    Integer CountStatusOrderByRoomId(@Param("roomId") Integer roomId,@Param("status") String orderStatus);
    List<LodgerOrder> selectByRoomId(@Param("roomId") Integer roomId);
    List<LodgerOrder> selectByStatusAndRoomId(@Param("roomId") Integer roomId, @Param("status") String status);
    List<LodgerOrder> selectByOrderNumAndRoomId(@Param("roomId") Integer roomId,@Param("orderNum") String orderNum);
    LodgerOrder selectByScheduleIdAndRoomId(@Param("roomId") Integer roomId,@Param("scheduleId") Integer scheduleId);

    LodgerOrder selectByOrderId(Integer lodgerOrderId);
    void updateByOrderId(@Param ( "payTime" )Date payTime ,@Param("lodgerOrderId") Integer lodgerOrderId);

    void updateStatusByOrderNum(@Param("orderStatus") String orderStatus,@Param("orderNum") String orderNum);
}