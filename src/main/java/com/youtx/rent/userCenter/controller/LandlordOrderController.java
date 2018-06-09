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
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/landlordOrder")
public class LandlordOrderController {

    @Resource
    private LodgerOrders lodgerOrdersImpl;

    @Resource
    private RoomMsg roomMsg;


    @RequestMapping("/jumpLandlordOrder")
    public String userCenter2(HttpSession session, Model model,String status,String paycode,String time,String num){

        User user = (User) session.getAttribute("user");
        Integer userId = user.getUserId();
        List<Integer> roomIds = lodgerOrdersImpl.findRoomId(userId);
        Integer count = 0;
        Integer dfk = 0;
        Integer drz = 0;
        Integer dqr = 0;
        Integer dpj = 0;
        List<LodgerOrder> landlordOrderList = new ArrayList<>();
        for (Integer roomId : roomIds) {
            count += lodgerOrdersImpl.CountAllOrderByRoomId(roomId);
            Integer roomId1 = lodgerOrdersImpl.CountStatusOrderByRoomId(roomId, "dfk");
            dfk += lodgerOrdersImpl.CountStatusOrderByRoomId(roomId, "dfk");
            drz += lodgerOrdersImpl.CountStatusOrderByRoomId(roomId, "drz");
            dqr += lodgerOrdersImpl.CountStatusOrderByRoomId(roomId, "dqr");
            dpj += lodgerOrdersImpl.CountStatusOrderByRoomId(roomId, "dpj");
            List<LodgerOrder> list1 = lodgerOrdersImpl.findLodgerOrderByRoomId(roomId, status, paycode, time, num);
            for (LodgerOrder order : list1) {
                landlordOrderList.add(order);
            }
        }
        model.addAttribute("count",count);
        model.addAttribute("dfk",dfk);
        model.addAttribute("dqr",dqr);
        model.addAttribute("drz",drz);
        model.addAttribute("dpj",dpj);
        for (LodgerOrder lodgerOrder : landlordOrderList) {
//            System.out.println( "-------SchedulePrice"+lodgerOrder.getSchedule().getSchedulePrice());
            System.out.println(lodgerOrder.getOrderStatus());
//            System.out.println(lodgerOrder.getRoom().getPictureList().size());
//            System.out.println(lodgerOrder.getRoom().getRoomResource().getResourceAddress());
        }

        model.addAttribute("landlordOrderList",landlordOrderList);
//        System.out.println(lodgerOrderList.size());
        return "room_master_manageOrder";
    }
    @RequestMapping("/cancelLandlordOrder")
    public String cancelOrder(Integer lodgerOrderId,String beginTime,String endTime,Integer roomId){

        lodgerOrdersImpl.updateStatusById(lodgerOrderId,"yqx");
        roomMsg.updateCalendarStatus("",beginTime,endTime,roomId);
        return "redirect:/landlordOrder/jumpLandlordOrder";
    }
    @RequestMapping("/deleteLandlordOrder")
    public String deleteOrder(Integer lodgerOrderId){
        lodgerOrdersImpl.updateStatusById(lodgerOrderId,"ysc");
        return "redirect:/landlordOrder/jumpLandlordOrder";
    }
}
