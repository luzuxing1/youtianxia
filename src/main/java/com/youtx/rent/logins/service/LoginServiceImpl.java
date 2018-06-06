package com.youtx.rent.logins.service;

import com.youtx.rent.dao.UserMapper;
import com.youtx.rent.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements  LoginService{
    @Autowired
    private UserMapper userMapper;
    @Override
    public User login(String phoneOrEmail, String password, Boolean rememberMe) throws AuthenticationException {
        Subject subject = SecurityUtils.getSubject();
        User user=null;
        try {
            user = userMapper.checkPhoneAndEmail(phoneOrEmail);
        } catch (Exception e) {
            e.printStackTrace();
        }
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(phoneOrEmail,password);
        usernamePasswordToken.setRememberMe(rememberMe);
        subject.login(usernamePasswordToken);
        return user;
    }
}
