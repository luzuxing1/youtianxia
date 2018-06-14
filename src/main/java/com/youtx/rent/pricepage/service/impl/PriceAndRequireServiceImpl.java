package com.youtx.rent.pricepage.service.impl;

import com.youtx.rent.dao.PriceMapper;
import com.youtx.rent.dao.RequireMapper;
import com.youtx.rent.dao.RoomMapper;
import com.youtx.rent.dao.RuleMapper;
import com.youtx.rent.entity.Price;
import com.youtx.rent.entity.Require;
import com.youtx.rent.entity.Room;
import com.youtx.rent.entity.Rule;
import com.youtx.rent.pricepage.service.PriceAndRequireService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PriceAndRequireServiceImpl implements PriceAndRequireService {

    @Resource
    private PriceMapper priceDAO;

    @Resource
    private RuleMapper ruleDAO;

    @Resource
    private RequireMapper requireDAO;

    @Resource
    private RoomMapper roomDAO;
    @Override
    public void saveRoomInfo(Price price, Rule rule, Require require, Room room) {
        roomDAO.updateByPrimaryKeySelective(room);
        priceDAO.insert(price);
        ruleDAO.insert(rule);
        requireDAO.insert(require);
    }
}
