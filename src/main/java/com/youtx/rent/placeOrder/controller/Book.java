package com.youtx.rent.placeOrder.controller;

import com.youtx.rent.entity.*;
import com.youtx.rent.placeOrder.service.RoomMsg;
import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;
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

    @RequestMapping("/isbook")
    @ResponseBody
    public Boolean isbook(String begintime, String endtime,String roomid){
        List<Calendar> calendars = roomMsg.selectPriceByDate ( begintime, endtime ,Integer.parseInt ( roomid ));
        for (Calendar calendar : calendars) {
            if(calendar.getCalendarRoom ()!=null && calendar.getCalendarRoom ().equals ( "yz" )){
                return false;
            }
        }
        return true;
    }

    @RequestMapping("/order")
    public String order(Model model,String roomtitle,String roomaddress,String begintime,String endtime
            ,String houseid,String allprices,String livenum,String rooms,String roomdays,String txtcheckinname
            ,String IDOtherNumber,String txtOthertel){
        model.addAttribute ( "roomtitle",roomtitle );
        model.addAttribute ( "roomaddress",roomaddress );
        String beginWeek = roomMsg.dateToWeek ( begintime );
        String endWeek = roomMsg.dateToWeek ( endtime );
        model.addAttribute ( "beginWeek",beginWeek );
        model.addAttribute ( "endWeek",endWeek );
        String livestarttime = begintime;
        String liveendtime = endtime;
        begintime = begintime.replace ( "-","/" );
        endtime = endtime.replace ( "-","/" );
        model.addAttribute ( "begintime",begintime );
        model.addAttribute ( "endtime",endtime );
        //数据库存贮操作
        //存schedule表 ---start
        Date timeStart = roomMsg.timeToDate ( livestarttime );
        Date timeEnd = roomMsg.timeToDate ( liveendtime );
        User user = (User) SecurityUtils.getSubject ().getSession ().getAttribute ( "user" );
        Room schRoom = new Room ();
        Schedule schedule = new Schedule ();
        schRoom.setRoomId ( Integer.parseInt ( houseid ) );
        schedule.setSchedulePrice ( Integer.parseInt ( allprices ) );
        schedule.setUser ( user );
        schedule.setRoom ( schRoom );
        schedule.setLiveStarttime ( timeStart );
        schedule.setLiveEndtime ( timeEnd );
//        roomMsg.saveSchedule ( schedule );
        //存schedule表 ---end
        //存lodgerorder表 ---start
        LodgerOrder lodgerOrder = new LodgerOrder ();
        lodgerOrder.setOrderNum ( roomMsg.orderNum () );
        lodgerOrder.setOrderTime ( new Date (  ) );
        lodgerOrder.setOrderStatus ( "dfk" );
        lodgerOrder.setRoom ( schRoom );
        lodgerOrder.setSchedule ( schedule );
        lodgerOrder.setUser ( user );
        lodgerOrder.setOrderPeopleNum ( Integer.parseInt ( livenum ) );
        lodgerOrder.setOrderRoomNum ( Integer.parseInt ( rooms ) );
        lodgerOrder.setOrderDay ( Integer.parseInt ( roomdays ) );
//        roomMsg.saveLodgerOrder ( lodgerOrder );
        //存lodgerorder表 ---end
        //修改calendar表 已租状态---start
//        roomMsg.updateCalendarStatus ( "yz",livestarttime,liveendtime );
        //修改calendar表 已租状态---end
        //存livePerson表 ---start
        if(!"".equals ( IDOtherNumber )&&!"".equals ( txtcheckinname )&&!"".equals ( txtOthertel )){
            LivePerson livePerson = new LivePerson ();
            livePerson.setPersonName ( txtcheckinname );
            livePerson.setPersonCid (  IDOtherNumber  );
            livePerson.setPersonPhone (  txtOthertel  );
            livePerson.setSchedule ( schedule );
            roomMsg.saveLivePerson ( livePerson );
        }
        //存livePerson表 ---end
        return "ordersusscess";
    }
}
