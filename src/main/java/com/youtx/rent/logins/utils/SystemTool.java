package com.youtx.rent.logins.utils;

import com.youtx.rent.logins.result.JsonResult;
import org.apache.shiro.crypto.hash.SimpleHash;

public class SystemTool {

    public static JsonResult formJsonResule(int code, String msg){
        JsonResult jsonResult = new JsonResult();
            jsonResult.setCode(code);
            jsonResult.setMsg(msg);
        return jsonResult;
    }

    /**
     * MD5加密方法,盐是密码
     * @param password
     * @param salt
     * @return
     */
    public static String script(String password,String salt){
        return new SimpleHash("MD5",password,salt,5).toHex();

    }
}
