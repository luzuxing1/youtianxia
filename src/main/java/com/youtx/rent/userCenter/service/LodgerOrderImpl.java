package com.youtx.rent.userCenter.service;

import com.youtx.rent.dao.LodgerOrderMapper;
import com.youtx.rent.dao.RoomMapper;
import com.youtx.rent.dao.ScheduleMapper;
import com.youtx.rent.entity.LodgerOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class LodgerOrderImpl implements LodgerOrders{
    @Autowired
    private LodgerOrderMapper lodgerOrderDAO;
    
    @Autowired
    private ScheduleMapper scheduleDAO;

    @Autowired
    private RoomMapper roomDAO;

    @Override
    public List<LodgerOrder> findLodgerOrder(int userId,String status,String paycode,String time,String num) {
        if ("2" .equals(num)){
            return lodgerOrderDAO.selectByUserId(userId);
        }else if ("3" .equals(num) ){
            return lodgerOrderDAO.selectByStatus(userId,status);
        }else if ("0" .equals(num)){
            if ("请输入订单号".equals(paycode)){
                List<LodgerOrder> list = new ArrayList<>();
                List<Integer> scheduleIdList = scheduleDAO.selectByTime(time);
                for (Integer integer : scheduleIdList) {
                    list.add(lodgerOrderDAO.selectByScheduleId(userId,integer));
                }
                return list;
            }
            return lodgerOrderDAO.selectByOrderNum(userId,paycode);
        }else if("1" .equals(num)){
            return lodgerOrderDAO.selectByOrderNum(userId,paycode);
        }else {
            return lodgerOrderDAO.selectByUserId(userId);
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

    @Override
    public LodgerOrder findById(Integer lodgerOrderId) {
        return lodgerOrderDAO.selectByPrimaryKey(lodgerOrderId);
    }

    @Override
    public void updateStatusById(Integer lodgerOrderId,String status) {
        lodgerOrderDAO.updateStatusById(lodgerOrderId,status);
    }

    @Override
    public void deleteOrderById(Integer lodgerOrderId) {
        lodgerOrderDAO.deleteByPrimaryKey(lodgerOrderId);
    }

    @Override
    public List<Integer> findRoomId(Integer userId) {
        return roomDAO.selectRoomId(userId);
    }

    @Override
    public Integer CountAllOrderByRoomId(Integer roomId) {
        return lodgerOrderDAO.CountAllOrderByRoomId(roomId);
    }

    @Override
    public Integer CountStatusOrderByRoomId(Integer roomId, String orderStatus) {
        return lodgerOrderDAO.CountStatusOrderByRoomId(roomId,orderStatus);
    }

    @Override
    public List<LodgerOrder> findLodgerOrderByRoomId(int roomId, String status, String paycode, String time, String num) {
        if ("2" .equals(num)){
            return lodgerOrderDAO.selectByRoomId(roomId);
        }else if ("3" .equals(num) ){
            return lodgerOrderDAO.selectByStatusAndRoomId(roomId,status);
        }else if ("0" .equals(num)){
            if ("请输入订单号".equals(paycode)){
                List<LodgerOrder> list = new ArrayList<>();
                List<Integer> scheduleIdList = scheduleDAO.selectByTime(time);
                for (Integer integer : scheduleIdList) {
                    list.add(lodgerOrderDAO.selectByScheduleIdAndRoomId(roomId,integer));
                }
                return list;
            }
            return lodgerOrderDAO.selectByOrderNumAndRoomId(roomId,paycode);
        }else if("1" .equals(num)){
            return lodgerOrderDAO.selectByOrderNumAndRoomId(roomId,paycode);
        }else {
            return lodgerOrderDAO.selectByRoomId(roomId);
        }

    }


}
