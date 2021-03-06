package com.youtx.rent.logins.service;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.youtx.rent.dao.UserMapper;
import com.youtx.rent.entity.User;
import com.youtx.rent.logins.result.JsonResult;
import com.youtx.rent.logins.utils.SystemParm;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {
    @Autowired
    private UserMapper userMapper;

    //初始化ascClient需要的几个参数
    //产品名称:云通信短信API产品,开发者无需替换
    static final String product = "Dysmsapi";//短信API产品名称（短信产品名固定，无需修改）
    //产品域名,开发者无需替换
    static final String domain = "dysmsapi.aliyuncs.com";//短信API产品域名（接口地址固定，无需修改）
    // TODO 此处需要替换成开发者自己的AK(在阿里云访问控制台寻找)
    static final String accessKeyId = "LTAIcE9XG8sE2hKQ";//你的accessKeyId,参考本文档步骤2
    static final String accessKeySecret = "Wyx8gKGc16GLJWk2PTJRyqFX2nMw8U";//你的accessKeySecret，参考本文档步骤2

    //短信签名,例：云通信

    static String SignName = "李小鹏";

    //TemplateCode(必须):短信模板ID
    static String TemplateCode = "SMS_136530066";

    /*
     * 入参列表
     * PhoneNumbers(必须):短信接收号码,支持以逗号分隔的形式进行批量调用，批量上限为1000个手机号码,批量调用相对于单条调用及时性稍有延迟,验证码类型的短信推荐使用单条调用的方式
     * SignName(必须):短信签名,例：云通信
     * TemplateCode(必须):短信模板ID
     * TemplateParam(可选):短信模板变量替换JSON串,友情提示:如果JSON中需要带换行符,请参照标准的JSON协议。
     * SmsUpExtendCode:上行短信扩展码,无特殊需要此字段的用户请忽略此字段
     * OutId:外部流水扩展字段
     */
    public static SendSmsResponse sendSms(String phoneNum,String random){
        //可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
        //初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        try {
            DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        } catch (ClientException e) {
            e.printStackTrace();
        }
        IAcsClient acsClient = new DefaultAcsClient(profile);
        //组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();
        //必填:待发送手机号
        request.setPhoneNumbers(phoneNum);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName(SignName);
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode(TemplateCode);
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
//          request.setTemplateParam("{\"name\":\"Tom\", \"code\":\"123\"}");
        request.setTemplateParam("{\"code\":\""+random+"\"}");
        //选填-上行短信扩展码(无特殊需求用户请忽略此字段)
        //request.setSmsUpExtendCode("90997");

        //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
        request.setOutId("yourOutId");

        //hint 此处可能会抛出异常，注意catch
        SendSmsResponse sendSmsResponse = new SendSmsResponse();
        try {
            sendSmsResponse = acsClient.getAcsResponse(request);
        } catch (ServerException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();

        } catch (ClientException e) {

            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return sendSmsResponse;
    }
    public JsonResult checks2(String phone){
        User user = userMapper.selectByPhone(phone);
        JsonResult jsonResult = new JsonResult();
        if(null != user ){
            System.out.println("userId:"+user.getUserId());
            String random = Integer.toString((int)((Math.random()*9+1)*100000));
            System.out.println("check2----code:"+random);
            SendSmsResponse response = sendSms(phone,random);
            if(null!=response.getCode() && ("OK").equals(response.getCode())) {
                //失败返回code为0，返回验证码
                jsonResult.setCode(SystemParm.Login.CODES);
                jsonResult.setMsg(random);
            }else {
                //频繁发送信息，1小时上限为5条，返回code为9
                jsonResult.setCode(SystemParm.Login.BUSINESS_LIMIT_CONTROL);
                jsonResult.setMsg(SystemParm.Login.LIMIT_SEND);
            }
        }else {
            //失败返回code为3
            jsonResult.setCode(SystemParm.Login.CODE_REGISTER);
            jsonResult.setMsg(SystemParm.Login.REGISTER_FAIL);

        }
        return jsonResult;
    }


    public JsonResult checks(String phone){
        User user = userMapper.selectByPhone(phone);
        JsonResult jsonResult = new JsonResult();
        if(null == user ){

            //生成6位随机数
            String random = Integer.toString((int)((Math.random()*9+1)*100000));
            //返回给客户端的数据
            String dataJson = "{\"code\":\""+random+"\"}";
            System.out.println(dataJson+":service");
            SendSmsResponse response = sendSms(phone,random);
            if(null!=response.getCode() && ("OK").equals(response.getCode())) {
                //请求成功，将dataJson数据返回给客户端
                jsonResult.setCode(SystemParm.Login.CODES);
                jsonResult.setMsg(random);
            }
        }else {
            jsonResult.setCode(SystemParm.Login.CODE_REGISTER);
            jsonResult.setMsg(SystemParm.Login.MSG_REPETEDPHONE);

        }
        return jsonResult;
    }

    public String  add(String userPhone,String password,String userRealname){
        User user = userMapper.selectByPhone(userPhone);
        SimpleHash simpleHash = new SimpleHash("MD5", password,password,5);
        String pwd = simpleHash.toHex();
        String userHeadimg= "5dbecb20-f9c5-4593-bdd5-4309eb30cc3512313.jpg";
        if(null == user){
            userMapper.insertuser(userPhone,pwd,userRealname,userHeadimg);
            return "sucess";
        }
        return "fail" ;
    }
}
