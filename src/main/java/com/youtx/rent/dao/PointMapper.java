package com.youtx.rent.dao;

import com.youtx.rent.entity.Point;
import org.springframework.stereotype.Repository;

@Repository
public interface PointMapper {
    int deleteByPrimaryKey(Integer pointId);

    int insert(Point record);

    int insertSelective(Point record);

    Point selectByPrimaryKey(Integer pointId);

    int updateByPrimaryKeySelective(Point record);

    int updateByPrimaryKey(Point record);

    int selectCountByRoomId(Integer roomId);
}