package com.youtx.rent.logins.service;

import com.youtx.rent.dao.PictureMapper;
import com.youtx.rent.dao.UserMapper;
import com.youtx.rent.entity.Picture;
import com.youtx.rent.entity.User;
import com.youtx.rent.logins.result.JsonResult;
import com.youtx.rent.logins.utils.SystemParm;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdateService {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private PictureMapper pictureMapper;
    public JsonResult update(String password,String phone){
        JsonResult jsonResult = new JsonResult();
        User user = userMapper.selectByPhone(phone);
        if(null == user){
            jsonResult.setCode(SystemParm.Login.CODES_UPDATE_SUCESS);
            jsonResult.setMsg(SystemParm.Login.UPDATE_FAIL);
        }else {
            SimpleHash simpleHash = new SimpleHash("MD5", password,password,5);
            String pwd = simpleHash.toHex();
            userMapper.updateByPhone(pwd,phone);
            jsonResult.setCode(SystemParm.Login.CODES_UPDATE_SUCESS);
            jsonResult.setMsg(SystemParm.Login.UPDATE_FAIL);
        }
        return jsonResult;
    }

    public void addPic(Picture picture){
        pictureMapper.insertSelective(picture);
    }

}
