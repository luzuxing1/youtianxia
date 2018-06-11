package com.youtx.rent.logins.service;

import com.youtx.rent.dao.UserMapper;
import com.youtx.rent.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddUservice {
    @Autowired
    private UserMapper userMapper;
    public int  addUser(User user){
        User users = userMapper.selectByPhone(user.getUserPhone());
        if(null == users){
            int i = userMapper.insertSelective(user);
            return i;
        }
        return 0;
    }
}
