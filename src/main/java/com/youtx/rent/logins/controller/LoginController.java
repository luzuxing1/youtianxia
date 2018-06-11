package com.youtx.rent.logins.controller;

import com.youtx.rent.entity.Room;
import com.youtx.rent.entity.User;
import com.youtx.rent.logins.result.JsonResult;
import com.youtx.rent.logins.service.LoginService;
import com.youtx.rent.logins.service.RoomService;
import com.youtx.rent.logins.utils.SystemParm;
import com.youtx.rent.logins.utils.SystemTool;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
@RequestMapping("/user")
public class LoginController {
    @Autowired
    private LoginService loginService;
    @Autowired
    private RoomService roomService;

    @ResponseBody
    @RequestMapping("/login")
    public Object login(String phoneOrEmail,String password, Boolean rememberMe,String vcode){
        User user = null;
        JsonResult jsonResult =null;
        System.out.println("vcode:"+vcode);
        String code = (String) SecurityUtils.getSubject().getSession().getAttribute("vcode");
        System.out.println("code:"+code);
        if(vcode.equalsIgnoreCase(code)){
            try {
//                System.out.println("------------");
                user = loginService.login(phoneOrEmail,password,rememberMe);
                jsonResult = SystemTool.formJsonResule(SystemParm.Login.CODE_SUCCESS,SystemParm.Login.MSG_SUCCESS);
            } catch (UnknownAccountException e) {
                e.printStackTrace();
                jsonResult = SystemTool.formJsonResule(SystemParm.Login.CODE_UNKOWN_ACCOUNT,SystemParm.Login.MSG_UNKOWN_ACCOUNT);
            }catch (IncorrectCredentialsException e){
                e.printStackTrace();
                jsonResult = SystemTool.formJsonResule(SystemParm.Login.CODE_INCORRECT_PASSWORD,SystemParm.Login.MSG_INCORRECT_PASSWORD);
            }

        }else {
            jsonResult = SystemTool.formJsonResule(SystemParm.Login.SUCESS,SystemParm.Login.SUCESS_MSG);
        }
        SecurityUtils.getSubject().getSession().setAttribute("user",user);
        return jsonResult;
    }
    @RequestMapping("/lo")
    public String lo(){
        return "login";
    }
    @RequestMapping("/los")
    public String los(Model model){
        List<Room> roomsRandom = roomService.findRoomsRandom();
        model.addAttribute("roomsRandom",roomsRandom);
        return "index";
    }
    @RequestMapping("/lols")
    public String lols(){
        SecurityUtils.getSubject().getSession().setAttribute("user","");
        return "index";
    }
    @RequestMapping("/phoneCheck")
    public String check(){
        return "findMyPassword";
    }
    @RequestMapping("/updatepassword")
    public String updatepassword(){
        return "updatePassword";
    }


}
