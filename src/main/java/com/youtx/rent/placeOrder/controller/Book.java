package com.youtx.rent.placeOrder.controller;

import com.youtx.rent.entity.RoomResource;
import com.youtx.rent.entity.RoomSituation;
import com.youtx.rent.placeOrder.service.RoomMsg;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
        model.addAttribute ( "roomInfo" ,roomInfo);
        model.addAttribute ( "roomMsgAdress",roomMsgAdress );
        model.addAttribute ( "pics",pics );

        return "submit_order";
    }
}
