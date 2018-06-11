package com.youtx.rent.placeOrder.controller;

import com.youtx.rent.entity.LodgerOrder;
import com.youtx.rent.placeOrder.service.OrdersService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;

@Controller
@RequestMapping("/order")
public class OrderOperate {
    @Resource
    private OrdersService ordersService;

    @RequestMapping("/payTime")
    @ResponseBody
    public Date searchPayTime(Integer orderId){
        LodgerOrder order = ordersService.findOrder ( orderId );
        if(order.getOrderStatus ().equals ( "dfk" )){
            return order.getPayTime ();
        }
        return null;
    }
}
