package com.youtx.rent.weChatPay.controller;

import com.youtx.rent.entity.LodgerOrder;
import com.youtx.rent.userCenter.service.LodgerOrders;
import com.youtx.rent.weChatPay.utils.PayCommonUtil;
import com.youtx.rent.weChatPay.utils.ZxingUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@Controller
public class TestServlet {
    Random random = new Random ();
    @Resource
    private LodgerOrders lodgerOrders;

    private static Logger logger = Logger.getLogger(TestServlet.class);
    @RequestMapping("/payment/test")
    public String payPage(HttpServletRequest req, HttpServletResponse resp,Integer orderId,String prices) throws ServletException, IOException {
        LodgerOrder order = lodgerOrders.findById ( orderId );
        req.setCharacterEncoding("UTF-8");
        String price = "1";
        String body = order.getRoom ().getRoomPrice ().toString ();
        System.out.println ("body:"+body);
//        if (req.getMethod().equalsIgnoreCase("get")) {
            body = new String(body.getBytes("ISO8859-1"), "UTF-8");
//        }
        System.out.println ("body:"+body);
        if(order.getOrderStatus ().equals ("dfk")){
            try {
                String url = PayCommonUtil.weixin_pay(price, body, order.getOrderNum ());
                BufferedImage image = ZxingUtil.createImage(url, 400, 400);
                req.getSession().setAttribute("oid",order.getOrderNum ());
                req.setAttribute("orderId",orderId);
                req.getSession().setAttribute("image", image);
                req.setAttribute ( "prices",prices );
                return "payments";
            } catch (Exception e) {
                e.printStackTrace ();
            }
        }
        return "redirect:/userCenter/jumpLodgerPage";
    }
}
