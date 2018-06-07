package com.youtx.rent.screen.service.impl;

import com.youtx.rent.dao.PriceMapper;
import com.youtx.rent.dao.RoomSituationMapper;
import com.youtx.rent.dao.UserMapper;
import com.youtx.rent.entity.*;
import com.youtx.rent.screen.service.ScreenService;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class ScreenServiceImpl implements ScreenService {

    @Resource
    private UserMapper userDAO;

    @Resource
    private PriceMapper priceDAO;

    @Resource
    private RoomSituationMapper roomSituationDAO;

    @Override
    public List<Object[]> findAllByInfo(String key, String city, String min, String max, String[] place, String[] facs) {
        HttpSolrClient client = new HttpSolrClient.Builder()
                .withBaseSolrUrl("http://118.31.63.199:8081/solr7/new_core")
                .build();
        SolrQuery query = new SolrQuery();
        if (key.equals("请输入地址、商圈、地标、店铺名等")) {
            key = "*";
        }
        StringBuilder params = new StringBuilder("");
        params.append("keys:" + key);
        params.append(" AND rcity:" + city);
        params.append(" AND rprice:[" + min + " TO " + max + "]");
        for (String s : place) {
            params.append(" AND situtype:" + s);
        }

        for (String fac : facs) {
            if (!fac.equals("*")) {
                params.append(" AND " + fac + ":1");
            }
        }

        System.out.println(params.toString());
        query.setQuery(params.toString());
        QueryResponse response = null;
        try {
            response = client.query(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
        SolrDocumentList list = response.getResults();
        System.out.println("数量：" + list.getNumFound());
        List<Object[]> roomList = new ArrayList<>();
        for (SolrDocument document : list) {
            if (document.get("rcity").toString().equals(city)) {
                Object[] obj = new Object[5];
                Room room = new Room();
                room.setRoomId(Integer.parseInt(document.get("rid").toString()));
                room.setRoomName(document.get("rname").toString());
                room.setRoomCity(document.get("rcity").toString());
                room.setRoomPrice(Integer.parseInt(document.get("rprice").toString()));
                room.setRoomSale(Integer.parseInt(document.get("rsale").toString()));
                room.setRoomOpinionNum(Integer.parseInt(document.get("ropinion").toString()));
                User user = userDAO.selectByPrimaryKey(Integer.parseInt(document.get("ruser").toString()));
                obj[0] = room;
                RoomResource roomResource = new RoomResource();
                roomResource.setRoom(room);
                roomResource.setResourceAddress(document.get("readd").toString());
                roomResource.setResourceSign(document.get("resign").toString());
                roomResource.setResourceId(Integer.parseInt(document.get("reid").toString()));
                Price price = priceDAO.selectByRoomId(Integer.parseInt(document.get("rid").toString()));
                RoomSituation roomSituation = roomSituationDAO.selectByRoomId(Integer.parseInt(document.get("rid").toString()));
                obj[1] = roomResource;
                obj[2] = user;
                obj[3] = price;
                obj[4] = roomSituation;
                roomList.add(obj);
            }
        }
        return roomList;
    }
}
