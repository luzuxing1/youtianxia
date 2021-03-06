package com.youtx.rent.weChatPay.controller;

import com.youtx.rent.entity.LodgerOrder;
import com.youtx.rent.placeOrder.service.OrdersService;
import com.youtx.rent.userCenter.service.LodgerOrders;
import com.youtx.rent.weChatPay.utils.XMLUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Map;

@Controller
public class ResultServlet {
    @Resource
    private LodgerOrders lodgerOrders;
    @Resource
    private OrdersService ordersService;


    private static Logger logger = Logger.getLogger(ResultServlet.class);
    @RequestMapping("/payment/result")
    public void handle(HttpServletRequest req, HttpServletResponse resp) throws
            ServletException, IOException {
        try {
            weixin_notify(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void weixin_notify(HttpServletRequest request, HttpServletResponse
            response) throws Exception{
        InputStream inputStream = request.getInputStream();
        StringBuffer sb = new StringBuffer();
        String s ;
        BufferedReader in = new BufferedReader(new InputStreamReader (inputStream,
                "UTF-8"));
        while ((s = in.readLine()) != null){
            sb.append(s);
        }
        in.close();
        inputStream.close();
        String resXml = "";
        Map xmlParse = XMLUtil.doXMLParse ( sb.toString () );
        if(xmlParse.get ( "result_code" ).equals ( "SUCCESS" )){
            resXml = "<xml>" + "<return_code><![CDATA[SUCCESS]]> </return_code>"
                    + "<return_msg><![CDATA[OK]]></return_msg>" + "</xml> ";
            ordersService.updateStatusByOrderNum ( "drz" ,xmlParse.get ( "out_trade_no" ).toString ());
        }else {
            resXml = "<xml>" + "<return_code><![CDATA[FAIL]]></return_code>"
                    + "<return_msg><![CDATA[报文为空]]></return_msg>" + "</xml>";
        }
        BufferedOutputStream out = new BufferedOutputStream(
                response.getOutputStream());
        out.write(resXml.getBytes());
        out.flush();
        out.close();
    }

    @RequestMapping("/payment/ifSuccess")
    @ResponseBody
    public Boolean isSuccess(Integer id){
        LodgerOrder order = lodgerOrders.findById ( id );
        System.out.println ("status:"+order.getOrderStatus ());
        if(order.getOrderStatus ().equals ("dfk")){
            return false;
        }
        return true;
    }

    @RequestMapping("/payment/gotoSuccess")
    public String gotoSuccess(){
        return "success";
    }
}
