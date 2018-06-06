package com.youtx.rent.placeOrder.controller;

import com.youtx.rent.placeOrder.service.RoomMsg;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/book")
public class Book {
    @Resource
    private RoomMsg roomMsg;

    @RequestMapping("/present")
    public String present(String houseid,String livenum,String begintime,String endtime,String rooms){
        System.out.println ("houseid:"+houseid);
        System.out.println ("livenum:"+livenum);
        System.out.println ("begintime:"+begintime);
        System.out.println ("endtime:"+endtime);
        System.out.println ("rooms:"+rooms);
        return "submit_order";
    }
}
