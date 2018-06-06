package com.youtx.rent.dao;

import com.youtx.rent.entity.Picture;

import java.util.List;

public interface PictureMapper {
    int deleteByPrimaryKey(Integer picId);

    int insert(Picture record);

    int insertSelective(Picture record);

    Picture selectByPrimaryKey(Integer picId);

    int updateByPrimaryKeySelective(Picture record);

    int updateByPrimaryKey(Picture record);

    List<String> selectByRoomId(Integer roomId);
}