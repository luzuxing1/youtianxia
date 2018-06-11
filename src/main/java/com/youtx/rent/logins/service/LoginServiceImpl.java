package com.youtx.rent.logins.service;

import com.youtx.rent.dao.UserMapper;
import com.youtx.rent.entity.User;
import com.youtx.rent.logins.Bean.PageBean;
import com.youtx.rent.logins.utils.SystemTool;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements  LoginService{
    @Autowired
    private UserMapper userMapper;
    @Override
    public User login(String phoneOrEmail, String password, Boolean rememberMe) throws AuthenticationException {
        Subject subject = SecurityUtils.getSubject();
        User user=null;
        String pwd =null;
        try {
            user = userMapper.checkPhoneAndEmail(phoneOrEmail);
            if(null != user ){
                pwd= SystemTool.script(password,password);
//                System.out.println(pwd+":LoginServiceImpl");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(phoneOrEmail,pwd);
        usernamePasswordToken.setRememberMe(rememberMe);
        subject.login(usernamePasswordToken);
        return user;
    }

    @Override
    public PageBean findAllUsers(int  currentPage) {
        int count = userMapper.selectCounts();
        PageBean page = new PageBean();
        int spage = (currentPage-1)*PageBean.PAGE_SIZE;
        List<User> list = userMapper.selectAllUsers(spage);
        //计算出页面的总数
        int pageCount = count % PageBean.PAGE_SIZE == 0?count/PageBean.PAGE_SIZE:count/PageBean.PAGE_SIZE+1;
        page.setTotalPages(pageCount);
        page.setData(list);
        page.setCurrentPage(currentPage);
        return page;
    }
}
