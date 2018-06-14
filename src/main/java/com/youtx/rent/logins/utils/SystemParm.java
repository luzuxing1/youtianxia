package com.youtx.rent.logins.utils;

public class SystemParm {

    public final static  class Login{

        public static int CODE_SUCCESS= 0;
        public static int ADMIN_CODE_SUCCESS= 20;
        public static String MSG_SUCCESS="登录成功";

        public static int CODE_UNKOWN_ACCOUNT= 1;
        public static String MSG_UNKOWN_ACCOUNT="用户账号错误";

        public static int CODE_INCORRECT_PASSWORD= 2;
        public static String MSG_INCORRECT_PASSWORD="用户密码错误";

        public static int CODE_REGISTER= 3;
        public static String MSG_REPETEDPHONE="该账号已经被注册";

        public static int ADD_SUCCESS= 4;
        public static String ADD_ADDSUCESS="添加成功";

        public static int ADD_Fail= 5;
        public static String ADD_FAILD="添加失败";

        public static int CODES= 6;//成功返回值

        public static int CODES_UPDATE_SUCESS= 7;
        public static String UPDATE_SUCESS="修改成功";

        public static int CODES_UPDATE_fAIL= 8;
        public static String UPDATE_FAIL="修改失败";

        public static String REGISTER_FAIL="该账号暂未被注册";

        public static int BUSINESS_LIMIT_CONTROL= 9;
        public static String LIMIT_SEND="短信发送过于频繁,请1小时收后再试";

        public static int SUCESS= 10;
        public static String SUCESS_MSG="验证码有误,请重新输入";

        public static String UPLOAD_SUCESS_MSG="上传成功";
    }

}
