package com.youtx.rent.entity;

import java.util.Date;

public class Calendar {
    private Integer calendarId;

    private Integer calendarPrice;

    private Date calendarDate;

    private String calendarRoom;

    private Room room;

    public Integer getCalendarId() {
        return calendarId;
    }

    public void setCalendarId(Integer calendarId) {
        this.calendarId = calendarId;
    }

    public Integer getCalendarPrice() {
        return calendarPrice;
    }

    public void setCalendarPrice(Integer calendarPrice) {
        this.calendarPrice = calendarPrice;
    }

    public Date getCalendarDate() {
        return calendarDate;
    }

    public void setCalendarDate(Date calendarDate) {
        this.calendarDate = calendarDate;
    }

    public String getCalendarRoom() {
        return calendarRoom;
    }

    public void setCalendarRoom(String calendarRoom) {
        this.calendarRoom = calendarRoom == null ? null : calendarRoom.trim();
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }
}