package com.youtx.rent.entity;

public class Price {
    private Integer priceId;

    private Integer priceDay;

    private Integer priceWeek;

    private Integer priceMonth;

    private Integer priceWeekend;

    private Integer priceClean;

    private Integer pricePerExtra;

    private Integer priceDeposit;

    private Integer priceInvoice;

    private Room room;

    public Integer getPriceId() {
        return priceId;
    }

    public void setPriceId(Integer priceId) {
        this.priceId = priceId;
    }

    public Integer getPriceDay() {
        return priceDay;
    }

    public void setPriceDay(Integer priceDay) {
        this.priceDay = priceDay;
    }

    public Integer getPriceWeek() {
        return priceWeek;
    }

    public void setPriceWeek(Integer priceWeek) {
        this.priceWeek = priceWeek;
    }

    public Integer getPriceMonth() {
        return priceMonth;
    }

    public void setPriceMonth(Integer priceMonth) {
        this.priceMonth = priceMonth;
    }

    public Integer getPriceWeekend() {
        return priceWeekend;
    }

    public void setPriceWeekend(Integer priceWeekend) {
        this.priceWeekend = priceWeekend;
    }

    public Integer getPriceClean() {
        return priceClean;
    }

    public void setPriceClean(Integer priceClean) {
        this.priceClean = priceClean;
    }

    public Integer getPriceDeposit() {
        return priceDeposit;
    }

    public void setPriceDeposit(Integer priceDeposit) {
        this.priceDeposit = priceDeposit;
    }

    public Integer getPriceInvoice() {
        return priceInvoice;
    }

    public void setPriceInvoice(Integer priceInvoice) {
        this.priceInvoice = priceInvoice;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Integer getPricePerExtra() {
        return pricePerExtra;
    }

    public void setPricePerExtra(Integer pricePerExtra) {
        this.pricePerExtra = pricePerExtra;
    }
}