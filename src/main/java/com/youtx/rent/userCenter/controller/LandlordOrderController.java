package com.youtx.rent.userCenter.controller;

import com.youtx.rent.entity.LodgerOrder;
import com.youtx.rent.entity.PageBean;
import com.youtx.rent.entity.Room;
import com.youtx.rent.entity.User;
import com.youtx.rent.placeOrder.service.OrdersService;
import com.youtx.rent.placeOrder.service.RoomMsg;
import com.youtx.rent.userCenter.service.LodgerOrders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/landlordOrder")
public class LandlordOrderController {

    @Resource
    private LodgerOrders lodgerOrdersImpl;

    @Resource
    private RoomMsg roomMsg;
    @Resource
    private OrdersService ordersService;

    @RequestMapping("/jumpRoomMaster")
    public String jumpRoomMaster(HttpSession session,Model model,Integer current){
        if (current==null){
            current = 1;
        }
        Integer start = (current-1)*3;
        Integer length = 3;
        User user = (User) session.getAttribute("user");
        Integer userId = user.getUserId();
        List<Room> rooms = roomMsg.findRoomByState(userId,start,length);

        PageBean orderPage = new PageBean();
        orderPage.setCount(rooms.size());
        orderPage.setCurrent(current);
        orderPage.setSize(length);
        int totalPages = orderPage.getTotalPages();
        model.addAttribute("orderPage",orderPage);
        model.addAttribute("totalPages",totalPages);
        model.addAttribute("rooms",rooms);
        return "room_master_manageRoom";
    }


    @RequestMapping("/jumpLandlordOrder")
    public String userCenter2(HttpSession session, Model model,String status,String paycode,String time,String num,Integer current){
        if (current==null){
            current = 1;
        }
        Integer start = (current-1)*3;
        Integer length = 3;
        User user = (User) session.getAttribute("user");
        Integer userId = user.getUserId();
        List<Integer> roomIds = lodgerOrdersImpl.findRoomId(userId);
        Integer count = 0;
        Integer dfk = 0;
        Integer drz = 0;
        Integer dqr = 0;
        Integer dpj = 0;
        Integer ysc = 0;
        List<LodgerOrder> landlordOrderList = new ArrayList<>();
        List<LodgerOrder> landlordOrderList2 = new ArrayList<>();
        for (Integer roomId : roomIds) {
            count += lodgerOrdersImpl.CountAllOrderByRoomId(roomId);
            Integer roomId1 = lodgerOrdersImpl.CountStatusOrderByRoomId(roomId, "dfk");
            dfk += lodgerOrdersImpl.CountStatusOrderByRoomId(roomId, "dfk");
            drz += lodgerOrdersImpl.CountStatusOrderByRoomId(roomId, "drz");
            dqr += lodgerOrdersImpl.CountStatusOrderByRoomId(roomId, "dqr");
            dpj += lodgerOrdersImpl.CountStatusOrderByRoomId(roomId, "dpj");
            ysc += lodgerOrdersImpl.CountStatusOrderByRoomId(roomId, "ysc");
            List<LodgerOrder> list1 = lodgerOrdersImpl.findLodgerOrderByRoomId(roomId, status, paycode, time, num);
            for (LodgerOrder order : list1) {
                landlordOrderList2.add(order);
            }
        }
        PageBean orderPage = new PageBean();
        orderPage.setCount(count-ysc);
        orderPage.setCurrent(current);
        orderPage.setSize(3);
        int totalPages = orderPage.getTotalPages();
        for (Integer i=(current-1)*3;i<current*3;i++){
            if (i==landlordOrderList2.size()){
                break;
            }
            landlordOrderList.add(landlordOrderList2.get(i));
        }



        model.addAttribute("count",count);
        model.addAttribute("dfk",dfk);
        model.addAttribute("dqr",dqr);
        model.addAttribute("drz",drz);
        model.addAttribute("dpj",dpj);
        model.addAttribute("ysc",ysc);

        for (LodgerOrder lodgerOrder : landlordOrderList) {
//            System.out.println( "-------SchedulePrice"+lodgerOrder.getSchedule().getSchedulePrice());
            System.out.println(lodgerOrder.getOrderStatus());
//            System.out.println(lodgerOrder.getRoom().getPictureList().size());
//            System.out.println(lodgerOrder.getRoom().getRoomResource().getResourceAddress());
        }
        model.addAttribute("orderPage",orderPage);
        model.addAttribute("totalPages",totalPages);
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
    @RequestMapping("/ensureLandlordOrder")
    public String ensureOrder(Integer lodgerOrderId){
        lodgerOrdersImpl.updateStatusById(lodgerOrderId,"dfk");
        Date date = new Date();
        long time = date.getTime()+60*60*1000;
        date = new Date(time);
        ordersService.updatePayTime(date,lodgerOrderId);
        return "redirect:/landlordOrder/jumpLandlordOrder";
    }

}
