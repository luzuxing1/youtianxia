package com.youtx.rent.userCenter.service;

import com.youtx.rent.entity.LodgerOrder;

import java.util.List;

public interface LodgerOrders {
    List<LodgerOrder> findLodgerOrder(int userId);
    int CountAllOrder(Integer userId);
}
