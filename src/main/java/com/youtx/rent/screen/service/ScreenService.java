package com.youtx.rent.screen.service;

import com.youtx.rent.entity.Picture;

import java.util.List;

public interface ScreenService {
    Object[] findAllByInfo(String key,String city, String min, String max, String[] place, String[] facs, String[] rooms, String[] types, int currentPage, String sort);

}
