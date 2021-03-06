package com.youtx.rent.dao;

import com.youtx.rent.entity.RoomSituation;
import org.springframework.stereotype.Repository;

@Repository
public interface RoomSituationMapper {
    int deleteByPrimaryKey(Integer situId);

    int insert(RoomSituation record);

    int insertSelective(RoomSituation record);

    RoomSituation selectByPrimaryKey(Integer situId);

    int updateByPrimaryKeySelective(RoomSituation record);

    int updateByPrimaryKey(RoomSituation record);

    RoomSituation selectByRoomId(Integer roomId);
}