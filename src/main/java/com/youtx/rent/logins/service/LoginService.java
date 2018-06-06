package com.youtx.rent.logins.service;

import com.youtx.rent.entity.User;
import org.apache.shiro.authc.AuthenticationException;

public interface LoginService {
//    public void checkPhone(String phone);
    User login(String phoneOrEmail,String password, Boolean rememberMe) throws AuthenticationException;

}
