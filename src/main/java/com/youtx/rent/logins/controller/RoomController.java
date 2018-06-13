package com.youtx.rent.logins.controller;

import com.youtx.rent.entity.Room;
import com.youtx.rent.entity.User;
import com.youtx.rent.logins.Bean.PageBean;
import com.youtx.rent.logins.service.RoomService;
import com.youtx.rent.logins.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/rooms")
public class RoomController {
    @Autowired
    private RoomService roomService;

    @Autowired
    private UserService userService;

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
        return "manage/roommanage";
    }
    public String addRoom(){

        return  "manage/roommanage";
    }

    @RequestMapping("/addRoom")
    public String addUser(Room room,Integer userId){
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = dateFormat.format(new Date());
        try {
            Date date = dateFormat.parse(format);
            room.setRoomTime(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        User user = userService.findById(userId);
        room.setUser(user);
        int addcount = roomService.addRoom(room);
        PageBean finallPage = roomService.froom();
        int totalPages = finallPage.getTotalPages();
        System.out.println("totalPages:"+totalPages);
        return "redirect:/rooms/roomPage?page="+totalPages;
    }

    @RequestMapping("/add")
    public String add(Model model){
        List<User> allUsers = userService.findAllUsers();
        model.addAttribute("allUsers",allUsers);
        return "manage/add_room";
    }
}
