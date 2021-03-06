package com.youtx.rent.dao;

import com.youtx.rent.entity.LandlordOrder;
import org.springframework.stereotype.Repository;

@Repository
public interface LandlordOrderMapper {
    int deleteByPrimaryKey(Integer landlordOrderId);

    int insert(LandlordOrder record);

    int insertSelective(LandlordOrder record);

    LandlordOrder selectByPrimaryKey(Integer landlordOrderId);

    int updateByPrimaryKeySelective(LandlordOrder record);

    int updateByPrimaryKey(LandlordOrder record);
}