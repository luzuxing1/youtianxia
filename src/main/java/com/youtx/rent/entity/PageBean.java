package com.youtx.rent.entity;

public class PageBean {
    public static final int DEFAULT_SIZE = 1;

    private int current;

    private int size;

    private int count;

    public PageBean() {
        current = 1;
        size = DEFAULT_SIZE;
    }

    public int getCurrent() {
        return current;
    }

    public void setCurrent(int current) {
        this.current = current;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getTotalPages() {
        int totalPages = count / size;
        if (count % size != 0) {
            totalPages++;
        }
        if (totalPages == 0) {
            totalPages++;
        }
        return totalPages;
    }

    public int getStart(){
        return (current - 1) * size;
    }

    public boolean getHasPrevious(){
        return current == 1 ? false : true;
    }

    public boolean getHasNext(){
        return (getTotalPages() != 0 && getTotalPages() != current) ? true : false;
    }
}
