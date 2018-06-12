package com.youtx.rent.weChatPay.controller;

import com.youtx.rent.weChatPay.utils.PayCommonUtil;
import com.youtx.rent.weChatPay.utils.ZxingUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@Controller
public class TestServlet {
    Random random = new Random ();
    private static Logger logger = Logger.getLogger(TestServlet.class);
    @RequestMapping("/payment/test")
    public String payPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String price = "1";
        String body = req.getParameter("body");
        if (req.getMethod().equalsIgnoreCase("get")) {
            body = new String(body.getBytes("ISO8859-1"), "UTF-8");
        }
        String orderId = random.nextInt(100000000) + "";
        try {
            String url = PayCommonUtil.weixin_pay(price, body, orderId);
            System.out.println ("erweima:"+url);
            BufferedImage image = ZxingUtil.createImage(url, 300, 300);
            req.getSession().setAttribute("oid",orderId);
            req.getSession().setAttribute("image", image);
        } catch (Exception e) {
            e.printStackTrace ();
        }
        System.out.println ("oid:"+orderId);
        return "payment";
    }
}
