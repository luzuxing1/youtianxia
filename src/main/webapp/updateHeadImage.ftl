<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0028)http://www.youtx.com/Avatar/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script async="" src="${base}/static/updateHeadImage/talk"></script>
<#assign base=request.contextPath />
    <base id="base" href="${base}">
    <meta content="IE=7.0000" http-equiv="X-UA-Compatible">


    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="${base}/static/updateHeadImage/countpv" width="0" height="0">
    <script charset="utf-8" src="${base}/static/updateHeadImage/v.js"></script>
    <script type="text/javascript" async="" src="${base}/static/updateHeadImage/load.min.js"></script>
    <script src="${base}/static/updateHeadImage/jquery-1.6.2.min.js" language="javascript"
            type="text/javascript"></script>
    <link href="${base}/static/updateHeadImage/public.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${base}/static/updateHeadImage/jQuery.cookie.js"></script>


    <script type="text/javascript" language="javascript">
        window.onerror = function () {
            return true;
        }
    </script>

    <link href="${base}/static/updateHeadImage/Control_Panel.css" rel="stylesheet" type="text/css">
    <link href="${base}/static/updateHeadImage/modify.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" language="javascript">
        if (parseInt('402') > 0) {
            $.ajax({
                type: 'POST',
                url: '/profile/Ajax/AjaxPassport.aspx',
                data: 'type=isBlackList&UserID=' + '402',
                success: function (data) {

                },
                error: function (err) {

                }
            });
        }
    </script>
    <title>个人信息修改 - 游天下</title>
    <link rel="stylesheet" type="text/css" href="${base}/static/updateHeadImage/Invegratel.css">
    <link rel="stylesheet" type="text/css" href="${base}/static/updateHeadImage/jquery.imagecropper.css">
    <link rel="stylesheet" type="text/css" href="${base}/static/updateHeadImage/mobile.css">
    <script type="text/javascript" src="${base}/static/updateHeadImage/ui.core.min.js"></script>
    <script type="text/javascript" src="${base}/static/updateHeadImage/Youtx.Utility.js"></script>
    <script type="text/javascript" src="${base}/static/updateHeadImage/Youtx.Verification.js"></script>
    <script type="text/javascript" src="${base}/static/updateHeadImage/Youtx.Passprofile.js"></script>
    <script type="text/javascript" src="${base}/static/updateHeadImage/Youtx.UploadImage.js"></script>
    <script type="text/javascript" src="${base}/static/updateHeadImage/ui.draggable.min.js"></script>
    <script type="text/javascript" src="${base}/static/updateHeadImage/jquery.imagecropper.js"></script>
    <script type="text/javascript" src="${base}/static/updateHeadImage/utility.js"></script>
    <script type="text/javascript" src="${base}/static/updateHeadImage/JSConfigInfo.js"></script>
    <script type="text/javascript" language="javascript">
        //点击修改按钮,把数据放到下边的文本框里
        function ClickChange(data) {
            var d = data.split('_');
            if (d.length == 3) {
                $('#MobileID').val(d[0]);
                $('#MobileMan').val(d[1]);
                $('#MobileNumber').val(d[2]);
                $('#AddorChange').val("修改");
            }
            else {
                alert('数据读取错误');
            }

        }

        //删除电话和联系人，并重新加载
        function deleteMobile(OtherMobileID) {
            if (confirm("您确定是否删除?")) {
                $.ajax({
                    type: 'POST',
                    url: '/profile/Ajax/AjaxPassport.aspx',
                    data: 'type=DelModelByID&UserID=' + '402' + '&OtherMobileID=' + OtherMobileID,
                    success: function (data) {
                        $('#OtherMobile').html(data);
                    },
                    error: function (err) {

                    }
                });
            }
        }

        $(document).ready(function () {
            var othermobile = new Youtx.OtherMobile('402');
            var uploadimage = new Youtx.UploadImage('http://js.youtx.com/profile/images/usericon/pic-225x225.jpg');
        });
    </script>
    <script type="text/javascript" language="javascript">
        $(function () {
            $(".private2").hide();
            initDayddl();
            $("#user_birthdate_1i").change(function () {
                initDayddl();
                $("#user_birthdate_3i").val("1");
            });
            $("#user_birthdate_2i").change(function () {
                initDayddl();
                $("#user_birthdate_3i").val("1");
            });

            $("#user_preference_time_zone").val("");
            var language = "";
            var _array = language.split(',');
            if (language != "") {
                for (i = 0; i < _array.length; i++) {
                    $("#langpanel").append("<span  class=\"multiselect-option\">" + _array[i] + "<span title=\"从列表中删除\" class=\"x\"></span></span>");
                }
            }
            $(".multiselect-option .x").click(function () {
                $(this).parent().hide();
            });
            $("#user_first_name").blur(function () {
                if (getBytesLength($.trim($(this).val())) < 1) {
                    $(this).addClass("error");
                    $(this).next().html('请至少输入1个字符');
                    $(this).next().show();
                }
                else if (getBytesLength($.trim($(this).val())) > 10) {
                    $(this).addClass("error");
                    $(this).next().html('最多只能输入10个字符');
                    $(this).next().show();
                }
                else {
                    $(this).removeClass("error");
                    $(this).next().hide();
                }
            });

            $("#user_last_name").blur(function () {
                if (getBytesLength($.trim($(this).val())) < 1) {
                    $(this).addClass("error");
                    $(this).next().html('请至少输入1个字符');
                    $(this).next().show();
                } else if (getBytesLength($.trim($(this).val())) > 10) {
                    $(this).addClass("error");
                    $(this).next().html('最多只能输入10个字符');
                    $(this).next().show();
                } else {
                    $(this).removeClass("error");
                    $(this).next().hide();
                }
            });
            $("#user_email").blur(function () {
                $('.error1').hide();
                if (!Youtx.Verification.isEmail($(this).val()) && $(this).val() != '') {
                    $('.error2').show();
                } else {
                    $('.error2').hide();
                    if ($(this).val() != '') {
                        CheckMailExists();
                    }
                }
            });
            $("#user_phone").blur(function () {
                if ($(this).val() == "") {
                    $(this).addClass("error");
                    $(this).next().html("首选电话号码不能为空").show();
                    return false;
                }
                if (!Youtx.Verification.isMobile($(this).val())) {
                    $(this).addClass("error");
                    $(this).next().html("电话号码应符合规范,如 13800001111").show();
                    return false;
                } else {
                    $(this).removeClass("error");
                    $(this).next().hide();
                }
                if ($(this).val() != $("#usertel").val()) {
                    $(this).parent().find(".ok_icon").hide(); //yanzheng
                    $(this).parent().find(".yanzheng").hide()
                }
            });


            $("#user_profile_info_about").blur(function () {
                if (getBytesLength($(this).val()) > 1000) {
                    $(this).addClass("error");
                    $(this).next().show();
                    $('#info_about').hide();
                    location.hash = "jie";
                    $('.save_yes_02').hide();
                } else {
                    $(this).removeClass("error");
                    $('#info_about').show();
                    $(this).next().hide();
                    $('.save_yes_02').hide();
                }
            });

            $("#btnSave").click(function () {
                var passed = checkpass();

                if (passed) {
                    if ($("#user_profile_info_current_city").val() == $("#user_profile_info_current_city").attr("placeholder")) {
                        $("#user_profile_info_current_city_hidden").val("");
                    } else {
                        $("#user_profile_info_current_city_hidden").val($("#user_profile_info_current_city").val());
                    }
                    if ($("#user_profile_info_employer").val() == $("#user_profile_info_employer").attr("placeholder")) {
                        $("#user_profile_info_employer_hidden").val("");
                    } else {
                        $("#user_profile_info_employer_hidden").val($("#user_profile_info_employer").val());
                    }
                    $.post("/profile/Passport/Interface/PostUpdateUser.aspx", $("#inforF").serialize(),
                            function (msg) {
                                if (msg == "1") {
                                    $('.save_yes_02').html('您的自我介绍中含有联系信息，请检查后删除');
                                    $('.save_yes_02').show();
                                    location.hash = "jie";
                                }
                                else if (msg == "2") {
                                    $('.save_yes_02').html('该姓名包含敏感字，禁止使用，有问题请与客服联系。');
                                    $('.save_yes_02').show();
                                    location.hash = "ming";
                                }
                                else if (msg == "3") {
                                    $('.save_yes_02').html('名字不能为空');
                                    $('.save_yes_02').show();
                                    location.hash = "#ming";
                                }
                                else if (msg == "4") {
                                    $('.save_yes_02').html('姓氏不能为空');
                                    $('.save_yes_02').show();
                                    location.hash = "#xing";
                                }
                                else if (msg == "8") {
                                    $('.error2').show();
                                }
                                else if (msg == "9") {
                                    $('.error1').show();
                                }
                                else if (msg == "10") {
                                    $('.save_yes_02').html('自我介绍里包含敏感词，请修改后重试。');
                                    $('.save_yes_02').show();
                                }
                                else {
                                    if (msg == "TRUE") {
                                        $('#info_about').show();
                                        $('.save_yes_02').hide();
                                        $('.save_yes_01').show();
                                        setTimeout("$('.save_yes_01').hide()", 3000);

                                    } else {
                                        $('.save_yes_02').html('保存失败，请重试。');
                                        $('.save_yes_02').show();
                                    }
                                }
                            }
                    );
                } else {
                    $('.save_yes_02').html('');
                    $('.save_yes_02').show();
                    //alert("某些必填信息不完整或者不合规范");
                }
            });
            $("input[placeholder]").each(function () {
                if ($.trim($(this).val()) == "") {
                    $(this).val($(this).attr("placeholder"));
                    $(this).css({"color": "Gray"});
                }
                $(this).focusin(function () {
                    if ($.trim($(this).val()) == $(this).attr("placeholder")) {
                        $(this).val("");
                        $(this).css({"color": "Black"});
                    }
                }).focusout(function () {
                    if ($.trim($(this).val()) == "") {
                        $(this).val($(this).attr("placeholder"));
                        $(this).css({"color": "Gray"});
                    }
                });
            });
        });

        function CheckTel(str) {
            //var reg = /^((\d{3,4})?-?\d{7,8}转?(\d{1,4})?)$|^(1[3-9]\d{9})$|^((\d{3,4})?-?\d{7,8}转?(\d{4})?,?(1[3-9]\d{9}))$/;
            var reg = /^((\d{3,4})?-?\d{7,8}转?(\d{1,4})?)$|^(1[3-9]\d{9})$|^((\d{3,4})?-?\d{7,8}转?(\d{4})?,?(1[3-9]\d{9}))$|^((1[3-9]\d{9})?,?(\d{3,4})?-?\d{7,8}转?(\d{4}))$/;
            str = str.replace(/\s+/g, "");
            if (!reg.test(str)) {
                return false;
            }
            else {
                return true;
            }
        }

        function len(s) {
            var l = 0;
            var a = s.split("");
            for (var i = 0; i < a.length; i++) {
                if (a[i].charCodeAt(0) < 299) {
                    l++;
                } else {
                    l += 2;
                }
            }
            return l;
        }

        function CheckMailExists() {
            $.ajax({
                type: 'POST',
                //async: false,
                async: false,
                url: '/profile/Ajax/AjaxReg.aspx',
                data: 'type=CheckMailExists&user_email=' + $("#user_email").val() + "&t" + Math.random(),
                success: function (data) {
                    if (data == 'true') {
                        $('.error1').show();
                        //被使用
                    }
                    else {
                        $('.error1').hide();
                    }
                },
                error: function () {

                }
            });
        }
    </script>
    <style type="text/css">
        #cboxOverlay {
            background: none repeat scroll 0 0 #000000;
            opacity: 0.8;
            height: 100%;
            position: fixed;
            width: 100%;
            z-index: 99;
            left: 0;
            top: 0;
        }

        input[type="checkbox"] {
            height: auto;
        }
    </style>

    <title></title>

    <meta content="IE=7.0000" http-equiv="X-UA-Compatible">
    <link href="${base}/static/updateHeadImage/jquery-ui-1.7.2.custom.css" rel="Stylesheet" type="text/css">
    <script src="${base}/static/updateHeadImage/jquery-1.6.2.min(1).js" type="text/javascript"></script>
    <script src="${base}/static/updateHeadImage/jQuery.cookie(1).js" type="text/javascript"></script>
    <!--script src="/profile/Scripts/jquery-ui-1.8.14.custom.min.js" type="text/javascript"></script-->
    <script src="${base}/static/updateHeadImage/jquery.cropzoom.js" type="text/javascript"></script>
    <script src="${base}/static/updateHeadImage/jquery-ui-1.8.custom.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        document.namespaces;
    </script>


    <script src="${base}/static/updateHeadImage/saved_resource"></script>
    <link rel="stylesheet" type="text/css" href="${base}/static/updateHeadImage/Youtx_WebIM.css">
