package com.youtx.rent.logins.utils;

public class SystemParm {

    public final static  class Login{

        public static int CODE_SUCCESS= 0;
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

        public static int CODES= 6;
    }

}
