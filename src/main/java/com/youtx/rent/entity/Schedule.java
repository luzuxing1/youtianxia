package com.youtx.rent.entity;

import java.util.Date;

public class Schedule {
    private Integer scheduleId;

    private Integer schedulePrice;

    private Date liveStarttime;

    private Date liveEndtime;

    public Date getLiveStarttime() {
        return liveStarttime;
    }

    public void setLiveStarttime(Date liveStarttime) {
        this.liveStarttime = liveStarttime;
    }

    public Date getLiveEndtime() {
        return liveEndtime;
    }

    public void setLiveEndtime(Date liveEndtime) {
        this.liveEndtime = liveEndtime;
    }

    private User user;

    private Room room;

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    public Integer getSchedulePrice() {
        return schedulePrice;
    }

    public void setSchedulePrice(Integer schedulePrice) {
        this.schedulePrice = schedulePrice;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }
}