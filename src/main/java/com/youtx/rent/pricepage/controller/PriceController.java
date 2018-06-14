package com.youtx.rent.pricepage.controller;

import com.youtx.rent.entity.Price;
import com.youtx.rent.entity.Require;
import com.youtx.rent.entity.Room;
import com.youtx.rent.entity.Rule;
import com.youtx.rent.pricepage.service.PriceAndRequireService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/fourthPage")
public class PriceController {

    @Resource
    private PriceAndRequireService priceAndRequireService;

    @ResponseBody
    @RequestMapping("/price")
    public Object savePrice(Room room, Price price, Rule rule, Require require) {
        price.setRoom(room);
        rule.setRoom(room);
        require.setRoom(room);
        room.setRoomPrice(price.getPriceDay());
        priceAndRequireService.saveRoomInfo(price , rule, require, room);
        return 2;
    }

    @RequestMapping("/pay")
    public String goPageFive(){
        return "publish_house_5";
    }

    @RequestMapping("/index")
    public String goIndex(){
        return "index";
    }
}
