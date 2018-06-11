package com.youtx.rent.entity;

import java.util.Date;
import java.util.List;

public class LodgerOpinion {
    private Integer lodgerOpinionId;

    private String opinionContent;

    private Room room;

    private User lodgerUser;

    private User landlordUser;

    private Date opinionDate;

    private Point points;

    public Integer getLodgerOpinionId() {
        return lodgerOpinionId;
    }

    public void setLodgerOpinionId(Integer lodgerOpinionId) {
        this.lodgerOpinionId = lodgerOpinionId;
    }

    public String getOpinionContent() {
        return opinionContent;
    }

    public void setOpinionContent(String opinionContent) {
        this.opinionContent = opinionContent == null ? null : opinionContent.trim();
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public User getLodgerUser() {
        return lodgerUser;
    }

    public void setLodgerUser(User lodgerUser) {
        this.lodgerUser = lodgerUser;
    }

    public User getLandlordUser() {
        return landlordUser;
    }

    public void setLandlordUser(User landlordUser) {

        this.landlordUser = landlordUser;
    }

    public Date getOpinionDate() {
        return opinionDate;
    }

    public void setOpinionDate(Date opinionDate) {

        this.opinionDate = opinionDate;
    }

    public Point getPoints() {
        return points;
    }

    public void setPoints(Point points) {
        this.points = points;
    }
}