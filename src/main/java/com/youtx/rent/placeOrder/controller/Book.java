package com.youtx.rent.placeOrder.controller;

import com.youtx.rent.entity.Calendar;
import com.youtx.rent.entity.RoomResource;
import com.youtx.rent.entity.RoomSituation;
import com.youtx.rent.placeOrder.service.RoomMsg;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/book")
public class Book {
    @Resource
    private RoomMsg roomMsg;

    @RequestMapping("/present")
    public String present(String houseid, String livenum, String begintime, String endtime, String rooms, Model model){
        houseid = "1";
        RoomSituation roomInfo = roomMsg.findRoomInfo ( Integer.parseInt ( houseid ) );
        RoomResource roomMsgAdress = roomMsg.findAdress ( Integer.parseInt ( houseid ) );
        List<String> pics = roomMsg.findPics ( Integer.parseInt ( houseid ) );
        model.addAttribute ( "roomid",houseid );
        model.addAttribute ( "roomInfo" ,roomInfo);
        model.addAttribute ( "roomMsgAdress",roomMsgAdress );
        model.addAttribute ( "pics",pics );
        model.addAttribute ( "livenum",livenum );
        model.addAttribute ( "begintime",begintime );
        model.addAttribute ( "endtime",endtime );
        model.addAttribute ( "rooms",rooms );
        String beginWeek = roomMsg.dateToWeek ( begintime );
        String endWeek = roomMsg.dateToWeek ( endtime );
        model.addAttribute ( "beginWeek",beginWeek );
        model.addAttribute ( "endWeek",endWeek );
        Integer days = roomMsg.days ( begintime,endtime );
        model.addAttribute ( "days",days );
        Integer cleanPrice = roomMsg.cleanPrice ( Integer.parseInt ( houseid ) );
        model.addAttribute ( "cleanPrice",cleanPrice );
        List<Calendar> calendars = roomMsg.selectPriceByDate ( begintime, endtime ,Integer.parseInt ( houseid ));
        Integer price = 0;
        for (Calendar calendar : calendars) {
            price += calendar.getCalendarPrice ();
        }
        model.addAttribute ( "price",price );
        return "submit_order";
    }

    @RequestMapping("/calPrice")
    @ResponseBody
    public List<Calendar> calPrice(String begintime, String endtime,String roomid){
        List<Calendar> calendars = roomMsg.selectPriceByDate ( begintime, endtime ,Integer.parseInt ( roomid ));
        return calendars;
    }
}
