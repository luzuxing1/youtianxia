package com.youtx.rent.entity;

public class Point {
    private Integer pointId;

    private String pointMatch;

    private String pointHappy;

    private String pointEnvironment;

    private String pointLive;

    private String pointWorth;

    private String pointClean;

    private String pointAll;

    private Integer roomId;

    private Integer opinionId;

    public Integer getPointId() {
        return pointId;
    }

    public void setPointId(Integer pointId) {
        this.pointId = pointId;
    }

    public String getPointMatch() {
        return pointMatch;
    }

    public void setPointMatch(String pointMatch) {
        this.pointMatch = pointMatch == null ? null : pointMatch.trim();
    }

    public String getPointHappy() {
        return pointHappy;
    }

    public void setPointHappy(String pointHappy) {
        this.pointHappy = pointHappy == null ? null : pointHappy.trim();
    }

    public String getPointEnvironment() {
        return pointEnvironment;
    }

    public void setPointEnvironment(String pointEnvironment) {
        this.pointEnvironment = pointEnvironment == null ? null : pointEnvironment.trim();
    }

    public String getPointLive() {
        return pointLive;
    }

    public void setPointLive(String pointLive) {
        this.pointLive = pointLive == null ? null : pointLive.trim();
    }

    public String getPointWorth() {
        return pointWorth;
    }

    public void setPointWorth(String pointWorth) {
        this.pointWorth = pointWorth == null ? null : pointWorth.trim();
    }

    public String getPointAll() {
        return pointAll;
    }

    public void setPointAll(String pointAll) {
        this.pointAll = pointAll == null ? null : pointAll.trim();
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public Integer getOpinionId() {
        return opinionId;
    }

    public void setOpinionId(Integer opinionId) {
        this.opinionId = opinionId;
    }

    public String getPointClean() {
        return pointClean;
    }

    public void setPointClean(String pointClean) {
        this.pointClean = pointClean;
    }
}