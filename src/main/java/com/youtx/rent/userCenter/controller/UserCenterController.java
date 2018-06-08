package com.youtx.rent.userCenter.controller;

import com.youtx.rent.entity.LodgerOrder;
import com.youtx.rent.entity.User;
import com.youtx.rent.placeOrder.service.RoomMsg;
import com.youtx.rent.userCenter.service.LodgerOrders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
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
    public String userCenter2(HttpSession session, Model model,String status){
//        System.out.println(status+"00000");

        User user = (User) session.getAttribute("user");
        Integer userId = user.getUserId();
        int countAllOrder = lodgerOrderImpl.CountAllOrder(userId);

        int dfk = lodgerOrderImpl.CountStatusOrder(userId, "dfk");
        int drz = lodgerOrderImpl.CountStatusOrder(userId, "drz");
        int dqr = lodgerOrderImpl.CountStatusOrder(userId, "dqr");
        int dpj = lodgerOrderImpl.CountStatusOrder(userId, "dpj");
        model.addAttribute("dfk",dfk);
        model.addAttribute("dqr",dqr);
        model.addAttribute("drz",drz);
        model.addAttribute("dpj",dpj);

        List<LodgerOrder> lodgerOrderList = lodgerOrderImpl.findLodgerOrder(userId,status);

        for (LodgerOrder lodgerOrder : lodgerOrderList) {
            System.out.println( "-------SchedulePrice"+lodgerOrder.getSchedule().getSchedulePrice());
            System.out.println(lodgerOrder.getRoom().getRoomName());
//            List<String> pics = roomMsg.findPics(lodgerOrder.getRoom().getRoomId());
//            System.out.println(pics.size());
            System.out.println(lodgerOrder.getRoom().getPictureList().size());
            System.out.println(lodgerOrder.getRoom().getRoomResource().getResourceAddress());
        }

        model.addAttribute("countAllOrder",countAllOrder);
        model.addAttribute("lodgerOrderList",lodgerOrderList);
//        System.out.println(lodgerOrderList.size());
        return "room_manageOrder";
    }



}
