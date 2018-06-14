package com.youtx.rent.logins.service;

import com.youtx.rent.dao.PictureMapper;
import com.youtx.rent.entity.Picture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PictureService {

    @Autowired
    private PictureMapper pictureMapper;

    public List<Picture> selectById(int id){
        return pictureMapper.selectById(id);
    }

    public void deleteById(int id){
        pictureMapper.deleteByPrimaryKey(id);
    }
}
