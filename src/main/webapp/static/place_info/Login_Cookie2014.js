﻿//问答相关内容
var RecordCount = 0;
var da = 0;
var cookieLanguage = "LN";
var cookieCoin = "huobi";
var FavPath = "/s/fuser";
var NewAnswer = 0;


$(function () {
    if (document.domain.indexOf("en.youtx.com") > -1) {
        $.cookie(cookieLanguage, "en-US", {
            expires: 30,
            path: '/',
            domain: 'youtx.com'
        });
        if ($.cookie(cookieCoin) == "" || !$.cookie(cookieCoin)) {
            $.cookie(cookieCoin, "USD", {
                expires: 30,
                path: '/',
                domain: 'youtx.com'
            });
        }
    }
    else if (document.domain.indexOf("big5.youtx.com") > -1) {
        $.cookie(cookieLanguage, "zh-Hant", {
            expires: 30,
            path: '/',
            domain: 'youtx.com'
        });
        if ($.cookie(cookieCoin) == "" || !$.cookie(cookieCoin)) {
            $.cookie(cookieCoin, "USD", {
                expires: 30,
                path: '/',
                domain: 'youtx.com'
            });
        }
    }
    else if (document.domain.indexOf("www.youtx.com") > -1) {
        FavPath = "/list/fuser";
        $.cookie(cookieLanguage, "zh", {
            expires: 30,
            path: '/',
            domain: 'youtx.com'
        });
        //if ($.cookie(cookieCoin) == "" || !$.cookie(cookieCoin)) {
        $.cookie(cookieCoin, "CNY", {
            expires: 30,
            path: '/',
            domain: 'youtx.com'
        });
        //}
    }
    else {
        FavPath = "http://www.youtx.com/list/fuser";
    }
    //20140414潘志鹏添加
    if (document.domain.indexOf("hotel.beta.www.youtx.com") > -1 || document.domain.indexOf("hotel.youtx.com") > -1) {
        FavPath = "/hotel/hfuser";
    }
    if (getcookie("loginname") == '' || typeof (getcookie("loginname")) == 'undefined' || typeof (getcookie("loginname")) == 'null') {
        $("#youtxlogin").hide();
        $("#youtxloginw").show();
    }
    else {
        $("#youtxlogin").show();
        $("#youtxloginw").hide();
        var names = getgbchr(getcookie("loginname"));
        if (name(names)) {
            names = names.replace('|', '');
            names = subStr(names, 'ch');
            $("#NameA").text(names + "，欢迎您");
        } else {
            var username = names.split("|");
            var namesEn = username[0] + " " + username[1];
            namesEn = subStr(namesEn, 'en');
            $("#NameA").text(namesEn + "，欢迎您");
        }
        //20141027 去掉
        //$("#FavNumA").attr("href", FavPath + getcookie("new_loginid") + "/");
        //20140523修改
        $.ajax({
            url: HostUrl + '/profile/Ajax/GetFavourite.aspx?action=AllMsgCount&userid=' + $.cookie("new_loginid") + '&r=' + Math.random(),
            dataType: "jsonp",
            jsonp: 'callback',
            success: function (json) {
                $("#MsgNumA").text('消息(' + json.Result + ')');
                //$("#SysMsgNumSpan").text('(' + json.Result_sys + ')');
                $("#RoomsNumA").text('我的订单(' + json.Result_Rooms + ')');
                if (Number(json.MallShop) > 0) {
                    $("#MallShopNum").text('我的店铺');
                    $("#MallShopNum").attr('href', HostMallShop + '/shoppublish/');
                }
                else {
                    $("#MallShopNum").text('我要开店');
                    $("#MallShopNum").attr('href', HostUrl + '/mallshop/mallabout/');
                }
            }
        });
        //问答相关内容
        function loadt1(PageIndex, ListType, PageSize) {
            $.ajax({
                url: HostUrl + '/profile/ajax/getAskContent.aspx?ListType=' + ListType + '&PageSize=' + PageSize + '&PageIndex=' + PageIndex + '&t=' + Math.random(),
                type: 'GET',
                async: false,
                timeout: 1000,
                dataType: 'xml',
                error: function (xml) {
                },
                success: function (xml) {
                    RecordCount = $(xml).find('SearchInfo').find("RecordCount").text();
                    if (RecordCount > 0) {
                        $('#wencount').html(RecordCount);
                    }
                    else {
                        $('#wen').hide();
                    }
                }
            });
        }
        //我提出的问题
        function loadt13(PageIndex, ListType, PageSize) {
            $.ajax({
                url: HostUrl + '/profile/ajax/getAskContent.aspx?ListType=' + ListType + '&PageSize=' + PageSize + '&PageIndex=' + PageIndex + '&t=' + Math.random(),
                type: 'GET',
                async: false,
                timeout: 1000,
                dataType: 'xml',
                error: function (xml) {
                },
                success: function (xml) {
                    $(xml).find('Ask').each(function (i) {
                        NewAnswer += parseInt($(this).children("NewAnswer").text());
                    });
                    if (NewAnswer > 0) {
                        //$(".HeaderTiShi02").show();
                        $('#dacount').html(NewAnswer);
                    }
                    else {
                        // $(".HeaderTiShi02").hide();
                    }
                }
            });
        }
        //loadt1(1, 1, 1);
        //loadt2(1, 8, 1);
        //loadt13(1, 2, 10000);
    }
    window.setTimeout(function () {
        if ((NewAnswer > 0 || da > 0) && $.cookie("answertop") != 'false') {
            $(".HeaderTiShi02").show();
        }
        else {
            $(".HeaderTiShi02").hide();
        }
    },
    4000);
});

function getcookie(cokname) {
    var cokval;
    var strCookie = document.cookie;
    strCookie.getDomain = 'youtx.com';
    var arrCookie = strCookie.split("; ");
    for (var i = 0; i < arrCookie.length; i++) {
        var arr = arrCookie[i].split("=");
        if (cokname == arr[0]) {
            cokval = arr[1];
            break;
        }
    }
    return cokval;
}

function getgbchr(username) {
    if (username.length > 0) {
        if (username.indexOf('%') != -1) {
            username = unescape(username);
        }
    }
    return username;
}

function name(str) {
    str = str.replace('|', '');
    str = str.replace(/[\u4E00-\u9FA5]/g, '%#');
    if (str == "%#")
        return true;
    return false;
}
//截取中英文名字（中10英20）
function subStr(str, tp) {
    if (tp == "ch") {
        if (str.length > 10) {
            return str.substring(0, 10) + "...";
        }
        else {
            return str;
        }
    }
    else if (tp == "en") {
        if (str.length > 21) {
            return str.substring(0, 20) + "...";
        }
        else {
            return str;
        }
    }
    else {
        return str;
    }
}

var userid = getcookie('new_loginid');
if (parseInt(userid) > 0) {
    $.ajax({
        type: 'POST',
        url: HostUrl + '/profile/Ajax/AjaxPassport.aspx',
        data: 'type=isBlackList&UserID=' + userid,
        success: function (data) {
        },
        error: function (err) {
        }
    });
}