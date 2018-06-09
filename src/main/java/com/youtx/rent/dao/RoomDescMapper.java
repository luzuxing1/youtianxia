package com.youtx.rent.dao;

import com.youtx.rent.entity.RoomDesc;
import org.springframework.stereotype.Repository;

@Repository
public interface RoomDescMapper {
    int deleteByPrimaryKey(Integer descId);

    int insert(RoomDesc record);

    int insertSelective(RoomDesc record);

    RoomDesc selectByPrimaryKey(Integer descId);

    int updateByPrimaryKeySelective(RoomDesc record);

    int updateByPrimaryKey(RoomDesc record);

    RoomDesc selectByRoomId(Integer roomId);
}