</head>
<body>


<div class="wrapper">

    <!--头 已登录 start-->
    <script type="text/javascript">
        var HostUrl = 'http://www.youtx.com';
        var HostUrl_En = 'http://en.youtx.com';
        var HostMallShop = 'http://mall.youtx.com';
        var lang = "en-US";
        $(function () {
            $(".HeadLanguage").click(function () {
                $.cookie('LN', lang, {expires: 30, path: '/', domain: 'youtx.com'});
                $.cookie('huobi', "USD", {expires: 30, path: '/', domain: 'youtx.com'});
                location.href = HostUrl_En;
            });
        });

        //140226鼠标滑过手机游天下修改
        $(function () {
            var timerM = null;
            $('.ytxMob').mouseover(function () {
                clearTimeout(timerM);
                $(this).children('.ytxMobCon').show();
            });
            $('.ytxMob').mouseout(function () {
                var thisM = this;
                timerM = setTimeout(function () {
                    $(thisM).children('.ytxMobCon').hide();
                }, 300);
            });

        });
        //140226end
    </script>
    <script type="text/javascript" src="${base}/static/updateHeadImage/Login_Cookie.js"></script>
    <script type="text/javascript">
        //监控代码请勿删除
        var _dctc = _dctc || {};
        _dctc._account = _dctc._account || ['UA-25297079-1'];
        _dctc.isNorth = _dctc.isNorth || 'Y';
        _dctc.bid = '27';
        (function () {
            var script = document.createElement('script');
            script.type = 'text/javascript';
            script.async = true;
            script.src = 'http://js.soufunimg.com/count/load.min.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(script, s);
        })();
        //监控代码结束

    </script>
    <!-- ClickTale Top part -->
    <script type="text/javascript">
        var WRInitTime = (new Date()).getTime();
    </script>
    <!-- ClickTale end of Top part -->
    <div id="youtxlogin" class="header" style="">
        <p class="logo">
            <a href="http://www.youtx.com/" id="youtx_01" target="_blank"><img
                    src="${base}/static/updateHeadImage/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站"
                    title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
        </p>
        <!--2013-5-3修改-->
        <p class="btncz"><a id="A2" style="cursor:default;" target="_blank" rel="nofollow"
                            onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;publish&#39;});}">我是房东</a>
        </p>
        <ul class="HeadLandlord">
            <li class="HeadLandlordNew"><a id="MallShopNum" target="_blank"
                                           href="http://www.youtx.com/mallshop/mallabout/">我要开店</a></li>
            <li><a target="_blank" href="http://www.youtx.com/room/new/">我要出租</a></li>
            <li><a target="_blank" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">订单管理</a></li>
            <li><a target="_blank" href="http://www.youtx.com/publish/DateMnage/">排期管理</a></li>
            <li><a target="_blank" href="http://www.youtx.com/User/Myroom/">房源管理</a></li>
            <li style="border:none;"><a target="_blank"
                                        href="http://bang.youtx.com/DateManage/DateManage.aspx">我的短租帮</a></li>
        </ul>
        <!--2013-5-3修改-结束-->
        <ul class="subnav">
            <li><a target="_self" href="http://www.youtx.com/help/" rel="nofollow" id="youtx_05">帮助</a></li>
            <!--        <li class="PosRe"><a href="http://www.youtx.com/mo/" target="_blank"  rel="nofollow" id="youtx_04">手机游天下</a></li>-->
            <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新"
                                                                                                src="${base}/static/updateHeadImage/NewIco.gif"
                                                                                                style="display:none;left:45px;"
                                                                                                class="PosAb TN17"></li>
            <!--<li><a href="http://guide.youtx.com/" target="_blank" >目的地专家</a>
                <div class="HeaderTiShi"> 出行问答，游记攻略！<span>◆</span> <span class="HeaderTiShiImg">◆</span>
                     <p><img alt="关" src="http://js.youtx.com/images/QuAnTiShiColse.gif" id="imgx" /></p>
                </div>
                <div class="HeaderTiShi02" style="display:none">
                <div id="da">收到<a href="http://www.youtx.com/profile/User/Ask/MyAsk.aspx" id="dacount">0</a>个新回答<a class="PL10" href="http://www.youtx.com/profile/User/Ask/MyAsk.aspx?type=answer">查看</a></div>
                <div id="wen">收到<a href="http://www.youtx.com/profile/User/Ask/MyAsk.aspx?type=answer" id="wencount">0</a>个网友提问<a class="PL10" href="http://www.youtx.com/profile/User/Ask/MyAsk.aspx">查看</a></div>
                <span class="Headerbg01 Headerbg03">◆</span><span class="Headerbg02 Headerbg04">◆</span>
                     <p><img src="http://js.youtx.com/images/HeadOutBox.gif"  class="HeadClose"></p>
                </div>
            </li>-->
            <li><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">短租帮</a></li>
            <li class="HeadLanguage"><a href="http://en.youtx.com/" target="_self">English</a></li>
            <li class="ytxMob" id="mobYtx2">
                <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A4">手机游天下</a>
                <div class="ytxMobCon" style="display: none;">
                    <span class="arrowGy">◆</span>
                    <span class="arrowWt">◆</span>
                    <dl>
                        <dt>扫描二维码安装游天下客户端</dt>
                        <dd><a href="http://www.youtx.com/mo/" target="_blank"><img
                                src="${base}/static/updateHeadImage/youtxapp.png" width="120" height="120"></a></dd>
                    </dl>
                    <dl>
                        <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                        <dd><img src="${base}/static/updateHeadImage/ewmBNew.jpg" width="102" height="102"></dd>
                        <dd>微信公众号：游天下</dd>
                    </dl>
                    <dl style="border:none;">
                        <dt>手机浏览器访问游天下</dt>
                        <dd style="margin-top:45px;"><a href="http://m.youtx.com/" target="_blank" class="mbUrl">m.YouTX.com</a>
                        </dd>
                    </dl>
                </div>
            </li>

            <!--2013-5-3修改-->
            <li class="first firstNew">
                <span class="FirstSpan FirstSpan02"><a target="_self" href="http://www.youtx.com/home/dashboard/"
                                                       rel="nofollow">Hi,<span id="liname">孙 志飞</span></a><span
                        class="JianTouIco"></span></span>
                <div class="UlName UlName02" style="display: none; width: 121px;">
                    <div><a target="_self" href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx"
                            rel="nofollow">已预订的房间</a><span id="RoomsNumSpan" class="font_red">(0)</span></div>
                    <div class=""><a target="_self" href="http://www.youtx.com/User/MyMailBox/"
                                     rel="nofollow">站内信</a><span id="MsgNumSpan" class="font_red">(1)</span></div>
                    <div><a target="_self" href="http://www.youtx.com/profile/User/MailBox/SystemMail.aspx"
                            rel="nofollow">系统通知</a><span id="SysMsgNumSpan" class="font_red">(4)</span></div>
                    <div id="FavNumLi" class="HeadLandlordCur"><a target="_self"
                                                                  href="http://www.youtx.com/payment/User/MyCollection/Collection.aspx"
                                                                  title="查看我收藏的房间" rel="nofollow">收藏夹</a></div>
                    <div style="border:none;"><a target="_self" href="http://www.youtx.com/user/logout/" rel="nofollow">退出</a>
                    </div>
                </div>
            </li>
            <!--<li class="UserName">Hi,<span id="liname">游天下账号</span></li>-->
            <!--2013-5-3修改-结束-->
        </ul>
    </div>
    <!--头 已登录 end-->
    <!--头 未登录 start-->
    <div id="youtxloginw" class="header" style="display: none;">
        <p class="logo">
            <a href="http://www.youtx.com/" target="_blank" id="youtx_01">
                <img src="${base}/static/updateHeadImage/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站"
                     title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
        </p>
        <!--2013-5-3修改-->
        <p class="btncz"><a id="A3" style="cursor:default;" target="_blank" rel="nofollow"
                            onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;publish&#39;});}">我是房东</a>
        </p>
        <ul class="HeadLandlord">
            <li class="HeadLandlordNew"><a target="_blank" href="http://www.youtx.com/mallshop/mallabout/">我要开店</a></li>
            <li><a target="_blank" href="http://www.youtx.com/room/new/">我要出租</a></li>
            <li><a target="_blank" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">订单管理</a></li>
            <li><a target="_blank" href="http://www.youtx.com/publish/DateMnage/">排期管理</a></li>
            <li><a target="_blank" href="http://www.youtx.com/User/Myroom/">房源管理</a></li>
            <li style="border:none;"><a target="_blank"
                                        href="http://bang.youtx.com/DateManage/DateManage.aspx">我的短租帮</a></li>
        </ul>
        <!--2013-5-3修改-结束-->
        <ul class="subnav">
            <li><a target="_self" href="http://www.youtx.com/help/" rel="nofollow" id="youtx_05">帮助</a></li>
            <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新"
                                                                                                src="${base}/static/updateHeadImage/NewIco.gif"
                                                                                                style="display:none;left:45px;"
                                                                                                class="PosAb TN17"></li>
            <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
            <li class="HeadLanguage"><a target="_self" href="http://en.youtx.com/">English</a></li>
            <li class="ytxMob" id="mobYtx">

                <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
                <div class="ytxMobCon" style="display:none">
                    <span class="arrowGy">◆</span>
                    <span class="arrowWt">◆</span>
                    <dl>
                        <dt>扫描二维码安装游天下客户端</dt>
                        <dd><a href="http://www.youtx.com/mo/" target="_blank"><img
                                src="${base}/static/updateHeadImage/youtxapp.png" width="120" height="120"></a></dd>
                    </dl>
                    <dl>
                        <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                        <dd><img src="${base}/static/updateHeadImage/ewmBNew.jpg" width="102" height="102"></dd>
                        <dd>微信公众号：游天下</dd>
                    </dl>
                    <dl style="border:none;">
                        <dt>手机浏览器访问游天下</dt>
                        <dd style="margin-top:45px;"><a href="http://m.youtx.com/" target="_blank" class="mbUrl">m.YouTX.com</a>
                        </dd>
                    </dl>
                </div>
            </li>

            <li>
                <a target="_self" href="https://passport.youtx.com/user/login/" rel="nofollow" id="youtx_03"
                   onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;login&#39;});}">登录</a>
            </li>
            <li class="firstNew" id="youtx_02">
                <a target="_self" id="reg" href="https://passport.youtx.com/user/regist/" rel="nofollow"
                   onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;register&#39;});}">注册</a>
            </li>

        </ul>
    </div>
    <!--头 未登录 end-->
    <script type="text/javascript">
        var _bdhm_top = 0;
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        var _bdhm_tim = new Image(1, 1);
        _bdhm_tim.id = "bdhmPerimg";
        _bdhm_tim.src = _bdhmProtocol + "hm.baidu.com/_tt.gif?si=d6a1c2e211265084b7d12bfc8636a282&rnd=" + Math.round(Math.random() * 2147483647);
        _bdhm_tim.onload = function () {
            _bdhm_top = 1;
        }


    </script>

    <div id="dashboard_v2" class="control_cksylb edit_profile details details">
        <!--内容头部 begin-->
        <div class="row">
            <div class="col full heading">
                <ul class="breadcrumb-list">
                    <li class="breadcrumb-list-item"><a href="http://www.youtx.com/home/dashboard/">我的账户</a></li>
                    <li class="breadcrumb-list-item">
                        <h1> 编辑资料</h1>
                    </li>
                </ul>
                <span class="action_button"><a class="icon view" target="_blank"
                                               href="http://www.youtx.com/user/show/2600369"> 查看资料</a> </span>
                <div class="clear"></div>
            </div>
            <!--2012-3-6添加提示文字-->

            <!--2012-3-6添加提示文字 -结束-->
        </div>
        <!--内容头部 end-->
        <!--内容 start-->
        <div class="control_main">
            <!--内容左 start-->
            <div class="control_main_left">
                <div>
                    <ul class="control_leftnav">
                        <li class="selected" style=" border:0 none">
                            <a href="javascript:void(0);" class="details"><span class="icon"> &nbsp;</span>编辑资料</a>
                            <div id="ddbPriceDemand" class="selectedHidden">
                                <a class="selectedCur" href="http://www.youtx.com/Avatar/">修改头像</a>
                                <a class="" href="http://www.youtx.com/Basic/">基本资料</a>
                                <a class="" href="http://www.youtx.com/Detail/">详细资料</a>
                            </div>
                        </li>
                        <li><a href="http://www.youtx.com/User/Profile/" class="trust_and_verification" style=""><span
                                class="icon "></span>账户安全</a></li>
                        <li><a href="http://www.youtx.com/pass/" class="references" style=""> <span
                                class="icon "></span>好友推荐</a></li>
                        <li><a href="http://www.youtx.com/profile/Passport/AccountBind.aspx" class="ShareLink_icon"
                               style=""><span class="icon "></span>连接分享设置</a></li>
                        <li><a href="http://www.youtx.com/profile/Passport/ZhimaTrustNew.aspx" class="CreditScore"
                               style=""><span class="icon"></span>展示芝麻信用分</a></li>
                    </ul>
                </div>
            </div>
            <!--内容左 end-->

            <div class="Popup"
                 style="width: 526px; overflow: hidden; position: absolute; z-index: 99991998; display: none; top: 350.8px; left: 449.667px;">
                <div><font color="white" size="8">图片上传中，请稍后...</font></div>
            </div>
            <div class="PopupLayer"
                 style="display: none; width: 1349px; height: 877px; z-index: 9999998; opacity: 0.7; position: absolute; top: 0px; left: 0px; background-color: black;"></div>
            <script type="text/javascript">
                myCookie.setCookie('new_loginid', '2600369', null, '/', 'youtx.com');
                $(function () {
                    // $(window).scroll(resscrEvt);
                    $(window).resize(resscrEvt);

                    function resscrEvt() {
                        var bH = $("body").height();
                        var bW = $("body").width();
                        var pH = 2 * bH / 5;
                        var pW = bW / 3
                        $(".PopupLayer").css({width: bW, height: bH});
                        $(".Popup").css({top: pH, left: pW})
                    }

                    $(".PopColse").click(function () {
                        $(".Popup").hide();
                        $(".PopupLayer").hide();
                    })
                    resscrEvt();
                })
            </script>
            <div id="cboxOverlay" style="display: none;"></div>
            <!--弹出层-->
            <div class="colorbox" style="display: none; width: 406px;" id="popup">
                <div class="cboxContent">
                    <div class="steph_style" style="text-align: center;">
                        <h1 id="head"> 标题</h1>
                        <p id="content"> 内容</p>
                        <a class="button-glossy green" rel="close" id="ok">确定</a></div>
                    <div class="cboxClose" id="close"> close</div>
                </div>
            </div>
            <!--弹出层-->


            <!--内容右 start-->
            <div class="control_main_right">
                <!--修改头像 start-->
                <div class="c_m_r_box">
                    <div class="c_m_r_box_comment">
                        <div class="profile_pic_content">
                            <!--20120201long-->
                            <div class="profile_pic_container"><img id="imgIcon" alt="志飞" height="225" width="225"
                                                                    src="${imagesPath}/${user.userHeadimg}"
                                                                    title="${user.userNickname}"></div>
                            <div class="uploadarea-container">
                                <!--头像上传 start 20120201-->
                                <div class="imgIfrm">
                                    <iframe class="imgIfrmTit" id="imgIfrm" name="imgIfrm"
                                            src="${base}/static/updateHeadImage/UserPicUpLoad.html" frameborder="0"
                                            border="0" marginwidth="0" marginheight="0" scrolling="no"
                                            allowtransparency="yes">
                                    </iframe>
                                    <div class="imgIfrmTxt">
                                        <input class="imgIfrmInput" type="text" id="iconimagetxt" value="">
                                        <input class="imgIfrmButton" type="button" value="浏览" id="dianjiceshi">
                                    </div>
                                </div>
                                <div class="uploadarea_chose" style="float:left;">
                                    <input style="margin-left:5px;width:70px;" type="button" value="上传"
                                           onclick="CheckUpload()"><span style="padding:5px 0 0 12px;display:none;"
                                                                         id="spanShow">请上传大小不超过3MB的图片</span>
                                </div>
                                <div style="clear:both;"></div>
                                <p>请选择一张3MB以内的照片上传，目前仅支持jpeg、jpg、gif、png四种格式一张<br>上传真实头像有助于提高订单量哦！</p>

                                <!--new-->
                                <div class=""
                                     style="width: 450px; height: auto; overflow: hidden; border: 1px solid #666;background: #fff; margin-left: -9999px"
                                     id="UserHeadePic">

                                    <div id="cropzoom_container"
                                         style="1px solid #fff; margin-right:20px;margin-bottom: 10px;">
                                    </div>
                                    <div style="text-align: center;padding-bottom:20px;">
                                        <input type="button" class="submitBtn fl"
                                               style="margin: 0 10px 0 130px; float: left;" value="确定" id="crop"><input
                                            type="button" class="submitBtn fl" value="取消" id="btn_no"
                                            onclick="jQuery(&quot;#UserHeadePic&quot;).css({ &quot;top&quot;: &quot;-9999px&quot;, &quot;position&quot;: &quot;absolute&quot; });">
                                    </div>
                                </div>
                                <!--new-->
                                <!--头像上传 end-->
                                <form action="${base}/user/updateuser" method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="channel" value="usercenter.avatar">
                                    <input type="hidden" name="city" value="">
                                    <input type="hidden" name="zoom" id="zoom" value="1">
                                    <input type="hidden" name="age" id="age" value="2">
                                    <input type="hidden" name="left" id="left" value="">
                                    <input type="hidden" name="top" id="top" value="">
                                    <input type="hidden" name="iconimage" id="iconimage1" value="">
                                    <input id="btnUploadImgEnd" onclick="NewGetImgUrl();" type="hidden">
                                    <input id="hidPicUrl" type="hidden">
                                    <input type="hidden" name="width" id="Width">
                                    <input type="hidden" name="height" id="Height">
                                    <input type="hidden" value="${user.userId }" type="text" name="userId">
                                </form>
                                <iframe name="hidden_frame" id="hidden_frame" style="display: none"></iframe>

                                <img src="about:blank" alt="测试图片" id="testimg"
                                     onload="document.getElementById(&#39;oldwidth&#39;).value=this.width;document.getElementById(&#39;oldheight&#39;).value=this.height;LoadImgFinish(this.src)"
                                     style="margin-left: -99999px">
                                <input type="hidden" id="oldwidth">
                                <input type="hidden" id="oldheight">
                                <script type="text/javascript">
                                    $(document).ready(function () {

                                    });

                                    function CheckUpload() {
                                        var path = jQuery("#imgIfrm").contents().find("#localfile").val();
                                        if (path == "") {
                                            alert("请选择图片!");
                                            return;
                                        }
                                        if (path != "") {
                                            path = path.substr(path.lastIndexOf(".") + 1, path.length - path.lastIndexOf(".")).toLowerCase();
                                            if (path != "jpeg" && path != "jpg" && path != "png" && path != "gif") {
                                                alert("只允许上传.jpeg/.jpg/.png/.gif的图片。请选择合适的图片上传。");
                                                return false;
                                            }
                                            $('.Popup').show();
                                            $('.PopupLayer').show();
                                            jQuery("#imgIfrm").contents().find("#btnupload").click();
                                            GetImgUrl();
                                        }
                                    }

                                    function NewGetImgUrl() {
                                        var imgurl = jQuery("#hidPicUrl").val();
                                        if (imgurl == "302" || imgurl == "-1" || imgurl == 302 || imgurl == -1) {
                                            //ShowAlert("icon_failed2 textcenter", "对不起，您上传的图片大小超过限制，请更换一张图片。");
                                            $('#spanShow').show();
                                        }
                                        else {
                                            $('#spanShow').hide();
                                            jQuery('#testimg').attr("src", imgurl);
                                        }
                                        $.cookie("Picture_UserInfoPic", null, {
                                            "expires": new Date() - 1,
                                            "domain": 'youtx.com',
                                            "path": '/'
                                        });
                                    }

                                    var aaaa = 0;

                                    function GetImgUrl() {

                                        var imgurl = $.cookie("avatar_iconimage");
                                        if (imgurl == "" || imgurl == null) {
                                            setTimeout(function () {
                                                GetImgUrl();
                                            }, 100);
                                        }
                                        else {

                                            if (imgurl == "302" || imgurl == "-1" || imgurl == 302 || imgurl == -1) {
                                                $('#spanShow').show();
                                                // ShowAlert("icon_failed2 textcenter", "对不起，您上传的图片大小超过限制，请更换一张图片。");
                                            }
                                            else {
                                                $('#spanShow').hide();
                                                jQuery('#testimg').attr("src", imgurl);
                                            }
                                            $.cookie("avatar_iconimage", null, {
                                                "expires": new Date() - 1,
                                                "domain": 'youtx.com',
                                                "path": '/'
                                            });
                                            $('.Popup').hide();
                                            $('.PopupLayer').hide();
                                        }
                                    }

                                    /******/
                                    function LoadImgFinish(imgurl) {
                                        var oldwidth = parseInt(document.getElementById('oldwidth').value);
                                        var oldheight = parseInt(document.getElementById('oldheight').value);
                                        var newwidth = oldwidth, newheight = oldheight;
                                        //按照450等宽等比缩放，得到高度
                                        var rate = oldwidth / 450;
                                        if (rate >= 1) {
                                            newwidth = 450;
                                            newheight = 450 * oldheight / oldwidth;
                                        }
                                        var cropzoom = jQuery('#cropzoom_container').cropzoom({
                                            width: 450,
                                            height: 300,
                                            bgColor: '#fff',
                                            enableRotation: false,
                                            enableZoom: true,
                                            selector: {
                                                w: 225,
                                                h: 225,
                                                showPositionsOnDrag: false,
                                                showDimetionsOnDrag: true,
                                                centered: true,
                                                bgInfoLayer: '#fff',
                                                borderColor: 'blue',
                                                borderColorHover: 'yellow'
                                            },
                                            image: {
                                                source: imgurl,
                                                width: newwidth,
                                                height: newheight,
                                                minZoom: 30,
                                                maxZoom: 150
                                            }
                                        });

                                        jQuery('#selector div').removeClass("ui-resizable-handle").removeClass("ui-resizable-e").removeClass("ui-resizable-s").removeClass("ui-resizable-se");
                                        jQuery("#UserHeadePic").css({"margin-left": "0px", "position": ""});
                                        jQuery('#cropzoom_container').css({border: '1px solid #fff'});
                                        jQuery("#crop").unbind().click(function () {

                                            var left = jQuery('#selector').offset().left - jQuery('#img_to_crop').offset().left;
                                            var top = jQuery('#selector').offset().top - jQuery('#img_to_crop').offset().top;
                                            document.getElementById('left').value = left;
                                            document.getElementById('top').value = top;
                                            //                alert(document.getElementById("img_to_crop").getAttribute("width"));
                                            var imgwidth = attrStyle(document.getElementById("img_to_crop"), "width").replace('pt', '').replace('px', '');
                                            if (imgwidth == "auto") {
                                                imgwidth = 450;
                                            }
                                            if (!jQuery.browser.mozilla) {
                                                imgwidth = document.getElementById("img_to_crop").style.width.replace('px', '');
                                            }
                                            else {
                                                imgwidth = document.getElementById("img_to_crop").getAttribute("width").replace('px', '');
                                            }
                                            //alert("left:" + left + ",top:" + top + ",nowwidth:" + imgwidth + ",oldwidth:" + oldwidth + ",zoom:" + imgwidth / oldwidth);
                                            //                alert(document.getElementById("img_to_crop").width);
                                            //                for (var i in document.getElementById("img_to_crop")) {
                                            //                    for (var j in document.getElementById("img_to_crop")[i]) {
                                            //                        alert(document.getElementById("img_to_crop")[i][j]);
                                            //                    }
                                            //                }
                                            try {
                                                imgwidth = jQuery("#k image").attr("width").replace('px', '');
                                            }
                                            catch (e) {
                                            }
                                            document.getElementById('zoom').value = imgwidth / oldwidth;
                                            document.getElementById("age").value = new Date().getMilliseconds();
                                            document.getElementById('iconimage1').value = imgurl;
                                            setTimeout(function () {
                                                document.getElementById('formUp').submit();
                                            }, 100);
                                            CropTimeout = setTimeout(function () {
                                                GetCropImgUrl();
                                            });
                                        });
                                    }

                                    function attrStyle(elem, attr) {
                                        if (elem.attr) {
                                            //若样式存在于html中,优先获取
                                            return elem.style[attr];
                                        } else if (elem.currentStyle) {
                                            //IE下获取CSS属性最终样式(同于CSS优先级)
                                            return elem.currentStyle[attr];
                                        } else if (document.defaultView && document.defaultView.getComputedStyle) {
                                            //W3C标准方法获取CSS属性最终样式(同于CSS优先级)
                                            //注意,此法属性原格式(text-align)获取的,故要转换一下
                                            attr = attr.replace(/([A-Z])/g, '-$1').toLowerCase();
                                            //获取样式对象并获取属性值
                                            return document.defaultView.getComputedStyle(elem, null).getPropertyValue(attr);
                                        } else {
                                            return null;
                                            s
                                        }
                                    }

                                    function GetCropImgUrl() {
                                        //var img = jQuery("#hidPicUrl").val();
                                        var img = $.cookie("avatar_cropimage");
                                        var jsonData = "{ img:'" + img + "' }";
                                        if (img && img != "null") {
                                            clearTimeout(CropTimeout);
                                            $.cookie("avatar_cropimage", null, {
                                                "expires": new Date() - 1,
                                                "domain": 'youtx.com',
                                                "path": '/'
                                            });
                                            //ajax更新头像的方法
                                            jQuery.ajax({
                                                type: "POST",
                                                contentType: "application/json;charset=utf-8",
                                                url: "/Profile/Passport/AvatarInfo.aspx/UpdateUserIcon",
                                                data: jsonData,
                                                dataType: "json",
                                                success: function (result) {     //回调函数，result，返回值
                                                    if (result.d == "SUCCESS") {

                                                        //jQuery('#ctl00_left_imgIcon').attr("src", img);
                                                        $.ajax({
                                                            url: "/profile/Passport/Interface/UploadIcon.aspx",
                                                            type: "POST",
                                                            data: "imgurl=" + img,
                                                            success: function (data, textStatus, jqXHR) {
                                                                if (data == "success") {
                                                                    alert("头像保存成功!");
                                                                    jQuery('#imgIcon').attr("src", img);
                                                                    myCookie.deleteCookie("avatar_cropimage");
                                                                } else {
                                                                    alert("头像保存失败，请重新尝试");
                                                                }
                                                                // that.closeImgDiv();
                                                            },
                                                            error: function (jqXHR, textStatus, errorThrown) {
                                                                if (errorThrown == "Unknown") {
                                                                    alert("头像保存过程中发生了未知原因的错误");
                                                                } else {
                                                                    alert(errorThrown);
                                                                }
                                                                // that.closeImgDiv();
                                                            }
                                                        });

                                                    } else {
                                                        alert(result.d);
                                                    }
                                                    //                        jQuery("#cutPic").jqmHide();
                                                    //                        jQuery("#UserHeadePic").hide();
                                                    jQuery("#UserHeadePic").css({
                                                        "top": "-9999px",
                                                        "position": "absolute"
                                                    });
                                                },
                                                error: function (ex) {
                                                    alert("error");
                                                }
                                            });
                                        }
                                        else {
                                            setTimeout(function () {
                                                GetCropImgUrl();
                                            }, 500);
                                        }
                                    }
                                </script>
                                <!--正在上传 start-->
                                <!--正在上传 end-->
                            </div>
                        </div>
                    </div>
                </div>
                <!--修改头像 end-->

            </div>
            <!--内容右 end-->
            <script>
                var $ID = function (id) {
                    return document.getElementById(id);
                }

                function moreBoxto(numcss1020) {
                    for (j = 0; j < 10; j++) {
                        if ($ID('moreBox' + j)) {
                            $ID('moreBox' + j).style.display = 'none';

                        }
                    }
                    $ID('moreBox' + numcss1020).style.display = 'block';
                }

                function hidden_moreBoxto(numcss1020) {
                    timeout = setTimeout(function () {
                        $ID("moreBox" + numcss1020).style.display = "none";
                    }, 100);
                }

                function show_moreBoxto(numcss1020) {
                    window.clearTimeout(timeout);
                    $ID("moreBox" + numcss1020).style.display = "";
                }</script>

            <script language="javascript" type="text/javascript">

                //			    jQuery(document).ready(function () {
                //			        jQuery("#showMess").jqm({ modal: true, overlay: 0 });
                //			        jQuery("#sureDelMess").jqm({ modal: true, overlay: 0 });
                //			        jQuery("#tipMessage").jqm({ modal: true, overlay: 0 });
                //			    });
                //提示窗口
                function ShowAlert(msgclass, msg) {
                    jQuery('#msgClass').attr("class", msgclass);
                    jQuery('#showMess h2').html(msg);
                    jQuery('#showMess h1').html(msg);
                    if (msgclass.Contain("icon_crySF2")) {
                        var h = jQuery('#showMess h2');
                        h.replaceWith('<h1 style="text-align:left">' + msg + '</h1>');
                    } else {
                        var h = jQuery('#showMess h1');
                        h.replaceWith('<h2 style="text-align:left">' + msg + '</h2>');
                    }
                    jQuery('#showMess').show();
                    window.setTimeout(function () {
                        jQuery('#showMess').hide()
                    }, 1000);
                }

                //提示窗口
                function ShowMessage(msg) {
                    jQuery('#textValue').html(msg);
                    jQuery('#tipMessage').show();
                }

                //隐藏层
                jQuery("#divHide").click(function () {
                    jQuery('#tipMessage').hide();
                });</script>

        </div>
        <!--内容 end-->
    </div>
    <div class="clear"></div>


    <!--尾部2011-9-6修改 start-->
    <div class="footer">
        <dl class="FooterCity clearfix" style="border:none;margin-bottom:-8px;">
            <dd class="footer_link_grey">热门城市：</dd>
            <dt><a href="http://www.youtx.com/beijing/" target="_blank">北京短租房</a>|<a
                    href="http://www.youtx.com/shanghai/" target="_blank">上海短租房</a>|<a
                    href="http://www.youtx.com/guangzhou/" target="_blank">广州短租房</a>|<a
                    href="http://www.youtx.com/shenzhen/" target="_blank">深圳短租房</a>|<a
                    href="http://www.youtx.com/hongkong/" target="_blank">香港短租房</a>|<a
                    href="http://www.youtx.com/sanya/" target="_blank">三亚短租房</a>|<a href="http://www.youtx.com/suzhou/"
                                                                                    target="_blank">苏州短租房</a>|<a
                    href="http://www.youtx.com/hangzhou/" target="_blank">杭州短租房</a>|<a
                    href="http://www.youtx.com/nanjing/" target="_blank">南京短租房</a>|<a href="http://www.youtx.com/xian/"
                                                                                      target="_blank">西安短租房</a>|<a
                    href="http://www.youtx.com/dalian/" target="_blank">大连短租房</a>|<a
                    href="http://www.youtx.com/qingdao/" target="_blank">青岛短租房</a>|<a
                    href="http://www.youtx.com/chongqing/" target="_blank">重庆短租房</a> <a
                    href="http://www.youtx.com/chengdu/" target="_blank">成都短租房</a>|<a href="http://www.youtx.com/wuhan/"
                                                                                      target="_blank">武汉短租房</a>|<a
                    href="http://www.youtx.com/tianjin/" target="_blank">天津短租房</a>|<a
                    href="http://www.youtx.com/kunming/" target="_blank">昆明短租房</a>|<a
                    href="http://www.youtx.com/lijiang/" target="_blank">丽江短租房</a>|<a
                    href="http://www.youtx.com/xiamen/" target="_blank">厦门短租房</a>|<a href="http://www.youtx.com/lasa/"
                                                                                     target="_blank">拉萨短租房</a>|<a
                    href="http://www.youtx.com/zhengzhou/" target="_blank">郑州短租房</a>|<a
                    href="http://www.youtx.com/changsha/" target="_blank">长沙短租房</a>|<a
                    href="http://www.youtx.com/changchun/" target="_blank">长春短租房</a>|<a
                    href="http://www.youtx.com/shenyang/" target="_blank">沈阳短租房</a>|<a
                    href="http://www.youtx.com/cities/" target="_blank">更多城市..</a>|<a
                    href="http://www.youtx.com/locations/" target="_blank">更多地标...</a></dt>
        </dl>

        <dl class="FooterCity FooterCity02 clearfix">
            <!--<dd class="footer_link_grey">国外城市：</dd>
            <dt>
                <span><a href="http://www.youtx.com/chicago/" target="_blank">芝加哥住宿</a>|</span>
                <span><a href="http://www.youtx.com/hawaii/" target="_blank">夏威夷住宿</a>|</span>
                <span><a href="http://www.youtx.com/singapore/" target="_blank">新加坡住宿</a>|</span><span><a href="http://www.youtx.com/paris/" target="_blank">巴黎住宿</a>|</span><span><a href="http://www.youtx.com/roma/" target="_blank">罗马住宿</a>|</span><span><a href="http://www.youtx.com/milan/" target="_blank">米兰住宿</a>|</span><span><a href="http://www.youtx.com/venice/" target="_blank">威尼斯住宿</a>|</span><span><a href="http://www.youtx.com/madrid/" target="_blank">马德里住宿</a>|</span><span><a href="http://www.youtx.com/barcelona/" target="_blank">巴塞罗那住宿</a>|</span><span><a href="http://www.youtx.com/london/" target="_blank">伦敦住宿</a>|</span><span><a href="http://www.youtx.com/losangeles/" target="_blank">洛杉矶住宿</a>|</span><span><a href="http://www.youtx.com/newyork/" target="_blank">纽约住宿</a>|</span><span><a href="http://www.youtx.com/lasvegas/" target="_blank">拉斯维加斯住宿</a>|</span><span><a href="http://www.youtx.com/phuket/" target="_blank">普吉岛住宿</a>|</span><span><a href="http://www.youtx.com/bali/" target="_blank">巴厘岛住宿</a>|</span><span><a href="http://www.youtx.com/maldives/" target="_blank">马尔代夫住宿</a>|</span><span><a href="http://www.youtx.com/Sabah/" target="_blank">沙巴住宿</a></span>
            </dt>-->
            <dd class="footer_link_grey">热门别墅：</dd>
            <dt>
                <span><a href="http://www.youtx.com/beijing/htype2/" target="_blank">北京日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/shanghai/htype2/" target="_blank">上海日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/guangzhou/htype2/" target="_blank">广州日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/shenzhen/htype2/" target="_blank">深圳日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/tianjin/htype2/" target="_blank">天津日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/nanjing/htype2/" target="_blank">南京日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/hangzhou/htype2/" target="_blank">杭州日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/suzhou/htype2/" target="_blank">苏州日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/chongqing/htype2/" target="_blank">重庆日租别墅</a>|</span>

                <span><a href="http://www.youtx.com/qingdao/htype2/" target="_blank">青岛日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/chengdu/htype2/" target="_blank">成都日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/xiamen/htype2/" target="_blank">厦门日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/sanya/htype2/" target="_blank">三亚日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/wuhan/htype2/" target="_blank">武汉日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/dalian/htype2/" target="_blank">大连日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/xian/htype2/" target="_blank">西安日租别墅</a>|</span>

                <span><a href="http://www.youtx.com/qinhuangdao/htype2/" target="_blank">秦皇岛日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/changsha/htype2/" target="_blank">长沙日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/shenyang/htype2/" target="_blank">沈阳日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/hefei/htype2/" target="_blank">合肥日租别墅</a>|</span>
                <span><a href="http://www.youtx.com/zhengzhou/htype2/" target="_blank">郑州日租别墅</a></span>

            </dt>
        </dl>
    </div>


    <ul class="footer_link">
        <li><a href="http://www.youtx.com/help/about/" target="_blank" rel="nofollow">关于我们</a></li>
        <li class="footer_link_space">|</li>
        <li><a href="http://www.youtx.com/help/contact/" target="_blank" rel="nofollow">联系我们</a></li>
        <li class="footer_link_space">|</li>
        <li><a href="http://www.youtx.com/help/jobs/" target="_blank" rel="nofollow">招聘</a></li>
        <li class="footer_link_space">|</li>
        <li><a href="http://www.youtx.com/help/service/" target="_blank" rel="nofollow">服务协议</a></li>
        <li class="footer_link_space">|</li>
        <li><a href="http://www.youtx.com/feedback/" target="_blank" rel="nofollow" id="youtx_34">意见反馈</a></li>
        <li class="footer_link_space">|</li>
        <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span>
            <img src="${base}/static/updateHeadImage/at.jpg"> <span>youtx.com</span></li>
    </ul>
    <ul class="footer_link02">
        <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a>
            | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a
                    href="http://www.youtx.com/star/" target="_blank" rel="nofollow">明星房东</a> | <a
                    href="http://www.youtx.com/" target="_blank">日租房</a> | <a href="http://blog.youtx.com/"
                                                                              target="_blank" rel="nofollow">博客</a> | <a
                    href="http://www.youtx.com/jifen/exchange/" target="_blank" rel="nofollow">积分换礼</a> |
        </li>
        <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
        <li class="footer_share" id="youtx_31"><a href="http://weibo.com/youtxcom" class="isina" target="_blank"
                                                  rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu"
                                                                         target="_blank" rel="nofollow"></a><a
                href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a
                href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a
                href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a
                href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>
    <ul class="FooterNet">
        <li class="FontArial02">Copyright © 2017 Youtx.com, All Rights Reserved<br>
            <a href="http://js.youtx.com/icp.jpg" target="_blank" rel="nofollow" style="font-family:&#39;宋体&#39;">京ICP证041065号</a>
            <span style="font-family:&#39;宋体&#39;">京公网安备11010602010093号-2</span></li>
        <li><a target="_blank"
               href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN"
               rel="nofollow"><img src="${base}/static/updateHeadImage/VerisignYoutx.gif" height="35" width="60"></a>
        </li>
        <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img
                src="${base}/static/updateHeadImage/FooterNetPic.gif"></a></li>
        <li><a target="_blank"
               href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891"
               rel="nofollow"><img src="${base}/static/updateHeadImage/TrustYoutx.gif" width="100" height="35px"></a>
        </li>
    </ul>
