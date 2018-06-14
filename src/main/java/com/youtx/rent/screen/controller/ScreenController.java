package com.youtx.rent.screen.controller;

import com.youtx.rent.entity.PageBean;
import com.youtx.rent.entity.Room;
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
    public String allScreen(String all, Model model, int currentPage, String sort){
        String[] split = all.split("-");
        String[] prices = split[0].split(",");
        String[] place = split[3].split(",");
        String[] facs = split[4].split(",");
        String[] rooms = split[5].split(",");
        String[] types = split[6].split(",");
        Object[] info = screenService.findAllByInfo(split[1], split[2], prices[0], prices[1], place, facs, rooms, types, currentPage, sort);
        int totalPages = ((PageBean) info[0]).getTotalPages();
        boolean previous = ((PageBean) info[0]).getHasPrevious();
        boolean next = ((PageBean) info[0]).getHasNext();
        int current = ((PageBean) info[0]).getCurrent();
        Object[] pageInfo = new Object[4];
        pageInfo[0] = totalPages;
        pageInfo[1] = previous;
        pageInfo[2] = next;
        pageInfo[3] = current;
        model.addAttribute("roomList",info[1]);
        model.addAttribute("keyword", split[1]);
        model.addAttribute("selectedcity", split[2]);
        model.addAttribute("priceId", prices[1]);
        model.addAttribute("curplace", place);
        model.addAttribute("curfaci",facs);
        model.addAttribute("curRo", rooms);
        model.addAttribute("curTy", types);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("orderby", sort);
        return "find_place";
    }
}
