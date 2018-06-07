package com.youtx.rent.screen.controller;

import com.youtx.rent.screen.service.ScreenService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/screen")
public class ScreenController {

    @Resource
    private ScreenService screenService;

    @RequestMapping("/all")
    public String allScreen(String all, Model model){
        String[] split = all.split("-");
        String[] prices = split[0].split(",");
        String[] place = split[3].split(",");
        String[] facs = split[4].split(",");
        List<Object[]> roomList = screenService.findAllByInfo(split[1], split[2], prices[0], prices[1], place, facs);
        model.addAttribute("roomList",roomList);
        model.addAttribute("keyword", split[1]);
        model.addAttribute("selectedcity", split[2]);
        model.addAttribute("priceId", prices[1]);
        model.addAttribute("curplace", place);
        model.addAttribute("curfac",facs);
        return "find_place";
    }
}
