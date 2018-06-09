package com.youtx.rent.utils;

public class TheFacility {
    private String name;

    private String param;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getParam() {
        return param;
    }

    public void setParam(String param) {
        this.param = param;
    }

    public TheFacility(String name, String param) {
        this.name = name;
        this.param = param;
    }
}
