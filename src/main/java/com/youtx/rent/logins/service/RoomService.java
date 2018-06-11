package com.youtx.rent.logins.service;

import com.youtx.rent.dao.RoomMapper;
import com.youtx.rent.entity.Room;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomService {
    @Autowired
    private RoomMapper roomMapper;

    public List<Room> findRoomsRandom(){
        return roomMapper.selectRoomsRandom();
    }
}
