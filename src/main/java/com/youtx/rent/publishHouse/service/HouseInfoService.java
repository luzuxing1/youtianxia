package com.youtx.rent.publishHouse.service;

import com.youtx.rent.dao.FacilityMapper;
import com.youtx.rent.dao.RoomDescMapper;
import com.youtx.rent.dao.RoomMapper;
import com.youtx.rent.dao.RoomSituationMapper;
import com.youtx.rent.entity.Facility;
import com.youtx.rent.entity.Room;
import com.youtx.rent.entity.RoomDesc;
import com.youtx.rent.entity.RoomSituation;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional
public class HouseInfoService {
    @Resource
    private RoomSituationMapper roomSituationMapper;
    @Resource
    private RoomDescMapper roomDescMapper;
    @Resource
    private FacilityMapper facilityMapper;
    @Resource
    private RoomMapper roomMapper;

    public int saveHouseInfo(Room room,RoomSituation roomSituation, RoomDesc desc, Facility facility){
        try{
            roomSituationMapper.insert (roomSituation);
            roomDescMapper.insert (desc);
            facilityMapper.insert (facility);
            roomMapper.updateByPrimaryKeySelective (room);
            return 1;
        }catch (Exception ex){
            ex.printStackTrace ();
        }
        return 0;
    }
}