</div>
<!--2013-6-26修改-->
<script type="text/javascript">
    $(document).ready(function () {
        var a = $(".NewSubNavCur");
        if (a && a.text() == "我是房东") {
            $('body').append('<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="http://js.youtx.com/images/FeedBackClose.gif"></div><a class="feedbackA1" href="/feedback/" target="_blank">意见反馈</a><a href="javascript:void(0)" target="_blank"><img width="95" height="95" src="http://js.youtx.com/images/bservice.jpg"></a><a class="feedbackA2" href="javascript:void(0)" target="_blank">游天下房东服务号</br>微信扫一扫</a></div></div>');
        } else {
            $('body').append('<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="http://js.youtx.com/images/FeedBackClose.gif"></div><a class="feedbackA1" href="/feedback/" target="_blank">意见反馈</a><a href="/mo/" target="_blank"><img src="http://js.youtx.com/images/default/ewm.png?v=1"></a><a class="feedbackA2" href="/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div>');
        }
        $(".FeedBackColse").click(function () {
            $(".feedbackbox").hide();
        })
    });
</script>
<!--2013-6-26修改-结束-->
<div style="width:0px;height:0px;overflow:hidden;display:none">
    <!--<script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd6a1c2e211265084b7d12bfc8636a282' type='text/javascript'%3E%3C/script%3E"));
    </script>-->

    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Feb4b7b326a601c545c14e8b6b965e4a0' type='text/javascript'%3E%3C/script%3E"));
    </script>
    <script src="${base}/static/updateHeadImage/h.js" type="text/javascript"></script>
    <a href="http://tongji.baidu.com/hm-web/welcome/ico?s=eb4b7b326a601c545c14e8b6b965e4a0" target="_blank"><img
            border="0" src="${base}/static/updateHeadImage/21.gif" width="20" height="20"></a>

    <script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 960478029;
        var google_conversion_language = "en";
        var google_conversion_format = "3";
        var google_conversion_color = "ffffff";
        var google_conversion_label = "yFTtCPvC6gMQzfb-yQM";
        var google_conversion_value = 0;
        /* ]]> */
    </script>
    <script type="text/javascript" src="${base}/static/updateHeadImage/conversion.js">
    </script>
    <noscript>
        &lt;div style="display:inline;"&gt;
        &lt;img height="1" width="1" style="border-style:none;" alt=""
        src="http://www.googleadservices.com/pagead/conversion/960478029/?value=0&amp;amp;label=yFTtCPvC6gMQzfb-yQM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
        &lt;/div&gt;
    </noscript>

    <script type="text/javascript">
        var bd_cpro_rtid = "nWnknWD";
    </script>
    <script type="text/javascript" src="${base}/static/updateHeadImage/rt.js"></script>
    <noscript>
        &lt;div style="display:none;"&gt;
        &lt;img height="0" width="0" style="border-style:none;" src="http://eclick.baidu.com/rt.jpg?t=noscript&amp;rtid=nWnknWD"
        /&gt;
        &lt;/div&gt;
    </noscript>
