package com.youtx.rent.dao;

import com.youtx.rent.entity.Room;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoomMapper {
    int deleteByPrimaryKey(Integer roomId);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Integer roomId);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);

    List<Integer> selectRoomId(Integer userId);

    List<Room> selectRoomsRandom();

    /**
     *分页查询房间总数
     * @param currentPage
     * @param pages
     * @return
     */
    List<Room> selectAllRooms(@Param("currentPage") int currentPage, @Param("pages") int pages);

    /**
     *计算房间的总数
     * @return
     */
    int selectRoomCounts();

}