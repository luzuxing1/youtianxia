package com.youtx.rent.entity;

import java.util.Date;
import java.util.List;

public class Room {
    private Integer roomId;

    private String roomCity;

    private String roomName;

    private Integer roomPrice;

    private Integer roomSale;

    private Integer roomOpinionNum;

    private Date roomTime;

    private String roomState;

    public String getRoomState() {
        return roomState;
    }

    public void setRoomState(String roomState) {
        this.roomState = roomState;
    }

    private User user;

    private List<String> pictureList;
    private RoomResource roomResource;
    private Schedule schedule;

    private int UserId;

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int userId) {
        UserId = userId;
    }

    public List<String> getPictureList() {
        return pictureList;
    }

    public void setPictureList(List<String> pictureList) {
        this.pictureList = pictureList;
    }

    public RoomResource getRoomResource() {
        return roomResource;
    }

    public void setRoomResource(RoomResource roomResource) {
        this.roomResource = roomResource;
    }

    public Schedule getSchedule() {
        return schedule;
    }

    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public String getRoomCity() {
        return roomCity;
    }

    public void setRoomCity(String roomCity) {
        this.roomCity = roomCity == null ? null : roomCity.trim();
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName == null ? null : roomName.trim();
    }

    public Integer getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(Integer roomPrice) {
        this.roomPrice = roomPrice;
    }

    public Integer getRoomSale() {
        return roomSale;
    }

    public void setRoomSale(Integer roomSale) {
        this.roomSale = roomSale;
    }

    public Integer getRoomOpinionNum() {
        return roomOpinionNum;
    }

    public void setRoomOpinionNum(Integer roomOpinionNum) {
        this.roomOpinionNum = roomOpinionNum;
    }

    public Date getRoomTime() {
        return roomTime;
    }

    public void setRoomTime(Date roomTime) {
        this.roomTime = roomTime;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}