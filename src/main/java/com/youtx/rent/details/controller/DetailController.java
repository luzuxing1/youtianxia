package com.youtx.rent.details.controller;

import com.youtx.rent.details.service.DetailService;
import com.youtx.rent.entity.Facility;
import com.youtx.rent.utils.MatchFacility;
import com.youtx.rent.utils.TheFacility;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Map;

@Controller
@RequestMapping("/detail")
public class DetailController {

    @Resource
    private DetailService detailService;

    @RequestMapping("/show")
    public String ToDetail(Model model, int roomId){
        Object[] infos = detailService.getAllInfoByRoomId(roomId);
        Map<TheFacility, String> facilityInfo = MatchFacility.matchIntoMap((Facility) infos[4]);
        Integer pointCount = detailService.getPointCount(roomId);
        System.out.println(pointCount);
        model.addAttribute("pointCount", pointCount);
        model.addAttribute("detail", infos);
        model.addAttribute("facilityInfo", facilityInfo);
        return "place_info";
    }
}
