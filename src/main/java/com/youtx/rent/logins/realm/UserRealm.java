package com.youtx.rent.logins.realm;

import com.youtx.rent.dao.UserMapper;
import com.youtx.rent.entity.User;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

public class UserRealm extends AuthorizingRealm{
    @Override
    public String getName() {
        return "UserRealm";
    }
    @Autowired
    private UserMapper userMapper;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) token;
        String phoneOrEmail = usernamePasswordToken.getUsername();
        System.out.println(phoneOrEmail+"-----");
        User user =null;
        try {
            user = userMapper.checkPhoneAndEmail(phoneOrEmail);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(null == user  ){
            throw new UnknownAccountException("hava no this username-" + phoneOrEmail);
        }
        char[] p1 = usernamePasswordToken.getPassword();
        String password = new String(p1);
        if(null == password || !user.getUserPassword().equals(password)){
            throw new IncorrectCredentialsException("incorrect password");
        }
        SimpleAuthenticationInfo simpleAuthenticationInfo
                = new SimpleAuthenticationInfo(phoneOrEmail,password,getName());

        return simpleAuthenticationInfo;
    }
}
