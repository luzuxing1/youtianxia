package com.youtx.rent.logins.controller;

import com.youtx.rent.entity.Room;
import com.youtx.rent.logins.Bean.PageBean;
import com.youtx.rent.logins.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/rooms")
public class RoomController {
    @Autowired
    private RoomService roomService;

    @RequestMapping("/roomPage")
    public String find(int page, Model model){
        String cPage = Integer.toString(page);
        if(cPage == null || cPage.equals("")){
            throw new IllegalArgumentException("必须传递页面数");
        }
        PageBean pageBean = roomService.findAllRooms(page);
        List<Room> roomList = pageBean.getRooms();
        model.addAttribute("roomList",roomList);
        model.addAttribute("roomPage",pageBean);
        return "roommanage";
    }
}
