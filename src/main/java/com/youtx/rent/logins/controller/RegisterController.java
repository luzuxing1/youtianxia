package com.youtx.rent.logins.controller;

import com.youtx.rent.logins.result.JsonResult;
import com.youtx.rent.logins.service.RegisterService;
import com.youtx.rent.logins.utils.SystemParm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/reg")
@Controller
public class RegisterController {
    @Autowired
    private RegisterService registerService;
    @ResponseBody
    @RequestMapping("/checkPhone")
    public Object checkPhone(String phone){
        JsonResult checks = registerService.checks(phone);
        return checks;
    }
    @RequestMapping("/addUser")
    @ResponseBody
    public Object addUser(String userPhone,String password,String userRealname){
        JsonResult jsonResult = new JsonResult();
        String  add = registerService.add(userPhone, password, userRealname);
        if(add.equals("sucess")){
            jsonResult.setCode(SystemParm.Login.ADD_SUCCESS);
            jsonResult.setMsg(SystemParm.Login.ADD_ADDSUCESS);
        }else {
            jsonResult.setCode(SystemParm.Login.ADD_Fail);
            jsonResult.setMsg(SystemParm.Login.ADD_FAILD);
        }
        return jsonResult;
    }
    @RequestMapping("/register")
    public String register(){
        return "register";
    }
}
