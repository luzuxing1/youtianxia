package com.youtx.rent.logins.service;

import com.youtx.rent.dao.PictureMapper;
import com.youtx.rent.dao.RoomMapper;
import com.youtx.rent.entity.Picture;
import com.youtx.rent.entity.Room;
import com.youtx.rent.logins.Bean.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomService {
    @Autowired
    private RoomMapper roomMapper;
    @Autowired
    private PictureMapper pictureMapper;
    public List<Room> findRoomsRandom(){
        return roomMapper.selectRoomsRandom();
    }

    public PageBean findAllRooms(int currentPage){
        int spage = (currentPage-1)*PageBean.PAGE_SIZE;
        List<Room> rooms = roomMapper.selectAllRooms(spage, PageBean.PAGE_SIZE);
        int count = roomMapper.selectRoomCounts();
        PageBean page = new PageBean();
        //计算出页面的总数
        int pageCount = count % PageBean.PAGE_SIZE == 0?count/PageBean.PAGE_SIZE:count/PageBean.PAGE_SIZE+1;
        page.setTotalPages(pageCount);
        page.setRooms(rooms);
        page.setCurrentPage(currentPage);
        return page;
    }

    public int addRoom(Room room){
        return roomMapper.insertSelective(room);
    }

    public PageBean froom() {
        int count = roomMapper.selectRoomCounts();
        PageBean page = new PageBean();
        //计算出页面的总数
        int pageCount = count % PageBean.PAGE_SIZE == 0?count/PageBean.PAGE_SIZE:count/PageBean.PAGE_SIZE+1;
        page.setTotalPages(pageCount);
        return page;
    }
    public void updateRoom(Room room){
        roomMapper.updateByPrimaryKeySelective(room);
    }
    public Room findRoomById(int roomId){
        return roomMapper.selectByPrimaryKey(roomId);
    }
    public List<Picture> findPicByRoomId(int roomId){
       return pictureMapper.selectById(roomId);
    }

    public void updateState(Room room){
        roomMapper.updateByPrimaryKeySelective(room);
    }
    public List<String> findRoomsById(int roomId){
        return pictureMapper.selectByRoomId(roomId);
    };
}
