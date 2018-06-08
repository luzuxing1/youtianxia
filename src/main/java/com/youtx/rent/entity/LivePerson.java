package com.youtx.rent.entity;

public class LivePerson {
    private Integer personId;

    private String personName;

    private String personCid;

    private String personPhone;

    private Schedule schedule;

    public Integer getPersonId() {
        return personId;
    }

    public void setPersonId(Integer personId) {
        this.personId = personId;
    }

    public String getPersonName() {
        return personName;
    }

    public void setPersonName(String personName) {
        this.personName = personName == null ? null : personName.trim();
    }

    public String getPersonCid() {
        return personCid;
    }

    public void setPersonCid(String personCid) {
        this.personCid = personCid;
    }

    public String getPersonPhone() {
        return personPhone;
    }

    public void setPersonPhone(String personPhone) {
        this.personPhone = personPhone;
    }

    public Schedule getSchedule() {
        return schedule;
    }

    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }
}