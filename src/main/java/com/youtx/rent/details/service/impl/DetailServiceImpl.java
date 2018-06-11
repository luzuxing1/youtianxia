package com.youtx.rent.details.service.impl;

import com.youtx.rent.dao.*;
import com.youtx.rent.details.service.DetailService;
import com.youtx.rent.entity.*;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class DetailServiceImpl implements DetailService {

    @Resource
    private RoomMapper roomDAO;

    @Resource
    private RoomDescMapper roomDescDAO;

    @Resource
    private RoomResourceMapper roomResourceDAO;

    @Resource
    private RoomSituationMapper roomSituationDAO;

    @Resource
    private FacilityMapper facilityDAO;

    @Resource
    private PictureMapper pictureDAO;

    @Resource
    private PriceMapper priceDAO;

    @Resource
    private LodgerOpinionMapper lodgerOpinionDAO;

    @Resource
    private LandlordReplyMapper landlordReplyDAO;

    @Resource
    private CalendarMapper calendarDAO;

    @Resource
    private RequireMapper requireDAO;

    @Resource
    private PointMapper pointDAO;

    @Override
    public Object[] getAllInfoByRoomId(Integer roomId) {
        Room room = roomDAO.selectByPrimaryKey(roomId);
        RoomDesc roomDesc = roomDescDAO.selectByRoomId(roomId);
        RoomResource roomResource = roomResourceDAO.selectByRoomId(roomId);
        RoomSituation roomSituation = roomSituationDAO.selectByRoomId(roomId);
        Facility facility = facilityDAO.selectByRoomId(roomId);
        List<String> pictures = pictureDAO.selectByRoomId(roomId);
        Price price = priceDAO.selectByRoomId(roomId);
        List<LodgerOpinion> lodgerOpinions = lodgerOpinionDAO.selectByRoomId(roomId);
        Map<LodgerOpinion,LandlordReply> opinions = new LinkedHashMap<>();
        for (LodgerOpinion lodgerOpinion : lodgerOpinions) {
            LandlordReply landlordReply = landlordReplyDAO.selectByOpinionId(lodgerOpinion.getLodgerOpinionId());
            opinions.put(lodgerOpinion, landlordReply);
        }
        List<Calendar> calendars = calendarDAO.selectByRoomId(roomId);
        Require require = requireDAO.selectByRoomId(roomId);
        Object[] infos = new Object[10];
        infos[0] = room;
        infos[1] = roomDesc;
        infos[2] = roomResource;
        infos[3] = roomSituation;
        infos[4] = facility;
        infos[5] = pictures;
        infos[6] = price;
        infos[7] = opinions;
        infos[8] = calendars;
        infos[9] = require;
        return infos;
    }

    @Override
    public Integer getPointCount(Integer roomId) {
        int pointCount = pointDAO.selectCountByRoomId(roomId);
        return pointCount;
    }

}
