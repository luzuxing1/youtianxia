package com.youtx.rent.dao;

import com.youtx.rent.entity.Calendar;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;
@Repository
public interface CalendarMapper {
    int deleteByPrimaryKey(Integer calendarId);

    int insert(Calendar record);

    int insertSelective(Calendar record);

    Calendar selectByPrimaryKey(Integer calendarId);

    int updateByPrimaryKeySelective(Calendar record);

    int updateByPrimaryKey(Calendar record);

    List<Calendar> selectPriceByDate(@Param ( "begintime" ) String begintime, @Param ( "endtime" )String endtime, @Param ( "roomid" )Integer roomid);

    void updateByDate(@Param ( "calendarRoom" )String calendarRoom,@Param ( "begintime" )String begintime,@Param ( "endtime" )String endtime, @Param ( "roomid" )Integer roomid);

    List<Calendar> selectByRoomId(Integer roomId);

    List<Calendar> selectByDateRange(@Param("startDate") String startDate, @Param("endDate") String endDate , @Param("roomId") Integer roomId);

    List<Date> selectDateByRoomId(Integer roomId);
}