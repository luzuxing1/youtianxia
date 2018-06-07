package com.youtx.rent.userCenter.controller;

import com.youtx.rent.entity.LodgerOrder;
import com.youtx.rent.entity.RoomResource;
import com.youtx.rent.entity.User;
import com.youtx.rent.placeOrder.service.RoomMsg;
import com.youtx.rent.userCenter.service.LodgerOrders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/userCenter")
public class UserCenterController {
    @Resource
    private LodgerOrders lodgerOrderImpl;
    @Resource
    private RoomMsg roomMsg;


    @RequestMapping("jumpPage")
    public String userCenter(){
        return "person_center";
    }

    @RequestMapping("jumpLodgerPage")
    public String userCenter2(HttpSession session, Model model){
        User user = (User) session.getAttribute("user");
        Integer userId = user.getUserId();
        int countAllOrder = lodgerOrderImpl.CountAllOrder(userId);
        List<LodgerOrder> lodgerOrderList = lodgerOrderImpl.findLodgerOrder(userId);
        List<String> picList = new ArrayList<>();
        List<RoomResource> resourceList = new ArrayList<>();

//        Map<LodgerOrder,List<String>> maps = new LinkedHashMap<>();
        for (LodgerOrder lodgerOrder : lodgerOrderList) {
            List<String> pics = roomMsg.findPics(lodgerOrder.getRoom().getRoomId());
//            maps.put(lodgerOrder,pics);
            picList.add(pics.get(0));
        }


//        System.out.println(user.getUserId()+"---user"+countAllOrder+"count");
//        model.addAttribute("maps",maps);
        model.addAttribute("countAllOrder",countAllOrder);
        model.addAttribute("lodgerOrderList",lodgerOrderList);
//        System.out.println(lodgerOrderList.size());
        return "room_manageOrder";
    }
}
