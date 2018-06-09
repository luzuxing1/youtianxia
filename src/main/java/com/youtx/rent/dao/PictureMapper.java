package com.youtx.rent.dao;

import com.youtx.rent.entity.Picture;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface PictureMapper {
    int deleteByPrimaryKey(Integer picId);

    int insert(Picture record);

    int insertSelective(Picture record);

    Picture selectByPrimaryKey(Integer picId);

    int updateByPrimaryKeySelective(Picture record);

    int updateByPrimaryKey(Picture record);

    List<String> selectByRoomId(Integer roomId);
}