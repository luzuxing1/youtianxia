package com.youtx.rent.logins.controller;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@RequestMapping("/vcode")
@Controller
public class VodeController {
    private static String CODES= "QWERTYUIOPLKJHGFDSAZXCVBNMqwertyuioplkjhgfdsazxcvbnm123456789";
    private final int WIDTH = 110;
    private final int HEIGHT = 40;
    private String code = "";
    @ResponseBody
    @RequestMapping("/msg")
    public void  vcode(HttpServletResponse response){
        BufferedImage image = new BufferedImage(WIDTH,HEIGHT,BufferedImage.TYPE_INT_ARGB);
        //获得绘图对象
        Graphics g = image.getGraphics();
        //设置背景颜色
        g.setColor(Color.white);
        //设置字体
        g.setFont(new Font("宋体",Font.PLAIN,30));
        //填充颜色
        g.fillRect(0, 0, WIDTH, HEIGHT);

        char[] codes = new char[4];
        Random random = new Random();
        //绘制随机的字母和数字
        int red = 0,green = 0,blue=0;
        for(int i = 0; i <codes.length;i++){
            int index = random.nextInt(CODES.length());
            codes[i] = CODES.charAt(index);
            // 产生随机的颜色分量来构造颜色值，这样输出的每位数字的颜色值都将不同。
            red = random.nextInt(255);
            green = random.nextInt(255);
            blue = random.nextInt(255);
            // 用随机产生的颜色将验证码绘制到图像中。
            g.setColor(new Color(red,green,blue));
            //绘制文字
            g.drawString(codes[i]+"", 10+i*26 , 33);
            g.drawLine(random.nextInt(WIDTH), random.nextInt(HEIGHT),random.nextInt(WIDTH), random.nextInt(HEIGHT));
        }
        SecurityUtils.getSubject().getSession().setAttribute("vcode",new String(codes));
        //将图片发送给浏览器
        try {
            ImageIO.write(image, "png", response.getOutputStream());
            code = new String(codes);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
