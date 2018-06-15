﻿(function () {
    var Verification = {
        isUserName: function (str) {
            var reg = /^[a-zA-Z\u4e00-\u9fa5]{0,100}$/;
            if (!reg.test(str)) {
                return false;
            }
            else {
                return true;
            }
        },
        //是否券的用户名
        isTicketCode: function (str) {
            var reg = /^[a-zA-Z0-9]{8}$/;
            if (!reg.test(str)) {
                return false;
            }
            else {
                return true;
            }
        },
        //是否券的密码
        isPassWord: function (str) {
            var reg = /^[a-zA-Z0-9]{6}$/;
            if (!reg.test(str)) {
                return false;
            }
            else {
                return true;
            }
        },
        //验证手机号
        isMobile: function (obj) {
            var p1 = /^1[3-9]\d{9}$/;

            if (p1.test(obj)) {

                return true;
            }
            else {
                return false;
            }
        },
        CheckNumberandPlus: function (obj) {
            var p = /^[\d+-]+$/;
            // var p = /^[-+0-9]/;
            if (!p.test(obj)) {
                return false;
            }
            else if (obj.length > 20) {
                return false;
            }
            else {
                return true;
            }
        },
        //验证座机号
        isTel: function (obj) {
            var p2 = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
            if (p2.test(obj))
                return true;
            else return false;
        },
        //验证身份证号
        isId: function (num) {
            num = num.toUpperCase();
            //身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X。   
            if (!(/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test(num))) {
                return false;
            }
            //校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。 
            //下面分别分析出生日期和校验位 
            var len, re;
            len = num.length;
            if (len == 15) {
                re = new RegExp(/^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/);
                var arrSplit = num.match(re);

                //检查生日日期是否正确 
                var dtmBirth = new Date('19' + arrSplit[2] + '/' + arrSplit[3] + '/' + arrSplit[4]);
                var bGoodDay;
                bGoodDay = (dtmBirth.getYear() == Number(arrSplit[2])) && ((dtmBirth.getMonth() + 1) == Number(arrSplit[3])) && (dtmBirth.getDate() == Number(arrSplit[4]));
                if (!bGoodDay) {
                    return false;
                }
                else {
                    //将15位身份证转成18位 
                    //校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。 
                    var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
                    var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
                    var nTemp = 0, i;
                    num = num.substr(0, 6) + '19' + num.substr(6, num.length - 6);
                    for (i = 0; i < 17; i++) {
                        nTemp += num.substr(i, 1) * arrInt[i];
                    }
                    num += arrCh[nTemp % 11];
                    return true;
                }
            }
            if (len == 18) {
                re = new RegExp(/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/);
                var arrSplit = num.match(re);
                //检查生日日期是否正确 
                var dtmBirth = new Date(arrSplit[2] + "/" + arrSplit[3] + "/" + arrSplit[4]);
                var bGoodDay;
                bGoodDay = (dtmBirth.getFullYear() == Number(arrSplit[2])) && ((dtmBirth.getMonth() + 1) == Number(arrSplit[3])) && (dtmBirth.getDate() == Number(arrSplit[4]));
                if (!bGoodDay) {
                    return false;
                }
                else {
                    //检验18位身份证的校验码是否正确。 
                    //校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。 
                    var valnum;
                    var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
                    var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
                    var nTemp = 0, i;
                    for (i = 0; i < 17; i++) {
                        nTemp += num.substr(i, 1) * arrInt[i];
                    }
                    valnum = arrCh[nTemp % 11];
                    if (valnum != num.substr(17, 1)) {
                        return false;
                    }
                    return true;
                }
            }
            return false;
        },
        //验证邮箱
        isEmail: function (str) {
            //对电子邮件的验证
            //var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
            //2012-08-30 修改域名不能存在_，@前可以存在-
            var myreg = /^([a-zA-Z0-9]+[\-|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
            if (!myreg.test(str)) {
                return false;
            }
            else {
                return true;
            }
        },
        //验证是否为空,为空返回true,不为空返回false 
        isNullOrEmpty: function (str) {
            if (str != null && $.trim(str).length > 0) {
                return false;
            } else {
                return true;
            }
        }
    }

    Youtx.Verification = Verification;
})()