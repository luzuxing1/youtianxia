package com.youtx.rent.details.service;


public interface DetailService {

    Object[] getAllInfoByRoomId(Integer roomId);

    Integer getPointCount(Integer roomId);
}
