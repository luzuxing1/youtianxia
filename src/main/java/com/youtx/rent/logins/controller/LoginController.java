package com.youtx.rent.logins.controller;

import com.youtx.rent.entity.User;
import com.youtx.rent.logins.result.JsonResult;
import com.youtx.rent.logins.service.LoginService;
import com.youtx.rent.logins.utils.SystemParm;
import com.youtx.rent.logins.utils.SystemTool;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/user")
public class LoginController {
    @Autowired
    private LoginService loginService;


    @ResponseBody
    @RequestMapping("/login")
    public Object login(String phoneOrEmail,String password, Boolean rememberMe){
        System.out.println("============================="+phoneOrEmail);
        System.out.println("============================="+password);
        User user = null;
        JsonResult jsonResult =null;
        try {
            user = loginService.login(phoneOrEmail,password,rememberMe);
            jsonResult = SystemTool.formJsonResule(SystemParm.Login.CODE_SUCCESS,SystemParm.Login.MSG_SUCCESS);
        } catch (UnknownAccountException e) {
            e.printStackTrace();
            jsonResult = SystemTool.formJsonResule(SystemParm.Login.CODE_UNKOWN_ACCOUNT,SystemParm.Login.MSG_UNKOWN_ACCOUNT);
        }catch (IncorrectCredentialsException e){
            e.printStackTrace();
            jsonResult = SystemTool.formJsonResule(SystemParm.Login.CODE_INCORRECT_PASSWORD,SystemParm.Login.MSG_INCORRECT_PASSWORD);
        }
        return jsonResult;
    }
}
