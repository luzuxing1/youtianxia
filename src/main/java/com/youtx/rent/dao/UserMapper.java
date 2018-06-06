package com.youtx.rent.dao;

import com.youtx.rent.entity.User;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    /**
     * 登录方法
     */
    User checkPhoneAndEmail(String phoneOrEmail) throws Exception;
}