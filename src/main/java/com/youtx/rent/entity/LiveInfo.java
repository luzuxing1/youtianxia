package com.youtx.rent.entity;

import java.util.Date;

public class LiveInfo {
    private Integer liveId;

    private Date liveStarttime;

    private Date liveEndtime;

    private Schedule schedule;

    public Integer getLiveId() {
        return liveId;
    }

    public void setLiveId(Integer liveId) {
        this.liveId = liveId;
    }

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

    public Schedule getSchedule() {
        return schedule;
    }

    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }
}