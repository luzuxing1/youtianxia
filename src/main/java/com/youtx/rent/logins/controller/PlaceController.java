package com.youtx.rent.logins.controller;

import com.youtx.rent.entity.Picture;
import com.youtx.rent.logins.result.JsonResult;
import com.youtx.rent.logins.service.PictureService;
import com.youtx.rent.logins.service.RoomService;
import com.youtx.rent.logins.service.UpdateService;
import com.youtx.rent.logins.utils.SystemParm;
import com.youtx.rent.utils.Uploadutils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/places")
public class PlaceController {
    @Autowired
    private UpdateService updateService;

    @Autowired
    private RoomService roomService;

    @Autowired
    private PictureService pictureService;

    @RequestMapping("/placeThree/{roomId}")
    public String placethree(@PathVariable("roomId") int roomId){
        SecurityUtils.getSubject().getSession().setAttribute("roomId",roomId);
        return "publish_house_3";
    }

    @RequestMapping("/imgupload")
    public Object upload(Picture picture, @RequestParam("files") MultipartFile file){
//        System.out.println("imgupload------------");
//        System.out.println("file.getOriginalFilename()"+file.getOriginalFilename());

        JsonResult jsonResult =null;
        System.out.println("file.getOriginalFilename()"+file.getOriginalFilename());
        try {
                InputStream inputStream = file.getInputStream();
                String fileName = UUID.randomUUID()+file.getOriginalFilename();
                file.transferTo(new File(SystemParm.Login.PATGNAME+fileName));
                Uploadutils.upload(fileName,inputStream);
                picture.setPicName(fileName);
                updateService.addPic(picture);
            //jsonResult = SystemTool.formJsonResule(SystemParm.Login.CODE_SUCCESS,SystemParm.Login.UPLOAD_SUCESS_MSG);
        } catch (Exception e) {
            e.printStackTrace();
        }
        List<Picture> pictures = pictureService.selectById(picture.getRoomId());
        SecurityUtils.getSubject().getSession().setAttribute("pictures",pictures);
        return "publish_house_3";
    }

    @RequestMapping("/delete")
    public String deleteById(int id){
        pictureService.deleteById(id);
        int  roomId = (Integer) SecurityUtils.getSubject().getSession().getAttribute("roomId");
        List<Picture> pictures = pictureService.selectById(roomId);
        SecurityUtils.getSubject().getSession().setAttribute("pictures",pictures);
        return "publish_house_3";
    }
    @RequestMapping("/placeFour/{roomId}")
    public String placeFour(@PathVariable("roomId")int roomId, Model model){
        model.addAttribute("roomId",roomId);
        return "publish_house_4";
    }

}
