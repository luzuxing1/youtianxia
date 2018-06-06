package com.youtx.rent.solr.controller;

import com.youtx.rent.entity.Room;
import com.youtx.rent.entity.RoomResource;
import com.youtx.rent.solr.service.KeywordService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/key")
public class KeywordController {

    @Resource
    KeywordService keywordService;

    @RequestMapping("/place")
    public String searchByKeyword(String keyword, String city, Model model){
        List<Object[]> roomList = keywordService.findInfoByKeyword(keyword, city);
        model.addAttribute("roomList",roomList);
        return "find_place";
    }
}
