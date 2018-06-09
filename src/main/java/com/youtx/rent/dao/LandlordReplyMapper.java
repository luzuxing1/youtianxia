package com.youtx.rent.dao;

import com.youtx.rent.entity.LandlordReply;
import org.springframework.stereotype.Repository;

@Repository
public interface LandlordReplyMapper {
    int deleteByPrimaryKey(Integer landlordReplyId);

    int insert(LandlordReply record);

    int insertSelective(LandlordReply record);

    LandlordReply selectByPrimaryKey(Integer landlordReplyId);

    int updateByPrimaryKeySelective(LandlordReply record);

    int updateByPrimaryKey(LandlordReply record);

    LandlordReply selectByOpinionId(Integer opinionId);
}