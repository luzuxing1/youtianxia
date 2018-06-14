package com.youtx.rent.logins.service;

import com.youtx.rent.dao.UserMapper;
import com.youtx.rent.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public List<User> findAllUsers(){
        return userMapper.selectUsers();
    }

    public User findById(int userId){return userMapper.selectByPrimaryKey(userId);}

    public void updtaeUser(User user){


        userMapper.updateByPrimaryKeySelective(user);
    }

}
