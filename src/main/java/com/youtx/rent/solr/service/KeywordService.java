package com.youtx.rent.solr.service;


import com.youtx.rent.entity.Room;

import java.util.List;

public interface KeywordService {
    public List<Object[]> findInfoByKeyword(String keyword, String city);
}
