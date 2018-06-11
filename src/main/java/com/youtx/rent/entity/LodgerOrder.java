package com.youtx.rent.entity;

import java.util.Date;

public class LodgerOrder {
    private Integer lodgerOrderId;

    private String orderNum;

    private Date orderTime;

    private String orderStatus;

    private String orderReason;

    private Integer orderPeopleNum;

    private Integer orderRoomNum;

    private Integer orderDay;

    private Date payTime;

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    public Integer getOrderDay() {
        return orderDay;
    }

    public void setOrderDay(Integer orderDay) {
        this.orderDay = orderDay;
    }

    public Integer getOrderPeopleNum() {
        return orderPeopleNum;
    }

    public void setOrderPeopleNum(Integer orderPeopleNum) {
        this.orderPeopleNum = orderPeopleNum;
    }

    public Integer getOrderRoomNum() {
        return orderRoomNum;
    }

    public void setOrderRoomNum(Integer orderRoomNum) {
        this.orderRoomNum = orderRoomNum;
    }

    private Room room;

    private Schedule schedule;

    private User user;

    public Integer getLodgerOrderId() {
        return lodgerOrderId;
    }

    public void setLodgerOrderId(Integer lodgerOrderId) {
        this.lodgerOrderId = lodgerOrderId;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
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