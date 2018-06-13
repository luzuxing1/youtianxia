package com.youtx.rent.details.controller;

import com.youtx.rent.details.service.DetailService;
import com.youtx.rent.entity.Calendar;
import com.youtx.rent.entity.Facility;
import com.youtx.rent.entity.LodgerOpinion;
import com.youtx.rent.entity.Room;
import com.youtx.rent.utils.MatchFacility;
import com.youtx.rent.utils.TheFacility;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/detail")
public class DetailController {

    @Resource
    private DetailService detailService;

    @RequestMapping("/show")
    public String toDetail(Model model, int roomId){
        Object[] infos = detailService.getAllInfoByRoomId(roomId);
        Map<TheFacility, String> facilityInfo = MatchFacility.matchIntoMap((Facility) infos[4]);
        Integer pointCount = detailService.getPointCount(roomId);
        List<LodgerOpinion> allRoom = detailService.getLandlordAllRoom(((Room) infos[0]).getUser().getUserId());
        model.addAttribute("pointCount", pointCount);
        model.addAttribute("detail", infos);
        model.addAttribute("facilityInfo", facilityInfo);
        model.addAttribute("allOpinions", allRoom);
        return "place_info";
    }

    @ResponseBody
    @RequestMapping("/judge")
    public Object ordered(String startDate, String endDate){
        Boolean byOrder = detailService.getCalendarByRange(startDate, endDate);
        return byOrder;
    }
}