</div>
<!-- ClickTale Bottom part -->
<div id="ClickTaleDiv" style="display: none;"></div>
<script src="${base}/static/updateHeadImage/clicktale.js" type="text/javascript"></script>
<script src="http://s.clicktale.net/WRd.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof ClickTale == 'function') ClickTale(12600, 0.0005, "www14");
</script>
<!-- ClickTale end of Bottom part -->
<script src="${base}/static/updateHeadImage/Youtx_WebIM_HTML.js" type="text/javascript"></script>
<script src="${base}/static/updateHeadImage/youtx_mi_query.js" type="text/javascript"></script>
<script src="${base}/static/updateHeadImage/WebIM.js" type="text/javascript"></script>
<script src="${base}/static/updateHeadImage/WebIM.Query.js" type="text/javascript"></script>

<!--尾部2011-9-6修改 end-->


<div id="feedbackbox" class="feedbackbox">
    <div class="feedback">
        <div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭"
                                           src="${base}/static/updateHeadImage/FeedBackClose.gif"></div>
        <a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a
            href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/updateHeadImage/ewm.png"></a><a
            class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div>
</div>
<div id="TalkBox_Youtx_ID" class="TalkBox" style="display: none;">
    <div class="Talk  PosRe" id="Talk">
        <div class="UserMenu" id="UserBox">
            <div class="UserMain" id="UserM" style="cursor: move;">
                <ul class="TabHeader" id="UserNr" style="top:0px;"></ul>
            </div>
            <div class="UserScroll" id="UserScroll" style="display: none;"><span class="UserBar" id="UserBar"
                                                                                 style="display:block; top:0px;"></span>
            </div>
        </div>
        <div class="Talk_center"><span class="DownArrow" style="display:none;"><img
                src="${base}/static/updateHeadImage/dowearrow.gif" width="16" height="16"></span>
            <ul class="Yichu" style="display:none;"></ul>
            <div id="TalkBox_Youtx_ID_s" style=" width:480px;height:26px; cursor: move;"><span
                    class="RentName"></span><span class="Chat_min"><img src="${base}/static/updateHeadImage/SIcon.png"
                                                                        width="25" height="25"></span></div>
            <div class="clear"></div>
            <div id="youtx_ch_webim"></div>
        </div>
        <div class="Talk_right"></div>
        <div class="HouseRe PosAb" style="display:none;"></div>
    </div>
