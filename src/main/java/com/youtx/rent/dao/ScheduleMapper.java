package com.youtx.rent.dao;

import com.youtx.rent.entity.Schedule;

import java.util.List;

public interface ScheduleMapper {
    int deleteByPrimaryKey(Integer scheduleId);

    int insert(Schedule record);

    int insertSelective(Schedule record);

    Schedule selectByPrimaryKey(Integer scheduleId);
    List<Integer> selectByTime(String time);
    int updateByPrimaryKeySelective(Schedule record);

    int updateByPrimaryKey(Schedule record);
}