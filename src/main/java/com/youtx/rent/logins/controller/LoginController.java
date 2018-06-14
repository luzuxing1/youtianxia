package com.youtx.rent.logins.controller;

import com.youtx.rent.entity.Room;
import com.youtx.rent.entity.User;
import com.youtx.rent.logins.Bean.PageBean;
import com.youtx.rent.logins.result.JsonResult;
import com.youtx.rent.logins.service.AddUservice;
import com.youtx.rent.logins.service.LoginService;
import com.youtx.rent.logins.service.RoomService;
import com.youtx.rent.logins.service.UserService;
import com.youtx.rent.logins.utils.SystemParm;
import com.youtx.rent.logins.utils.SystemTool;
import com.youtx.rent.utils.Uploadutils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;


@Controller
@RequestMapping("/user")
public class LoginController {
    @Autowired
    private LoginService loginService;
    @Autowired
    private RoomService roomService;
    @Autowired
    private AddUservice addUservice;
    @Autowired
    private UserService userService;
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
       // System.out.println(user.getUserRealname());
        model.addAttribute("addcount",addcount);
        addUservice.addUser(user);
        PageBean finallPage = loginService.finalls();
        int totalPages = finallPage.getTotalPages();
        //System.out.println("totalPages"+totalPages);
        return "redirect:/user/userPage?page="+totalPages;
    }
    @RequestMapping("/add")
    public String add(Model model){
        return "manage/add_user";
    }
    @RequestMapping("/delete")
    public String delete(int id,int currentPage){
        loginService.delete(id);
        return "redirect:/user/userPage?page="+currentPage;
    }
    @RequestMapping("/preupdate")
    public String update(int userId,int currentPage){
//        System.out.println("userId:"+userId);
//        System.out.println("currentPage:"+currentPage);
        User currentUser = userService.findById(userId);
        SecurityUtils.getSubject().getSession().setAttribute("currentUser",currentUser);
        SecurityUtils.getSubject().getSession().setAttribute("updatecurrentPage",currentPage);
        return "manage/updateuser";
    }
    @RequestMapping("/updateuser")
    public String updateUsers(User user,@RequestParam("file") MultipartFile file){
      //  System.out.println("new:"+file.getOriginalFilename());
 User currentUser = (User) SecurityUtils.getSubject().getSession().getAttribute("currentUser");
        //System.out.println(currentUser.getUserHeadimg()+"old======");
 try {
            InputStream inputStream = file.getInputStream();
//            System.out.println("Filename: " + file.getOriginalFilename());
            if(!file.isEmpty()){
                String fileName = UUID.randomUUID()+file.getOriginalFilename();
                file.transferTo(new File("E:/temp/"+fileName));
                user.setUserHeadimg(fileName);
                Uploadutils.upload(fileName,inputStream);
            }else {
                user.setUserHeadimg(currentUser.getUserHeadimg());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(!currentUser.getUserPassword() .equals(user.getUserPassword()) ){
//            System.out.println(currentUser.getUserPassword()+"--1");
//            System.out.println(user.getUserPassword()+"--2");
            String script = SystemTool.script(user.getUserPassword(), user.getUserPassword());
            user.setUserPassword(script);
        }
        int  updatecurrentPage = (Integer) SecurityUtils.getSubject().getSession().getAttribute("updatecurrentPage");
        userService.updtaeUser(user);
        return "redirect:/user/userPage?page="+updatecurrentPage;


    }
}
