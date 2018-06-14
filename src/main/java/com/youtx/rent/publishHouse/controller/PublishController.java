package com.youtx.rent.publishHouse.controller;

import com.youtx.rent.entity.Facility;
import com.youtx.rent.entity.Room;
import com.youtx.rent.entity.RoomDesc;
import com.youtx.rent.entity.RoomSituation;
import com.youtx.rent.publishHouse.service.HouseInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/publish")
public class PublishController {
    @Resource
    private HouseInfoService houseInfoService;

    @RequestMapping("/toHouseDescribe/{houseId}")
    public String toDescribe(@PathVariable("houseId") Integer houseId, Model model){
        model.addAttribute ( "houseId",houseId );
        return "publish_house_2";
    }

    @RequestMapping("/houseDescribe")
    @ResponseBody
    public String houseDescribe(Integer houseid, RoomSituation roomSituation, RoomDesc desc, Facility facility){
        Room room = new Room ();
        room.setRoomId ( houseid );
        String situFloor = roomSituation.getSituFloor ();
        if("/".equals (situFloor)){
            roomSituation.setSituFloor (null);
        }
        roomSituation.setRoom ( room );
        desc.setRoom ( room );
        facility.setRoom ( room );
        int info = houseInfoService.saveHouseInfo ( roomSituation, desc, facility );
        if(info==1){
            return "3";
        }
        return "0";
    }
}
