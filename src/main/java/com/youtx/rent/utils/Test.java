package com.youtx.rent.utils;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Test {
    static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    public static String dateFormat(Date date){
        return simpleDateFormat.format (date);
    }
    public static Date stringToDate(String date){
        try {
            Date parse = simpleDateFormat.parse ( date );
            return parse;
        } catch (ParseException e) {
            e.printStackTrace ();
        }
        return null;
    }
    public static String nextMonthend(String date){
        Calendar cal = Calendar.getInstance ();
        //cal.setTime (stringToDate(date));

        cal.add (Calendar.MONTH,+2);
        cal.set (Calendar.DAY_OF_MONTH,0);
        return dateFormat(cal.getTime ());
    }

    public static String everyDay(String date){
        Calendar cal = Calendar.getInstance ();
        cal.setTime (stringToDate(date));
        cal.add(Calendar.DATE,1);
        return dateFormat(cal.getTime ());
    }

    public static void main(String[] args) {
        String s = everyDay ("2018-2-28");
        System.out.println (s);
    }
}
