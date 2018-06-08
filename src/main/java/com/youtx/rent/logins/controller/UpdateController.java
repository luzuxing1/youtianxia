package com.youtx.rent.logins.controller;

import com.youtx.rent.logins.result.JsonResult;
import com.youtx.rent.logins.service.UpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/update")
@Controller
public class UpdateController {
    @Autowired
    private UpdateService updateService;

    @ResponseBody
    @RequestMapping("/updatePassword")
    public Object update(String password,String phone){
        JsonResult jsonResult = updateService.update(password, phone);
        return jsonResult;
    }
}
