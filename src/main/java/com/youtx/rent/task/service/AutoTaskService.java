package com.youtx.rent.task.service;

import com.youtx.rent.dao.CalendarMapper;
import com.youtx.rent.dao.PriceMapper;
import com.youtx.rent.dao.RoomMapper;
import com.youtx.rent.entity.Price;
import com.youtx.rent.entity.Room;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class AutoTaskService {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    Calendar cal = Calendar.getInstance ();
    com.youtx.rent.entity.Calendar calendar = null;
    Room room = new Room ();

    @Resource
    private RoomMapper roomMapper;
    @Resource
    private CalendarMapper calendarMapper;
    @Resource
    private PriceMapper priceMapper;

    public List<Integer> selectByState(Integer state){
        return roomMapper.selectByState (state);
    }

    public String dateToString(Date date){
        return simpleDateFormat.format (date);
    }

    public Date stringToDate(String date){
        try {
            return simpleDateFormat.parse (date);
        } catch (ParseException e) {
            e.printStackTrace ();
        }
        return null;
    }

    public String nextMonthend(){
        Calendar cal = Calendar.getInstance ();
        cal.add (Calendar.MONTH,+2);
        cal.set (Calendar.DAY_OF_MONTH,0);
        return dateToString(cal.getTime ());
    }

    public Date nextDay(Date date){
        cal.setTime (date);
        cal.add(Calendar.DATE,1);
        return cal.getTime ();
    }

    public String dateToWeek(Date date){
        String[] weekDays = { "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" };
        cal.setTime (date);
        int w = cal.get(Calendar.DAY_OF_WEEK) - 1;
        if (w < 0)
            w = 0;
        return weekDays[w];
    }
    /**
     * 执行定时任务逻辑
     */
    public void autoInterface(){
        //查询已经发布的所有房间roomId
        List<Integer> roomIds = selectByState (0);
        if(roomIds != null){
            for (Integer roomId : roomIds) {
                Price roomPrice = priceMapper.selectByRoomId (roomId);
                if(roomPrice!=null){
                    List<Date> dates = calendarMapper.selectDateByRoomId (roomId);
                    if(dates.size ()!=0){
                        if(dateToString(dates.get (0)).compareTo (dateToString(new Date ()))>=0){
                            Integer dayPrice = roomPrice.getPriceDay ();
                            Integer weekPrice = roomPrice.getPriceWeek ();
                            Date currentDate = dates.get (0);
                            while (dateToString(currentDate).compareTo (nextMonthend())<0){
                                calendar = new com.youtx.rent.entity.Calendar ();
                                currentDate = nextDay (currentDate);
                                calendar.setCalendarDate (currentDate);
                                if(dateToWeek (currentDate).equals ("星期六")||dateToWeek (currentDate).equals ("星期日")){
                                    calendar.setCalendarPrice (weekPrice);
                                }else {
                                    calendar.setCalendarPrice (dayPrice);
                                }
                                room.setRoomId (roomId);
                                calendar.setRoom (room);
                                calendarMapper.insert (calendar);
                            }
                        }
                    }else {
                        Integer dayPrice = roomPrice.getPriceDay ();
                        Integer weekPrice = roomPrice.getPriceWeek ();
                        Date currentDate = stringToDate (dateToString (new Date ()));
                        while(dateToString (currentDate).compareTo (nextMonthend())<0){
                            calendar = new com.youtx.rent.entity.Calendar ();
                            currentDate = nextDay (currentDate);
                            calendar.setCalendarDate (currentDate);
                            if(dateToWeek (currentDate).equals ("星期日")||dateToWeek (currentDate).equals ("星期六")){
                                calendar.setCalendarPrice (weekPrice);
                            }else {
                                calendar.setCalendarPrice (dayPrice);
                            }
                            room.setRoomId (roomId);
                            calendar.setRoom (room);
                            calendarMapper.insert (calendar);
                        }
                    }
                }
            }
        }
    }
}