</div>
<div style="display:none;">
    <ul id="youtx_none_li"></ul>
    <div id="youtx_none_div"></div>
</div>
<div id="house_webim_s" style="display:none;"></div>
<div id="soundContainer" style=" width:10px; height:10px ;">
    <embed id="soundplayer" name="soundplayer" allowscriptaccess="always" wmode="window"
           src="http://js.youtx.com/profile/message.swf" loop="false" menu="false" quality="high" align="middle"
           allowfullscreen="true" width="0" height="0" flashvars="" type="application/x-shockwave-flash"
           pluginspage="http://www.macromedia.com/go/getflashplayer">
</div>
<div id="OutBox" class="OutBox" style="top: 299.5px; left: 674.5px;">
    <div class="OutBoxbg" id="OutBoxbg"></div>
    <a href="http://www.youtx.com/Avatar/javascript;;" class="CloseBtn" id="CloseBtn"></a><img id="OutBoxPic"
                                                                                               class="OutBoxPic" src=""
                                                                                               style="top: 0px;"></div>
<div class="ChatSmall">
    <div>
        <ul id="ChatSmallUl">
            <li id="ChatMes" class="ChatMes">短消息（0）</li>
        </ul>
        <div class="ChatMes_C_T"><h2><span class="Mes_h2">短消息</span><span class="Mes_min" title="最小化"></span></h2>
            <p class="All_mes"><a target="blank"
                                  href="http://www.youtx.com/profile/User/MailBox/MyMailBox.aspx?type=All">查看全部历史消息&gt;&gt;</a>
            </p>
            <ul class="Mes_main" id="IDUlMes_main"></ul>
        </div>
    </div>
</div>
</body>
</html>