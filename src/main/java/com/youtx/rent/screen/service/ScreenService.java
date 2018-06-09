package com.youtx.rent.screen.service;

import java.util.List;

public interface ScreenService {
    public Object[] findAllByInfo(String key,String city, String min, String max, String[] place, String[] facs, String[] rooms, String[] types, int currentPage, String sort);
}
