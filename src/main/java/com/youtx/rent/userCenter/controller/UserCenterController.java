package com.youtx.rent.userCenter.controller;

import com.youtx.rent.entity.*;
import com.youtx.rent.placeOrder.service.RoomMsg;
import com.youtx.rent.userCenter.service.LodgerOrders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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


    @RequestMapping("/jumpPage")
    public String userCenter(){
        return "person_center";
    }

    @RequestMapping("/jumpLodgerPage")
    public String userCenter2(HttpSession session, Model model,String status,String paycode,String time,String num,Integer current){
        if (current==null){
            current = 1;
        }
        Integer start = (current-1)*3;
        Integer length = 3;
        User user = (User) session.getAttribute("user");
        Integer userId = user.getUserId();
        int countAllOrder = lodgerOrderImpl.CountAllOrder(userId);

        int dfk = lodgerOrderImpl.CountStatusOrder(userId, "dfk");
        int drz = lodgerOrderImpl.CountStatusOrder(userId, "drz");
        int dqr = lodgerOrderImpl.CountStatusOrder(userId, "dqr");
        int dpj = lodgerOrderImpl.CountStatusOrder(userId, "dpj");
        int ysc = lodgerOrderImpl.CountStatusOrder(userId, "ysc");
        model.addAttribute("dfk",dfk);
        model.addAttribute("dqr",dqr);
        model.addAttribute("drz",drz);
        model.addAttribute("dpj",dpj);
        model.addAttribute("ysc",ysc);

        List<LodgerOrder> lodgerOrderList = lodgerOrderImpl.findLodgerOrder(userId,status,paycode,time,num,start,length);

        PageBean orderPage = new PageBean();
        orderPage.setCount(countAllOrder-ysc);
        orderPage.setCurrent(current);
        orderPage.setSize(3);
        int totalPages = orderPage.getTotalPages();

        for (LodgerOrder lodgerOrder : lodgerOrderList) {
//            System.out.println( "-------SchedulePrice"+lodgerOrder.getSchedule().getSchedulePrice());
            System.out.println(lodgerOrder.getPayTime()+"----------------");
            System.out.println(lodgerOrder.getOrderStatus());
//            System.out.println(lodgerOrder.getRoom().getPictureList().size());
//            System.out.println(lodgerOrder.getRoom().getRoomResource().getResourceAddress());
        }
        model.addAttribute("orderPage",orderPage);
        model.addAttribute("totalPages",totalPages);
        model.addAttribute("countAllOrder",countAllOrder);
        model.addAttribute("lodgerOrderList",lodgerOrderList);
//        System.out.println(lodgerOrderList.size());
        return "room_manageOrder";
    }


    @RequestMapping("/jumpOrderRecycling")
    public String userCenter3(HttpSession session, Model model,String status,String paycode,String time,String num,Integer current){
        Integer start = (current-1)*3;
        Integer length = 3;
        User user = (User) session.getAttribute("user");
        Integer userId = user.getUserId();
        int countAllOrder = lodgerOrderImpl.CountAllOrder(userId);

        int ysc = lodgerOrderImpl.CountStatusOrder(userId, "ysc");

        model.addAttribute("ysc",ysc);

        List<LodgerOrder> lodgerOrderList = lodgerOrderImpl.findLodgerOrder(userId,status,paycode,time,num,start,length);


        model.addAttribute("countAllOrder",countAllOrder);
        model.addAttribute("lodgerOrderList",lodgerOrderList);
//        System.out.println(lodgerOrderList.size());
        return "orderRecycling";
    }




    @RequestMapping("/cancelOrder")
    public String cancelOrder(Integer lodgerOrderId,String beginTime,String endTime,Integer roomId){
//        LodgerOrder lodgerOrder = lodgerOrderImpl.findById(lodgerOrderId);
//        lodgerOrder.setOrderStatus("yqx");'

        lodgerOrderImpl.updateStatusById(lodgerOrderId,"yqx");
        roomMsg.updateCalendarStatus("",beginTime,endTime,roomId);
        return "redirect:/userCenter/jumpLodgerPage";
    }
    @RequestMapping("/deleteOrder")
    public String deleteOrder(Integer lodgerOrderId){
        lodgerOrderImpl.updateStatusById(lodgerOrderId,"ysc");
//        lodgerOrderImpl.deleteOrderById(lodgerOrderId);
        return "redirect:/userCenter/jumpLodgerPage";
    }

    //跳转发布房源第一页
    @RequestMapping("/jumpAddRoom")
    public String userCenter3(){
        return "publish_house_1";
    }
    //添加发布 房源第一页内容
    @RequestMapping("/addRoomInfo1")
    @ResponseBody
    public Object addRoomInfo1(HttpSession session,RoomResource roomResource,Room room) {
        User user = (User) session.getAttribute("user");
        room.setRoomState("1");
        room.setUser(user);
        roomMsg.saveRoom(room);
        Integer roomId = room.getRoomId();
//        String city = roomCity;
//        System.out.println(city);
//        String resourceAddress = Country+Province+City+District+ProjName+ChangeHouseInfo1;
//        System.out.println("-------"+roomResource.getResourceAddress());
//        RoomResource roomResource = new RoomResource();
//        roomResource.setResourceAddress(resourceAddress);
//        roomResource.setResourceSign(resourceSign);
        roomResource.setRoom(room);
        roomMsg.saveRoomResours(roomResource);
        return roomId;
    }
}
