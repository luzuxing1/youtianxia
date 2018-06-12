package com.youtx.rent.placeOrder.service;

import com.youtx.rent.dao.LodgerOrderMapper;
import com.youtx.rent.entity.LodgerOrder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;

@Service
@Transactional
public class OrdersService {
    @Resource
    private LodgerOrderMapper lodgerOrderMapper;

    public void updatePayTime(Date date,Integer orderId){
        lodgerOrderMapper.updateByOrderId (date,orderId);
    }
    public LodgerOrder findOrder(Integer orderId){
        return lodgerOrderMapper.selectByOrderId ( orderId );
    }

    public void updateStatusByOrderNum(String status,String orderNum){
        lodgerOrderMapper.updateStatusByOrderNum ( status,orderNum );
    }
}
