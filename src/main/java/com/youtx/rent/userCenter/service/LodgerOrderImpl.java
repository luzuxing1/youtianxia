package com.youtx.rent.userCenter.service;

import com.youtx.rent.dao.LodgerOrderMapper;
import com.youtx.rent.entity.LodgerOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class LodgerOrderImpl implements LodgerOrders{
    @Autowired
    private LodgerOrderMapper lodgerOrderDAO;

    @Override
    public List<LodgerOrder> findLodgerOrder(int userId,String status) {
        if (status == null){
            return lodgerOrderDAO.selectByUserId(userId);
        }else {
            return lodgerOrderDAO.selectByStatus(userId,status);
        }

    }

    @Override
    public int CountAllOrder(Integer userId) {
        return lodgerOrderDAO.CountAllOrder(userId);
    }

    @Override
    public int CountStatusOrder(Integer userId, String orderStatus) {
        return lodgerOrderDAO.CountStatusOrder(userId,orderStatus);
    }
}
