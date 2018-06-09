package com.youtx.rent.utils;

import com.youtx.rent.entity.PageBean;

public class PageUtils {
    public static PageBean getPageBean(int current, int count) {
        PageBean page = new PageBean();
        page.setCurrent(current);
        page.setCount(count);
        return page;
    }
}
