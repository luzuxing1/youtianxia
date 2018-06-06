package com.youtx.rent.placeOrder.service;

import com.youtx.rent.dao.PictureMapper;
import com.youtx.rent.dao.RoomResourceMapper;
import com.youtx.rent.dao.RoomSituationMapper;
import com.youtx.rent.entity.RoomResource;
import com.youtx.rent.entity.RoomSituation;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RoomMsg {
    @Resource
    private PictureMapper pictureMapper;
    @Resource
    private RoomResourceMapper roomResourceMapper;
    @Resource
    private RoomSituationMapper roomSituationMapper;

    List<String> findPics(Integer roomId){
        return pictureMapper.selectByRoomId ( roomId );
    }
    RoomResource findAdress(Integer roomId){
        return roomResourceMapper.selectByRoomId ( roomId );
    }
    RoomSituation findRoomInfo(Integer roomId){
        return roomSituationMapper.selectByRoomId ( roomId );
    }
}
