package com.youtx.rent.pricepage.service;

import com.youtx.rent.entity.Price;
import com.youtx.rent.entity.Require;
import com.youtx.rent.entity.Room;
import com.youtx.rent.entity.Rule;

public interface PriceAndRequireService {
    void saveRoomInfo(Price price, Rule rule, Require require, Room room);
}
