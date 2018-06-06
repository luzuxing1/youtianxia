package com.youtx.rent.entity;

import java.util.Date;

public class LandlordOrder {
    private Integer landlordOrderId;

    private Integer orderNum;

    private Date orderTime;

    private String orderStatus;

    private String orderReason;

    private Room room;

    private Schedule schedule;

    private User user;

    public Integer getLandlordOrderId() {
        return landlordOrderId;
    }

    public void setLandlordOrderId(Integer landlordOrderId) {
        this.landlordOrderId = landlordOrderId;
    }

    public Integer getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus == null ? null : orderStatus.trim();
    }

    public String getOrderReason() {
        return orderReason;
    }

    public void setOrderReason(String orderReason) {
        this.orderReason = orderReason == null ? null : orderReason.trim();
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Schedule getSchedule() {
        return schedule;
    }

    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}