package com.youtx.rent.utils;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;

import java.io.IOException;
import java.io.InputStream;

public class Uploadutils {
    public static void upload(String fileName,InputStream inputStream){
        FTPClient ftp = new FTPClient();
        try {
            ftp.connect("120.79.225.238",21);
            ftp.login("test","111111");
//            ftp.login("ftp","ftp");//windows下的
            if(ftp.isConnected())
            {
                System.out.println("FTP connection secess,message is：" + ftp.getReplyString());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        int replyCode = ftp.getReplyCode();
        if (!FTPReply.isPositiveCompletion(replyCode)) {
            System.out.println("Completion Fail");
        }
        try {
            ftp.setFileType(FTPClient.BINARY_FILE_TYPE);
            boolean b1 = ftp.makeDirectory("/var/www/html");
            boolean b2 = ftp.changeWorkingDirectory("/var/www/html");
            ftp.storeFile(fileName, inputStream);
            ftp.logout();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
