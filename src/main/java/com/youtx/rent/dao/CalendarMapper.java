package com.youtx.rent.dao;

import com.youtx.rent.entity.Calendar;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CalendarMapper {
    int deleteByPrimaryKey(Integer calendarId);

    int insert(Calendar record);

    int insertSelective(Calendar record);

    Calendar selectByPrimaryKey(Integer calendarId);

    int updateByPrimaryKeySelective(Calendar record);

    int updateByPrimaryKey(Calendar record);

    List<Calendar> selectPriceByDate(@Param ( "begintime" ) String begintime, @Param ( "endtime" )String endtime, @Param ( "roomid" )Integer roomid);
}