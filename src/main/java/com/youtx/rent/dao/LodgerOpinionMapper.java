package com.youtx.rent.dao;

import com.youtx.rent.entity.LodgerOpinion;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface LodgerOpinionMapper {
    int deleteByPrimaryKey(Integer lodgerOpinionId);

    int insert(LodgerOpinion record);

    int insertSelective(LodgerOpinion record);

    LodgerOpinion selectByPrimaryKey(Integer lodgerOpinionId);

    int updateByPrimaryKeySelective(LodgerOpinion record);

    int updateByPrimaryKey(LodgerOpinion record);

    List<LodgerOpinion> selectByRoomId(Integer roomId);

    List<LodgerOpinion> selectByLandlordId(Integer landlordId);
}