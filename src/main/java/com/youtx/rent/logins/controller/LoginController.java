package com.youtx.rent.logins.controller;

import com.youtx.rent.entity.Room;
import com.youtx.rent.entity.User;
import com.youtx.rent.logins.Bean.PageBean;
import com.youtx.rent.logins.result.JsonResult;
import com.youtx.rent.logins.service.AddUservice;
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
    @Autowired
    private AddUservice addUservice;

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
                if("admin".equals(user.getUserRole())){
                    jsonResult = SystemTool.formJsonResule(SystemParm.Login.ADMIN_CODE_SUCCESS,SystemParm.Login.MSG_SUCCESS);
                }else {
                    jsonResult = SystemTool.formJsonResule(SystemParm.Login.CODE_SUCCESS,SystemParm.Login.MSG_SUCCESS);
                }
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

    @RequestMapping("/admin")
    public String admin(Model model){
        return "manage/manage";
    }

    @RequestMapping("/userPage")
    public String userPage(int  page,Model model){
        String cPage = Integer.toString(page);
        if(cPage == null || cPage.equals("")){
            throw new IllegalArgumentException("必须传递页面数");
        }
        PageBean pageBean = loginService.findAllUsers(page);
        List<User> userList = pageBean.getData();
        int currentPage = loginService.findAllUsers(page).getCurrentPage();
        model.addAttribute("userList",userList);
        model.addAttribute("userPage",pageBean);
        return "manage/usermanage";
    }
    @RequestMapping("/addUser")
    public String addUser(User user,Model model){
        int addcount = addUservice.addUser(user);
        System.out.println(user.getUserRealname());
        model.addAttribute("addcount",addcount);
        addUservice.addUser(user);
        PageBean finallPage = loginService.finalls();
        int totalPages = finallPage.getTotalPages();
        System.out.println("totalPages"+totalPages);
        return "redirect:/user/userPage?page="+totalPages;
    }
    @RequestMapping("/add")
    public String add(Model model){
        return "manage/add_user";
    }


    @RequestMapping("/delete")
    public String delete(int id,int currentPage){
        System.out.println("id:"+id);
        System.out.println("currentPage:"+currentPage);
        loginService.delete(id);
        return "redirect:/user/userPage?page="+currentPage;
    }
}
