package com.youtx.rent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Freemaker {

    @RequestMapping("/test")
    public String test(){
        return "index";
    }

    @RequestMapping("/order")
    public String ttt(){
        return "publish_house_4";
    }

    @RequestMapping("/pay")
    public String afaf(){
        return "publish_house_5";
    }
}
