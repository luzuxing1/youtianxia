package com.youtx.rent.details.service;


import com.youtx.rent.entity.LodgerOpinion;

import java.util.List;

public interface DetailService {

    Object[] getAllInfoByRoomId(Integer roomId);

    Integer getPointCount(Integer roomId);

    List<LodgerOpinion> getLandlordAllRoom(Integer userId);
}
