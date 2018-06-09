package com.youtx.rent.userCenter.service;

import com.youtx.rent.entity.LodgerOrder;

import java.util.List;

public interface LodgerOrders {
    List<LodgerOrder> findLodgerOrder(int userId,String status,String paycode,String time,String num);
    int CountAllOrder(Integer userId);
    int CountStatusOrder(Integer userId,String orderStatus);
    LodgerOrder findById(Integer lodgerOrderId);
    void updateStatusById(Integer lodgerOrderId ,String status);
    void deleteOrderById(Integer lodgerOrderId);

    List<Integer> findRoomId(Integer userId);
    Integer CountAllOrderByRoomId(Integer roomId);
    Integer CountStatusOrderByRoomId(Integer roomId, String orderStatus);
    List<LodgerOrder> findLodgerOrderByRoomId(int roomId,String status,String paycode,String time,String num);
}
