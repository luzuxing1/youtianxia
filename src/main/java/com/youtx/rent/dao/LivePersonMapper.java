package com.youtx.rent.dao;

import com.youtx.rent.entity.LivePerson;
import org.springframework.stereotype.Repository;

@Repository
public interface LivePersonMapper {
    int deleteByPrimaryKey(Integer personId);

    int insert(LivePerson record);

    int insertSelective(LivePerson record);

    LivePerson selectByPrimaryKey(Integer personId);

    int updateByPrimaryKeySelective(LivePerson record);

    int updateByPrimaryKey(LivePerson record);
}