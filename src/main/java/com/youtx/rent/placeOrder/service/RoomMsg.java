package com.youtx.rent.placeOrder.service;

import com.youtx.rent.dao.*;
import com.youtx.rent.entity.RoomResource;
import com.youtx.rent.entity.RoomSituation;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class RoomMsg {
    @Resource
    private PictureMapper pictureMapper;
    @Resource
    private RoomResourceMapper roomResourceMapper;
    @Resource
    private RoomSituationMapper roomSituationMapper;
    @Resource
    private CalendarMapper calendarMapper;
    @Resource
    private PriceMapper priceMapper;

    public List<String> findPics(Integer roomId){
        return pictureMapper.selectByRoomId ( roomId );
    }
    public RoomResource findAdress(Integer roomId){
        return roomResourceMapper.selectByRoomId ( roomId );
    }
    public RoomSituation findRoomInfo(Integer roomId){
        return roomSituationMapper.selectByRoomId ( roomId );
    }
    public String dateToWeek(String datetime){
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
        String[] weekDays = { "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" };
        Calendar cal = Calendar.getInstance(); // 获得一个日历
        Date datet = null;
        try {
            datet = f.parse(datetime);
            cal.setTime(datet);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        int w = cal.get(Calendar.DAY_OF_WEEK) - 1; // 指示一个星期中的某天。
        if (w < 0)
            w = 0;
        return weekDays[w];
    }
    public Integer days(String begintime,String endtime){
        try {
            //时间转换类
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date date1 = sdf.parse(begintime);
            Date date2 = sdf.parse(endtime);
            //将转换的两个时间对象转换成Calendard对象
            Calendar can1 = Calendar.getInstance();
            can1.setTime(date1);
            Calendar can2 = Calendar.getInstance();
            can2.setTime(date2);
            //拿出两个年份
            int year1 = can1.get(Calendar.YEAR);
            int year2 = can2.get(Calendar.YEAR);
            //天数
            int days = 0;
            Calendar can = null;
            //如果can1 < can2
            //减去小的时间在这一年已经过了的天数
            //加上大的时间已过的天数
            if(can1.before(can2)){
                days -= can1.get(Calendar.DAY_OF_YEAR);
                days += can2.get(Calendar.DAY_OF_YEAR);
                can = can1;
            }else{
                days -= can2.get(Calendar.DAY_OF_YEAR);
                days += can1.get(Calendar.DAY_OF_YEAR);
                can = can2;
            }
            for (int i = 0; i < Math.abs(year2-year1); i++) {
                //获取小的时间当前年的总天数
                days += can.getActualMaximum(Calendar.DAY_OF_YEAR);
                //再计算下一年。
                can.add(Calendar.YEAR, 1);
            }
            return days;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return 0;
    }
    public List<com.youtx.rent.entity.Calendar> selectPriceByDate(String begintime, String endtime){
        return calendarMapper.selectPriceByDate ( begintime,endtime );
    }

    public Integer cleanPrice(Integer roomId){
        return priceMapper.selectCleanPriceByRoomId ( roomId );
    }
}
