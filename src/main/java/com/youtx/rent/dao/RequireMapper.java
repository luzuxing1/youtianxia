package com.youtx.rent.dao;

import com.youtx.rent.entity.Require;
import org.springframework.stereotype.Repository;

@Repository
public interface RequireMapper {
    int deleteByPrimaryKey(Integer reqId);

    int insert(Require record);

    int insertSelective(Require record);

    Require selectByPrimaryKey(Integer reqId);

    int updateByPrimaryKeySelective(Require record);

    int updateByPrimaryKey(Require record);

    Require selectByRoomId(Integer roomId);
}