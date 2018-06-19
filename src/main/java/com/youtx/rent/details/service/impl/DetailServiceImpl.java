package com.youtx.rent.details.service.impl;

import com.youtx.rent.dao.*;
import com.youtx.rent.details.service.DetailService;
import com.youtx.rent.entity.*;
import com.youtx.rent.entity.Calendar;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

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

    @Override
    public List<LodgerOpinion> getLandlordAllRoom(Integer userId) {
        List<LodgerOpinion> allOpinions = lodgerOpinionDAO.selectByLandlordId(userId);
        return allOpinions;
    }

    @Override
    public Boolean getCalendarByRange(String startDate, String endDate, int roomId) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Boolean byOrdered = false;
        try {
            Date newEndDate = dateFormat.parse(endDate);
            java.util.Calendar calendar = java.util.Calendar.getInstance();
            calendar.setTime(newEndDate);
            calendar.add(java.util.Calendar.DATE, -1);
            List<Calendar> calendars = calendarDAO.selectByDateRange(startDate, dateFormat.format(calendar.getTime()), roomId);
            for (Calendar theCalen : calendars) {
                System.out.println(theCalen.getCalendarRoom());
                if (theCalen.getCalendarRoom() != null && theCalen.getCalendarRoom().equals("yz")) {
                    byOrdered = true;
                    return byOrdered;
                }
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return byOrdered;
    }

}
