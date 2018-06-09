package com.youtx.rent.utils;

import com.youtx.rent.entity.Facility;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public class MatchFacility {

    public static Map<TheFacility, String> matchIntoMap (Facility facility) {
        Map<TheFacility, String> facmap = new LinkedHashMap<>();
        facmap.put(new TheFacility("免费健身房", facility.getFacFit()), "si-1");
        facmap.put(new TheFacility("免费游泳池", facility.getFacSwim()), "si-2");
        facmap.put(new TheFacility("洗浴用品", facility.getFacBath()), "si-3");
        facmap.put(new TheFacility("拖鞋", facility.getFacSlippers()), "si-4");
        facmap.put(new TheFacility("24小时热水", facility.getFacHotwater()), "si-5");
        facmap.put(new TheFacility("热水浴缸", facility.getFacBathtub()), "si-6");
        facmap.put(new TheFacility("淋浴", facility.getFacShower()), "si-7");
        facmap.put(new TheFacility("电视", facility.getFacTv()), "si-8");
        facmap.put(new TheFacility("电冰箱", facility.getFacFridge()), "si-9");
        facmap.put(new TheFacility("电脑", facility.getFacComputer()), "si-10");
        facmap.put(new TheFacility("洗衣机", facility.getFacWasher()), "si-11");
        facmap.put(new TheFacility("空调", facility.getFacAirCon()), "si-12");
        facmap.put(new TheFacility("暖气", facility.getFacHeating()), "si-13");
        facmap.put(new TheFacility("有线网络", facility.getFacWiredNetwork()), "si-14");
        facmap.put(new TheFacility("无线网络", facility.getFacWirelessNetwork()), "si-15");
        facmap.put(new TheFacility("饮水机", facility.getFacWater()), "si-16");
        facmap.put(new TheFacility("电梯", facility.getFacElevator()), "si-17");
        facmap.put(new TheFacility("无障碍设施", facility.getFacBarrier()), "si-18");
        facmap.put(new TheFacility("保安", facility.getFacSecurity()), "si-19");
        facmap.put(new TheFacility("自动麻将桌", facility.getFacMahjong()), "si-20");
        facmap.put(new TheFacility("停车位", facility.getFacPark()), "si-21");
        facmap.put(new TheFacility("对讲门禁系统", facility.getFacDoor()), "si-22");
        facmap.put(new TheFacility("可以接送", facility.getFacShuttle()), "si-23");
        facmap.put(new TheFacility("免费早餐", facility.getFacBreakfast()), "si-24");
        facmap.put(new TheFacility("可以接待家庭/孩子", facility.getFacFamily()), "si-25");
        facmap.put(new TheFacility("适合举办活动", facility.getFacParty()), "si-26");
        facmap.put(new TheFacility("可用厨房", facility.getFacKitchen()), "si-27");
        facmap.put(new TheFacility("可以携带宠物", facility.getFacPet()), "si-28");
        facmap.put(new TheFacility("行李寄存", facility.getFacLuggage()), "si-29");
        facmap.put(new TheFacility("加床服务", facility.getFacExtraBed()), "si-30");
        facmap.put(new TheFacility("票务代理", facility.getFacProxy()), "si-31");
        facmap.put(new TheFacility("可以吸烟", facility.getFacSmoke()), "si-32");
        return facmap;
    }
}
