<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!-- saved from url=(0030)http://www.youtx.com/shanghai/ -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head><#assign base=request.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${base}/static/find_place/style1503546983737.css">
    <style type="text/css">.amap-indoor-map .label-canvas {
        position: absolute;
        top: 0;
        left: 0
    }

    .amap-indoor-map .highlight-image-con * {
        pointer-events: none
    }

    .amap-indoormap-floorbar-control {
        position: absolute;
        margin: auto 0;
        bottom: 165px;
        right: 12px;
        width: 35px;
        text-align: center;
        line-height: 1.3em;
        overflow: hidden;
        padding: 0 2px
    }

    .amap-indoormap-floorbar-control .panel-box {
        background-color: rgba(255, 255, 255, .9);
        border-radius: 3px;
        border: 1px solid #ccc
    }

    .amap-indoormap-floorbar-control .select-dock {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        box-sizing: border-box;
        height: 30px;
        border: solid #4196ff;
        border-width: 0 2px;
        border-radius: 2px;
        pointer-events: none;
        background: linear-gradient(to bottom, #f6f8f9 0, #e5ebee 50%, #d7dee3 51%, #f5f7f9 100%)
    }

    .amap-indoor-map .transition {
        transition: opacity .2s
    }

    ,
    .amap-indoormap-floorbar-control .transition {
        transition: top .2s, margin-top .2s
    }

    .amap-indoormap-floorbar-control .select-dock:after, .amap-indoormap-floorbar-control .select-dock:before {
        content: "";
        position: absolute;
        width: 0;
        height: 0;
        left: 0;
        top: 10px;
        border: solid transparent;
        border-width: 4px;
        border-left-color: #4196ff
    }

    .amap-indoormap-floorbar-control .select-dock:after {
        right: 0;
        left: auto;
        border-left-color: transparent;
        border-right-color: #4196ff
    }

    .amap-indoormap-floorbar-control.is-mobile {
        width: 37px
    }

    .amap-indoormap-floorbar-control.is-mobile .floor-btn {
        height: 35px;
        line-height: 35px
    }

    .amap-indoormap-floorbar-control.is-mobile .select-dock {
        height: 35px;
        top: 36px
    }

    .amap-indoormap-floorbar-control.is-mobile .select-dock:after, .amap-indoormap-floorbar-control.is-mobile .select-dock:before {
        top: 13px
    }

    .amap-indoormap-floorbar-control.is-mobile .floor-list-box {
        height: 105px
    }

    .amap-indoormap-floorbar-control .floor-list-item .floor-btn {
        color: #555;
        font-family: "Times New Roman", sans-serif, "Microsoft Yahei";
        font-size: 16px
    }

    .amap-indoormap-floorbar-control .floor-list-item.selected .floor-btn {
        color: #000
    }

    .amap-indoormap-floorbar-control .floor-btn {
        height: 28px;
        line-height: 28px;
        overflow: hidden;
        cursor: pointer;
        position: relative;
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none
    }

    .amap-indoormap-floorbar-control .floor-btn:hover {
        background-color: rgba(221, 221, 221, .4)
    }

    .amap-indoormap-floorbar-control .floor-minus, .amap-indoormap-floorbar-control .floor-plus {
        position: relative;
        text-indent: -1000em
    }

    .amap-indoormap-floorbar-control .floor-minus:after, .amap-indoormap-floorbar-control .floor-plus:after {
        content: "";
        position: absolute;
        margin: auto;
        top: 9px;
        left: 0;
        right: 0;
        width: 0;
        height: 0;
        border: solid transparent;
        border-width: 10px 8px;
        border-top-color: #777
    }

    .amap-indoormap-floorbar-control .floor-minus.disabled, .amap-indoormap-floorbar-control .floor-plus.disabled {
        opacity: .3
    }

    .amap-indoormap-floorbar-control .floor-plus:after {
        border-bottom-color: #777;
        border-top-color: transparent;
        top: -3px
    }

    .amap-indoormap-floorbar-control .floor-list-box {
        max-height: 153px;
        position: relative;
        overflow-y: hidden
    }

    .amap-indoormap-floorbar-control .floor-list {
        margin: 0;
        padding: 0;
        list-style: none
    }

    .amap-indoormap-floorbar-control .floor-list-item {
        position: relative
    }

    .amap-indoormap-floorbar-control .floor-btn.disabled, .amap-indoormap-floorbar-control .floor-btn.disabled *, .amap-indoormap-floorbar-control.with-indrm-loader * {
        -webkit-pointer-events: none !important;
        pointer-events: none !important
    }

    .amap-indoormap-floorbar-control .with-indrm-loader .floor-nonas {
        opacity: .5
    }

    .amap-indoor-map-moverf-marker {
        color: #555;
        background-color: #FFFEEF;
        border: 1px solid #7E7E7E;
        padding: 3px 6px;
        font-size: 12px;
        white-space: nowrap;
        display: inline-block;
        position: absolute;
        top: 1em;
        left: 1.2em
    }

    .amap-indoormap-floorbar-control .amap-indrm-loader {
        -moz-animation: amap-indrm-loader 1.25s infinite linear;
        -webkit-animation: amap-indrm-loader 1.25s infinite linear;
        animation: amap-indrm-loader 1.25s infinite linear;
        border: 2px solid #91A3D8;
        border-right-color: transparent;
        box-sizing: border-box;
        display: inline-block;
        overflow: hidden;
        text-indent: -9999px;
        width: 13px;
        height: 13px;
        border-radius: 7px;
        position: absolute;
        margin: auto;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0
    }

    @-moz-keyframes amap-indrm-loader {
        0% {
            -moz-transform: rotate(0);
            transform: rotate(0)
        }
        100% {
            -moz-transform: rotate(360deg);
            transform: rotate(360deg)
        }
    }

    @-webkit-keyframes amap-indrm-loader {
        0% {
            -webkit-transform: rotate(0);
            transform: rotate(0)
        }
        100% {
            -webkit-transform: rotate(360deg);
            transform: rotate(360deg)
        }
    }

    @keyframes amap-indrm-loader {
        0% {
            -moz-transform: rotate(0);
            -ms-transform: rotate(0);
            -webkit-transform: rotate(0);
            transform: rotate(0)
        }
        100% {
            -moz-transform: rotate(360deg);
            -ms-transform: rotate(360deg);
            -webkit-transform: rotate(360deg);
            transform: rotate(360deg)
        }
    }</style>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <img src="${base}/static/find_place/countpv" width="0" height="0"><img src="${base}/static/find_place/default.ashx"
                                                                           width="0" height="0">
    <script type="text/javascript" async="" src="${base}/static/find_place/load.min.js.下载"></script>
    <script type="text/javascript" src="${base}/static/find_place/jquery-1.7.1.min.js.下载"></script>

    <script type="text/javascript" src="${base}/static/find_place/jQuery.cookie.js.下载"></script>
    <script type="text/javascript" src="${base}/static/find_place/default_login2016.js.下载"></script>
    <link rel="stylesheet" href="${base}/static/find_place/youtxpublic2016.css">


    <!--[if IE 6]>
    <script type="text/javascript" src="http://js.youtx.com/publish/scripts/LoadPNG.js?v=201710191200"></script>
    <script type="text/javascript">window.attachEvent('onload', function () {
        DD_belatedPNG.fix('*');
    });</script>

    <script type="text/javascript">
        //2014-11-11修改
        $(function () {
            $(".houseTitleDec").each(function () {
                var oTitleDec = $(this).width();
                if (oTitleDec >= 358) {
                    $(this).css("width", "358" + 'px');
                }
            })
        })
        //2014-11-11修改-结束
    </script>

    <![endif]-->

    <title>上海短租房,上海日租房,上海短租公寓-游天下上海短租站</title>
    <meta name="keywords" content="上海短租,上海短租房,上海日租,上海日租房,上海短租公寓,上海家庭旅馆">
    <meta name="description" content="游天下上海短租站，每天发布大量上海短租房、上海日租房、上海短租公寓信息。所有短租房源信息专人验真，是最可靠的上海短租房平台。">

    <link href="${base}/static/find_place/list2016_2014css.css" rel="stylesheet" type="text/css">

    <script src="${base}/static/find_place/UserAttention.js.下载" type="text/javascript"></script>

    <script src="${base}/static/find_place/uaredirect.js.下载" type="text/javascript"></script>
    <script type="text/javascript">
        uaredirect("http://m.youtx.com/Wap_shanghai/");
    </script>

    <script type="text/javascript">
        $(function () {
            var date_num = 1;
            switch (date_num) {
                case 1:
                    $(".PriceBox").css({width: "65px"});
                    /*1天*/
                    break;
                case 2:
                    $(".PriceBox").css({width: "130px"});
                    /*2天*/
                    break;
                case 3:
                    $(".PriceBox").css({width: "195px"});
                    /*3天*/
                    break;
                case 4:
                    $(".PriceBox").css({width: "260px"});
                    /*4天*/
                    break;
                case 5:
                    $(".PriceBox").css({width: "325px"});
                    /*5天*/
                    break;
                case 6:
                    $(".PriceBox").css({width: "390px"});
                    /*6天*/
                    break;
                default:
                    $(".PriceBox").css({width: "455px"}); /* 7<=date_num*/
            }
        });

    </script>

    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="mobile-agent" content="format=html5; url=http://m.youtx.com/Wap_shanghai/">

    <!--2016start-->
    <script type="text/javascript" src="static/find_place/jquery-1.8.3.js.下载"></script>
    <link rel="stylesheet" href="${base}/static/find_place/list2016_css.css">
    <!--2016end-->

    <!--new calendar start-->

    <script type="text/javascript" src="${base}/static/find_place/list2016_calendar_head.js.下载"></script>
    <!--new calendar end-->

    <style type="text/css">.amap-container {
        cursor: url(http://webapi.amap.com/theme/v1.3/openhand.cur), default;
    }

    .amap-drag {
        cursor: url(http://webapi.amap.com/theme/v1.3/closedhand.cur), default;
    }</style>
</head>
<body>

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
</script>

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


<!--头部start-->


<script type="text/javascript">
    var WRInitTime = (new Date()).getTime();
</script>

<div class="header clearfix">
    <a id="youtx_C01_01" class="youtxLogo" href="http://www.youtx.com/"><img
            src="${base}/static/find_place/youtxLogo.png" width="118" height="62" alt="游天下logo"></a>
    <ul class="headerNav clearfix" id="headerNav" style="width:580px;">
        <li class="active"><a id="youtx_C01_02" href="http://www.youtx.com/" target="_blank">首页</a></li>
        <li><a id="youtx_C01_03" href="http://www.youtx.com/midlong/" target="_blank">周租月租</a></li>
        <li><a id="youtx_C01_15" href="http://www.youtx.com/list/htype2/" target="_blank">聚会别墅</a></li>
        <!--<li><a id="youtx_C01_04" href="http://zu.fang.com/" target="_blank">长租房</a></li>-->
        <li><a id="youtx_C01_05" href="http://mall.youtx.com/" target="_blank">品牌店铺</a></li>
        <li class="NavDownLi"><a id="youtx_C01_06" href="http://guide.youtx.com/" target="_blank"
                                 class="NavDownTrigger">目的地专家</a>
            <dl class="NavMenu">
                <dd><a href="http://ask.youtx.com/" target="_blank">问答</a></dd>
                <dd><a href="http://guidebook.youtx.com/" target="_blank">攻略</a></dd>
                <!--<dd><a href="http://activity.youtx.com/" target="_blank">结伴</a></dd>-->
                <dd><a href="http://www.youtx.com/jingdian/" target="_blank">景点</a></dd>
            </dl>
        </li>

        <li class="curBg"></li>

    </ul>

    <a id=" youtx_C01_16" href="http://www.youtx.com/profile/BookingTeam" target="_blank" class="freePublish">我要求租</a>
    <a id="youtx_C01_11" href="${base}/userCenter/jumpAddRoom" target="_blank" class="freePublish">发布房间</a>
    <!--头 已登录 start-->
<#if user!=null>
    <ul class="headerLogin clearfix" style="" id="youtxlogin587">
        <li class="dropDownLi has_msg">
            <a href="${base}/userCenter/jumpPage" target="_blank" class="dropDownTrigger" id="NameA">${user.userNickname}<img
                    src="${base}/static/find_place/yello_dotnew.png" alt="" class="yello_dot"></a>
            <dl class="TopullDown">
                <dd><a href="http://www.youtx.com/User/MyMailBox/" id="MsgNumA" target="_self"><span>消息</span> <span
                        class="hp_ics">(2)</span></a></dd>
                <dd><a href="http://www.youtx.com/User/MyWealth/" target="_self">我的积分</a></dd>
                <dd><a href="http://www.youtx.com/user/remind" target="_self">账户管理</a></dd>
                <dd><a href="${base}/user/lols" target="_self">退出</a></dd>
            </dl>

        </li>
        <li class="dropDownLi">
            <a href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx" class="dropDownTrigger"
               id="MyZuKe">我是租客</a>
            <dl class="TopullDown">
                <dd><a href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx" target="_self"
                       id="MyOrders"><span>我的订单</span></a></dd>
                <!--<dd><a href="/User/MyMailBox/" target="_self">消息</a></dd>-->
                <dd><a href="http://www.youtx.com/payment/User/MyCollection/Collection.aspx" target="_self">收藏夹</a></dd>
            </dl>
        </li>
        <li class="dropDownLi" style="border: 1px solid rgb(255, 255, 255);">
            <a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx" class="dropDownTrigger"
               id="MyFangDong" style="background-position: right 12px;">我是房东</a>
            <dl class="TopullDown" style="display: none;">
                <dd><a href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx"
                       id="Ordermanage"><span>我的订单</span></a></dd>
                <dd><a href="http://www.youtx.com/mallshop/mallabout/">我要开店</a></dd>
                <dd><a href="http://www.youtx.com/room/new/">发布房间</a></dd>
                <dd><a href="http://www.youtx.com/publish/DateMnage/">排期管理</a></dd>
                <dd><a href="http://www.youtx.com/User/Myroom/">房源管理</a></dd>
                <!--<dd> <a href="http://bang.youtx.com/DateManage/DateManage.aspx">我的短租帮</a></dd>-->
            </dl>
        </li>
        <li class="dropDownLi">
            <a href="javascript:;" class="dropDownTrigger" id="LiHelp">帮助</a>
            <dl class="TopullDown">
                <dd><a href="http://www.youtx.com/help/Manage/">房东指南</a></dd>
                <dd><a href="http://www.youtx.com/help/serchroom/">租客指南</a></dd>
                <dd><a href="http://www.youtx.com/help/contact/">联系我们</a></dd>
            </dl>
        </li>
        <li class="dropDownPhone">
            <a href="http://www.youtx.com/shanghai/#" class="dropDownTrigger"></a>
            <div class="TopMobCon">
                <dl>
                    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a target="_blank" href="http://www.youtx.com/mo/"><img width="120" height="120"
                                                                                src="${base}/static/find_place/youtxapp.png"></a>
                    </dd>
                </dl>
                <dl>
                    <dt><span class="colorLkBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img width="102" height="102" src="${base}/static/find_place/ewmBNew.jpg"></dd>
                    <dd>微信号：游天下短租</dd>
                </dl>
                <dl style="border: none;">
                    <dt>手机浏览器访问游天下</dt>
                    <dd style="margin-top: 45px;"><a class="mbUrl" target="_blank" href="http://m.youtx.com/">m.YouTX.com</a>
                    </dd>
                </dl>
            </div>
        </li>
    </ul>
<#else>
    <!--头 已登录 end-->

    <!--头 未登录 start-->
    <ul class="headerLogin clearfix" id="youtxloginw" style="display: none;">
        <li class="dropDownLino"><a id="youtx_C01_07" href="https://passport.youtx.com/profile/passport/regist.aspx">注册就送100元</a>
        </li>

        <li class="dropDownLino" style="padding-right:15px;"><a id="youtx_C01_08"
                                                                href="${base}/user/lo">登录</a>
        </li>


        <li class="dropDownLi"><a id="youtx_C01_09" href="http://www.youtx.com/help/" class="dropDownTrigger">帮助</a>
            <dl class="TopullDown">
                <dd><a href="http://www.youtx.com/help/Manage/">房东指南</a></dd>
                <dd><a href="http://www.youtx.com/help/serchroom/">租客指南</a></dd>
                <dd><a href="http://www.youtx.com/help/contact/">联系我们</a></dd>
            </dl>
        </li>
        <li class="dropDownPhone">
            <a id="youtx_C01_10" href="http://www.youtx.com/shanghai/#" class="dropDownTrigger"></a>
            <div class="TopMobCon">
                <dl>
                    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a target="_blank" href="http://www.youtx.com/mo/"><img width="120" height="120"
                                                                                src="${base}/static/find_place/youtxapp.png"></a>
                    </dd>
                </dl>
                <dl>
                    <dt><span class="colorLkBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img width="102" height="102" src="${base}/static/find_place/ewmBNew.jpg"></dd>
                    <dd>微信号：游天下短租</dd>
                </dl>
                <dl style="border: none;">
                    <dt>手机浏览器访问游天下</dt>
                    <dd style="margin-top: 45px;"><a class="mbUrl" target="_blank" href="http://m.youtx.com/">m.YouTX.com</a>
                    </dd>
                </dl>
            </div>
        </li>
    </ul>
</#if>
    <!--头 未登录 end-->
</div>
<!--头部end-->
<script type="text/javascript" src="${base}/static/find_place/youtxindex2016.js.下载"></script>

<div class="wrap">
    <div class="content">

        <!--通栏广告start-->
        <div id="youtxlist_B02_07" class="addbox"><a href="http://www.youtx.com/pcTopic/festival-mother520/"
                                                     target="_blank"><img
                src="${base}/static/find_place/002060905700.jpg" width="1180" height="90"></a></div>
        <!--通栏广告end-->

        <!--</div>--><!--<div class="content">-->

        <!-- 快搜区begin -->
        <div class="qSearch">
            <!-- 搜索区begin -->
            <div class="search_rent">

                <a id="submit_location" class="btn_search" style="width:150px;">搜 索</a>
                <dl class="clearfix">
                    <dd class="floatl cityBox" id="youtxlist_B02_01">
                        <input name="txtCity" type="text" id="txtCity" class="inputCity" value="${selectedcity}">
                        <!--热门城市HotCity2014.htm begin-->

                        <div class="Ytxcitybox" id="HotCities" style="display: none;">
                            <div class="YtxcityboxTit" id="YtxcityboxTit">
                                <span class="close" onclick="$(&#39;#HotCities&#39;).hide();"></span>可直接输入地址（城市、景点、商圈等）
                            </div>
                            <div class="citylist" id="citylist">
                                <div class="citylisTab clearfix" id="citylisTab1">
                                    <span class="Cur">热门</span><span>ABCDF</span><span>GHJ</span><span>KLMNPQR</span><span>STW</span><span>XYZ</span>
                                </div>
                                <ul class="citylisTabUl" id="citylistUl">
                                    <li style="display: block">
                                        <dl class="categories clearfix">
                                            <dt class="categoriesTit">国内</dt>
                                            <dd class="categoriesTxt">
                                                <a data="beijing" href="javascript:void(0)">北京</a>
                                                <a data="shanghai" href="javascript:void(0)">上海</a>
                                                <a data="tianjin" href="javascript:void(0)">天津</a>
                                                <a data="chongqing" href="javascript:void(0)">重庆</a>
                                                <a data="qingdao" href="javascript:void(0)">青岛</a>
                                                <a data="dalian" href="javascript:void(0)">大连</a>
                                                <a data="xian" href="javascript:void(0)">西安</a>
                                                <a data="nanjing" href="javascript:void(0)">南京</a>
                                                <a data="hangzhou" href="javascript:void(0)">杭州</a>
                                                <a data="suzhou" href="javascript:void(0)">苏州</a>
                                                <a data="guangzhou" href="javascript:void(0)">广州</a>
                                                <a data="shenzhen" href="javascript:void(0)">深圳</a>
                                                <a data="chengdu" href="javascript:void(0)">成都</a>
                                                <a data="xiamen" href="javascript:void(0)">厦门</a>
                                                <a data="sanya" href="javascript:void(0)">三亚</a>
                                                <a data="hongkong" href="javascript:void(0)">香港</a>
                                                <a data="taibei" href="javascript:void(0)">台北</a>
                                                <a data="shenyang" href="javascript:void(0)">沈阳</a>
                                                <a data="kunming" href="javascript:void(0)">昆明</a>
                                                <a data="wuhan" href="javascript:void(0)">武汉</a>
                                                <a data="dali" href="javascript:void(0)">大理</a>
                                                <a data="jinan" href="javascript:void(0)">济南</a>
                                                <a data="beihai" href="javascript:void(0)">北海</a>
                                                <a data="nanning" href="javascript:void(0)">南宁</a>
                                            </dd>
                                        </dl>

                                        <dl class="categories clearfix">
                                            <dt class="categoriesTit">海外</dt>
                                            <dd class="categoriesTxt">
                                                <a href="http://www.youtx.com/newyork/" target="_blank" data="newyork">纽约</a>
                                                <a href="http://www.youtx.com/losangeles/" target="_blank"
                                                   data="losangeles">洛杉矶</a>
                                                <a href="http://www.youtx.com/paris/" target="_blank"
                                                   data="paris">巴黎</a>
                                                <a href="http://www.youtx.com/milan/" target="_blank"
                                                   data="milan">米兰</a>
                                                <a href="http://www.youtx.com/singapore/" target="_blank"
                                                   data="singapore">新加坡</a>
                                                <a href="http://www.youtx.com/madrid/" target="_blank"
                                                   data="madrid">马德里</a>
                                                <a href="http://www.youtx.com/roma/" target="_blank" data="roma">罗马</a>
                                                <a href="http://www.youtx.com/venice/" target="_blank"
                                                   data="venice">威尼斯</a>
                                                <a href="http://www.youtx.com/barcelona/" target="_blank"
                                                   data="barcelona">巴塞罗那</a>
                                                <a href="http://www.youtx.com/seoul/" target="_blank"
                                                   data="seoul">首尔</a>
                                                <a href="http://www.youtx.com/vancouver/" target="_blank"
                                                   data="vancouver">温哥华</a>
                                                <a href="http://www.youtx.com/toronto/" target="_blank" data="toronto">多伦多</a>
                                                <a href="http://www.youtx.com/bangkok/" target="_blank" data="bangkok">曼谷</a>
                                                <a href="http://www.youtx.com/kualalumpur/" target="_blank"
                                                   data="kualalumpur">吉隆坡</a>
                                            </dd>
                                        </dl>

                                    </li>
                                    <li style="display: none">
                                        <dl class="categories clearfix">
                                            <dd class="categoriesTxt">
                                                <a data="anshan" href="javascript:;">鞍山</a>
                                                <a data="anyang" href="javascript:;">安阳</a>
                                                <a data="beijing" href="javascript:;">北京</a>
                                                <a data="beihai" href="javascript:;">北海</a>
                                                <a data="baoding" href="javascript:;">保定</a>
                                                <a data="baotou" href="javascript:;">包头</a>
                                                <a data="baoshan" href="javascript:;">保山</a>
                                                <a data="chengdu" href="javascript:;">成都</a>
                                                <a data="chongqing" href="javascript:;">重庆</a>
                                                <a data="changsha" href="javascript:;">长沙</a>
                                                <a data="changchun" href="javascript:;">长春</a>
                                                <a data="changzhou" href="javascript:;">常州</a>
                                                <a data="chengde" href="javascript:;">承德</a>
                                                <a data="chizhou" href="javascript:;">池州</a>
                                                <a data="dalian" href="javascript:;">大连</a>
                                                <a data="dali" href="javascript:;">大理</a>
                                                <a data="dandong" href="javascript:;">丹东</a>
                                                <a data="daqing" href="javascript:;">大庆</a>
                                                <a data="datong" href="javascript:;">大同</a>
                                                <a data="daxinganlingdiqu" href="javascript:;">大兴安岭</a>
                                                <a data="diqing" href="javascript:;">迪庆</a>
                                                <a data="dongguan" href="javascript:;">东莞</a>
                                                <a data="foshan" href="javascript:;">佛山</a>
                                                <a data="fuzhou" href="javascript:;">福州</a>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li style="display: none">
                                        <dl class="categories clearfix">
                                            <dd class="categoriesTxt">
                                                <a data="guangzhou" href="javascript:;">广州</a>
                                                <a data="guilin" href="javascript:;">桂林</a>
                                                <a data="guiyang" href="javascript:;">贵阳</a>
                                                <a data="gaoxiong" href="javascript:;">高雄</a>
                                                <a data="ganzi" href="javascript:;">甘孜</a>
                                                <a data="hangzhou" href="javascript:;">杭州</a>
                                                <a data="haerbin" href="javascript:;">哈尔滨</a>
                                                <a data="hefei" href="javascript:;">合肥</a>
                                                <a data="haikou" href="javascript:;">海口</a>
                                                <a data="huhehaote" href="javascript:;">呼和浩特</a>
                                                <a data="handan" href="javascript:;">邯郸</a>
                                                <a data="huludao" href="javascript:;">葫芦岛</a>
                                                <a data="hulunbeier" href="javascript:;">呼伦贝尔</a>
                                                <a data="huangshan" href="javascript:;">黄山</a>
                                                <a data="hualian" href="javascript:;">花莲</a>
                                                <a data="jiaxing" href="javascript:;">嘉兴</a>
                                                <a data="jinan" href="javascript:;">济南</a>
                                                <a data="jinzhong" href="javascript:;">晋中</a>
                                                <a data="jinhua" href="javascript:;">金华</a>
                                                <a data="jiujiang" href="javascript:;">九江</a>
                                                <a data="jiaozuo" href="javascript:;">焦作</a>
                                                <a data="jiuquan" href="javascript:;">酒泉</a>
                                                <a data="jinzhou" href="javascript:;">锦州</a>
                                                <a data="jilinshi" href="javascript:;">吉林</a>
                                                <a data="jian" href="javascript:;">吉安</a>
                                                <a data="jiamusi" href="javascript:;">佳木斯</a>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li style="display: none">
                                        <dl class="categories clearfix">
                                            <dd class="categoriesTxt">
                                                <a data="kunming" href="javascript:;">昆明</a>
                                                <a data="kaifeng" href="javascript:;">开封</a>
                                                <a data="lijiang" href="javascript:;">丽江</a>
                                                <a data="lasa" href="javascript:;">拉萨</a>
                                                <a data="lanzhou" href="javascript:;">兰州</a>
                                                <a data="luoyang" href="javascript:;">洛阳</a>
                                                <a data="langfang" href="javascript:;">廊坊</a>
                                                <a data="leshan" href="javascript:;">乐山</a>
                                                <a data="lianyungang" href="javascript:;">连云港</a>
                                                <a data="liangshan" href="javascript:;">凉山</a>
                                                <a data="linyi" href="javascript:;">临沂</a>
                                                <a data="mianyang" href="javascript:;">绵阳</a>
                                                <a data="mudanjiang" href="javascript:;">牡丹江</a>
                                                <a data="nanjing" href="javascript:;">南京</a>
                                                <a data="ningbo" href="javascript:;">宁波</a>
                                                <a data="nanchang" href="javascript:;">南昌</a>
                                                <a data="nanning" href="javascript:;">南宁</a>
                                                <a data="nanchong" href="javascript:;">南充</a>
                                                <a data="panjin" href="javascript:;">盘锦</a>
                                                <a data="pingdong" href="javascript:;">屏东</a>
                                                <a data="qingdao" href="javascript:;">青岛</a>
                                                <a data="qinhuangdao" href="javascript:;">秦皇岛</a>
                                                <a data="qionghai" href="javascript:;">琼海</a>
                                                <a data="qingyuan" href="javascript:;">清远</a>
                                                <a data="qiandongnan" href="javascript:;">黔东南</a>
                                                <a data="quanzhou" href="javascript:;">泉州</a>
                                                <a data="rizhao" href="javascript:;">日照</a>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li style="display: none">
                                        <dl class="categories clearfix">
                                            <dd class="categoriesTxt">
                                                <a data="shanghai" href="javascript:;">上海</a>
                                                <a data="sanya" href="javascript:;">三亚</a>
                                                <a data="shenzhen" href="javascript:;">深圳</a>
                                                <a data="suzhou" href="javascript:;">苏州</a>
                                                <a data="shenyang" href="javascript:;">沈阳</a>
                                                <a data="shijiazhuang" href="javascript:;">石家庄</a>
                                                <a data="shaoguan" href="javascript:;">韶关</a>
                                                <a data="shangrao" href="javascript:;">上饶</a>
                                                <a data="taibei" href="javascript:;">台北</a>
                                                <a data="taizhong" href="javascript:;">台中</a>
                                                <a data="tianjin" href="javascript:;">天津</a>
                                                <a data="taiyuan" href="javascript:;">太原</a>
                                                <a data="taian" href="javascript:;">泰安</a>
                                                <a data="tangshan" href="javascript:;">唐山</a>
                                                <a data="wuhan" href="javascript:;">武汉</a>
                                                <a data="weihai" href="javascript:;">威海</a>
                                                <a data="wuxi" href="javascript:;">无锡</a>
                                                <a data="wulumuqi" href="javascript:;">乌鲁木齐</a>
                                                <a data="weifang" href="javascript:;">潍坊</a>
                                                <a data="wenzhou" href="javascript:;">温州</a>
                                                <a data="wuhu" href="javascript:;">芜湖</a>
                                                <a data="weinan" href="javascript:;">渭南</a>
                                                <a data="wenchang" href="javascript:;">文昌</a>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li style="display: none">
                                        <dl class="categories clearfix">
                                            <dd class="categoriesTxt">
                                                <a data="xiamen" href="javascript:;">厦门</a>
                                                <a data="xian" href="javascript:;">西安</a>
                                                <a data="xiangxi" href="javascript:;">湘西</a>
                                                <a data="xuzhou" href="javascript:;">徐州</a>
                                                <a data="xining" href="javascript:;">西宁</a>
                                                <a data="hongkong" href="javascript:;">香港</a>
                                                <a data="xianyang" href="javascript:;">咸阳</a>
                                                <a data="xinxiang" href="javascript:;">新乡</a>
                                                <a data="xishuangbanna" href="javascript:;">西双版纳</a>
                                                <a data="yangzhou" href="javascript:;">扬州</a>
                                                <a data="yantai" href="javascript:;">烟台</a>
                                                <a data="yichang" href="javascript:;">宜昌</a>
                                                <a data="yangjiang" href="javascript:;">阳江</a>
                                                <a data="yaan" href="javascript:;">雅安</a>
                                                <a data="yanbianchaoxianzuzizhizhou" href="javascript:;">延边</a>
                                                <a data="yingkou" href="javascript:;">营口</a>
                                                <a data="yuxi" href="javascript:;">玉溪</a>
                                                <a data="zhuhai" href="javascript:;">珠海</a>
                                                <a data="zhengzhou" href="javascript:;">郑州</a>
                                                <a data="zhongshan" href="javascript:;">中山</a>
                                                <a data="zhangzhou" href="javascript:;">漳州</a>
                                                <a data="zhangjiajie" href="javascript:;">张家界</a>
                                                <a data="zhoushan" href="javascript:;">舟山</a>
                                                <a data="zunyi" href="javascript:;">遵义</a>
                                                <a data="zhaoqing" href="javascript:;">肇庆</a>
                                                <a data="zhangjiakou" href="javascript:;">张家口</a>
                                            </dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <script type="text/javascript">
                            function ShowHotCities() {
                                $("#HotCities").show();
                                $('#HotLocations').hide();
                                $('#CitiesSuggestion').hide();
                                $('#LocationsSuggestion').hide();

                                $('#div_District').hide();
                                $('#div_Area').hide();
                                $('#div_Subway').hide();
                                $('#div_Scenery').hide();
                                $('#div_College').hide();
                                $('#div_Hospital').hide();
                                $('#div_Exhibition').hide();
                                $('#div_RailwayAndAirport').hide();
                                $("#dd_District").find('i').remove();
                                $("#dd_District").find('a').removeClass('cur');
                                $("#dd_Area").find('i').remove();
                                $("#dd_Area").find('a').removeClass('cur');
                                $("#dd_Subway").find('i').remove();
                                $("#dd_Subway").find('a').removeClass('cur');
                                $("#dd_Scenery").find('i').remove();
                                $("#dd_Scenery").find('a').removeClass('cur');
                                $("#dd_College").find('i').remove();
                                $("#dd_College").find('a').removeClass('cur');
                                $("#dd_Hospital").find('i').remove();
                                $("#dd_Hospital").find('a').removeClass('cur');
                                $("#dd_Exhibition").find('i').remove();
                                $("#dd_Exhibition").find('a').removeClass('cur');
                                $("#dd_RailwayAndAirport").find('i').remove();
                                $("#dd_RailwayAndAirport").find('a').removeClass('cur');
                                $("#position_hidden").val("0");

                                var cityName = $("#txtCity").val();
                                $(".hotcitylist a").each(function (i) {
                                    if ($(this).html() == cityName) {
                                        $(this).addClass("current");
                                    } else {
                                        $(this).removeClass("current");
                                    }
                                })
                            };
                            $("#txtCity").focus(function () {
                                ShowHotCities();
                            });
                            $('#CityIcon').click(function () {
                                ShowHotCities();
                            });
                            $("#txtCity").blur(function () {
                                $("#HotCities").hide();
                            });
                            $('#HotCities').mousedown(function (ev) {
                                ev = ev || window.event;
                                var target = ev.target || ev.srcElement;

                                if (target.nodeName == 'A' && $(target).attr("data")) {
                                    var name = target.innerHTML;
                                    var path = $(target).attr("data");

                                    //2015-01-19 sq
                                    if ($("#txtCity").val() != name) {
                                        if ($("#txtLocation").val() != "请输入地址、商圈、地标、店铺名等") {
                                            $("#txtLocation").val("请输入地址、商圈、地标、店铺名等");
                                        }
                                    }

                                    $("#txtCity").val(name);
                                    $("#enter_location_error_message").hide();
                                    $("#citybox").hide();
                                    $(".search_guests").show();
                                    cityHashMap.add(name, path);
                                    $("#path").val(path);
                                    if (typeof (o) != "undefined") {
                                        o.params["ct"].value = "1";
                                    }
                                    if ($("#ct").length > 0) {
                                        $("#ct").val("1");
                                        $("#kt").val("1");
                                    }
                                    $("#txtCity").blur();
                                    document.getElementById('HotCities').onclick = function () {
                                        return false;
                                    }
                                }
                            });

                            $(document.body).click(function (ev) {
                                ev = ev || window.event;
                                var target = ev.target || ev.srcElement;

                                if (!/^(txtCity)|(HotCities)|(citylist)|(citylisTab\d)|(citytab\d)|(YtxcityboxTit)$/.test(target.id)) {
                                    $(".Ytxcitybox").hide();
                                }
                                ;
                                //$(".TheTotal").show();


                                if ($("#position_hidden").val() == "1") {
                                    $("#position_hidden").val("2");
                                }
                                else if ($("#position_hidden").val() == "11") {
                                    $("#position_hidden").val("2");
                                }
                                else if ($("#position_hidden").val() == "2") {
                                    $('#div_District').hide();
                                    $('#div_Area').hide();
                                    $('#div_Subway').hide();
                                    $('#div_Scenery').hide();
                                    $('#div_College').hide();
                                    $('#div_Hospital').hide();
                                    $('#div_Exhibition').hide();
                                    $('#div_RailwayAndAirport').hide();

                                    $("#dd_District").find('i').remove();
                                    $("#dd_District").find('a').removeClass('cur');
                                    $("#dd_Area").find('i').remove();
                                    $("#dd_Area").find('a').removeClass('cur');
                                    $("#dd_Subway").find('i').remove();
                                    $("#dd_Subway").find('a').removeClass('cur');
                                    $("#dd_Scenery").find('i').remove();
                                    $("#dd_Scenery").find('a').removeClass('cur');
                                    $("#dd_College").find('i').remove();
                                    $("#dd_College").find('a').removeClass('cur');
                                    $("#dd_Hospital").find('i').remove();
                                    $("#dd_Hospital").find('a').removeClass('cur');
                                    $("#dd_Exhibition").find('i').remove();
                                    $("#dd_Exhibition").find('a').removeClass('cur');
                                    $("#dd_RailwayAndAirport").find('i').remove();
                                    $("#dd_RailwayAndAirport").find('a').removeClass('cur');

                                    $("#position_hidden").val("0");
                                }


                            });
                        </script>
                        <script type="text/javascript" src="${base}/static/find_place/Root.TabView.js.下载"></script>


                        <!--热门城市HotCity2014.htm end-->

                        <input type="hidden" id="path" value="shanghai">
                        <input type="hidden" id="kt" value="2">
                        <input type="hidden" id="ct" value="0">


                        <div id="CitiesSuggestion" style="z-index: 999; display: none">
                            <!--找不到 begin-->
                            <div class="Ytxcitybox Ytxcitybox_text_pd" id="divNoCity" style="display: none;">
                                对不起，找不到该城市
                            </div>
                            <!--找不到 end-->
                            <div class="citybox_shu" style="display: none;"></div>
                        </div>

                        <!--2015-06-28begin-->
                        <!--敏感词信息提示-->

                        <!--2015-06-28end-->

                    </dd>
                    <dd class="floatl addressBox" id="youtxlist_B02_02" style="margin-left:5px;">
                        <input name="txtLocation" type="text" id="txtLocation" class="inputAdd" value="${keyword}">
                        <!--*20140815 添加 begin*-->
                        <div id="LocationsSuggestion" style="z-index: 999; display: none;">
                            <div class="citybox_shu addbox_sr" style="display: none;"></div>
                        </div>
                        <!--*20140815 添加 end*-->


                    </dd>


                    <dd class="floatl checkIn">
                        <span id="youtxlist_B02_03">
                            <input type="hidden" id="checkin" name="checkin" value="2018-06-04">
                            <input id="startDate" name="startDate" type="text" class="selDateInp time_rent date"
                                   value="2018-06-04" tabindex="2"
                                   onchange="if($(&#39;#startDate&#39;).val()!=&#39;&#39;){$(&#39;#checkin&#39;).val($(&#39;#startDate&#39;).val());}"
                                   autocomplete="off" spellcheck="false" dir="ltr">

                        </span>
                        <span class="timeText">入住</span>

                        <!--2016-05-12begin-->
                        <div id="checkintip" class="MessageBox"
                             style="position: absolute;left: 166px;top:0px;width: 180px;height: 26px;z-index: 5; line-height: 26px; background: #fffce1; border:solid 1px #ffbf6a;border-radius: 4px; text-align: center;display: none;">
                            <span>选择入住时间，看当天准确价格</span>
                            <div class="triangle-character"
                                 style="position: absolute;top: 7px;left:-6px;width:7px;height: 11px;background: url(http://js.youtx.com/images/main2014/TipStra.png) no-repeat 0px 0px; overflow: hidden;"></div>
                        </div>
                        <!--2016-05-12end-->


                        <div id="divpickerin" style="display: none; position: absolute; z-index: 11">
                            <div type="text" id="datepickerin">
                            </div>
                        </div>


                    </dd>


                    <dd class="floatl checkOut">
                        <span id="youtxlist_B02_04">
                        <input type="hidden" id="checkout" name="checkout" value="2018-06-05">
                        <input id="endDate" name="endDate" class="selDateInp time_rent date" type="text" tabindex="3"
                               value="2018-06-05"
                               onchange="if($(&#39;#endDate&#39;).val()!=&#39;&#39;){$(&#39;#checkout&#39;).val($(&#39;#endDate&#39;).val());}"
                               autocomplete="off" spellcheck="false" dir="ltr">

                        </span>
                        <span class="timeText">退房</span>

                        <script type="text/javascript">
                            var localDate = new Date();
                            var serverYear = 2018;
                            var serverMonth = 06;
                            var serverDay = 04;

                            var localYear = localDate.getFullYear();
                            var localMonth = localDate.getMonth() + 1;
                            var localDay = localDate.getDate();

                            var useLocal = false;
                            if (localYear > serverYear || localMonth > serverMonth || localDay > serverDay) {
                                useLocal = true;
                            }

                            var minDate = "" + localYear + "-" + localMonth + "-" + localDay;

                            var maxDate = "2018-12-01";
                            var houseId;

                        </script>
                        <script type="text/javascript"
                                src="${base}/static/find_place/list2016_calendar_foot.js.下载"></script>
                        <script type="text/javascript" src="${base}/static/find_place/js_calendar2016.js.下载"></script>

                        <!--2016-05-12begin-->
                        <div id="checkouttip" class="MessageBox"
                             style=" position: absolute;left: 166px;top:0px;width: 220px;height: 26px;z-index: 5; line-height: 26px; background: #fffce1; border:solid 1px #ffbf6a;border-radius: 4px; text-align: center;display: none;">
                            <span>如您需要入住30天以上，请分段搜索</span>
                            <div class="triangle-character"
                                 style="position: absolute;top: 7px;left:-6px;width:7px;height: 11px;background: url(http://js.youtx.com/images/main2014/TipStra.png) no-repeat 0px 0px; overflow: hidden;"></div>
                        </div>
                        <!--2016-05-12end-->

                        <div id="divpickerout" style="display: none; position: absolute; z-index: 11">
                            <div type="text" id="datepickerout">
                            </div>
                        </div>


                    </dd>


                </dl>
            </div>
            <!-- 搜索区end-->


            <div class="search_type">


                <div id="div_Prices" class="item-wrap clearfix price">
                    <div class="item-tit mt4">价格：</div>
                    <dl id="dl_Prices" class="item clearfix mt4">
                        <dt class="active" id="10000" data="0,99999"><a id="youtxlist_B03_09" href="" data="0,99999"
                                                                        rel="nofollow" onclick="price(this)">不限</a></dt>
                        <dd><a id="100" href="" data="1,100" onclick="price(this)">100元以下</a></dd>
                        <dd><a id="200" href="" data="101,200" onclick="price(this)">101-200元</a></dd>
                        <dd><a id="300" href="" data="201,300" onclick="price(this)">201-300元</a></dd>
                        <dd><a id="500" href="" data="301,500" onclick="price(this)">301-500元</a></dd>
                        <dd><a id="9999" href="" data="501,9999" onclick="price(this)">500元以上</a></dd>
                    </dl>
                </div>
                <input type="hidden" id="priceId" value="${priceId}"/>
                <script type="text/javascript">
                    function price(obj) {
                        var keys = $("#txtLocation").val();
                        var thiscity = $("#txtCity").val();
                        var btw = $(obj).attr("data");
                        var sort3 = $(".c2b98dd").attr("data");
                        var iii = new Array();
                        var ggg = new Array();
                        var ffff = new Array();
                        var gggg = new Array();

                        $(".curFac").each(function () {
                            iii.push($(this).attr("data"));
                        })
                        $(".curPlace").each(function () {
                            ggg.push($(this).attr("data"));
                        })
                        $(".curRoom").each(function () {
                            ffff.push($(this).attr("data"));
                        })
                        $(".curType").each(function () {
                            gggg.push($(this).attr("data"));
                        })
                        if (iii == "") {
                            iii = "*";
                        }
                        if (ggg == "") {
                            ggg = "*";
                        }
                        if (ffff == "") {
                            ffff = "*";
                        }
                        if (gggg == "") {
                            gggg = "*";
                        }
                        $(obj).attr("href", "rent/screen/all?all=" + btw + "-" + keys + "-" + thiscity + "-" + ggg + "-" + iii + "-" + ffff + "-" + gggg + "&currentPage=1&sort=" + sort3);
                        return true;
                    }

                    $(function () {
                        var pid = $("#priceId").val();
                        if (pid != 99999) {
                            $("#" + pid).css("color", "#2b98dd");
                            $("#" + pid).css("font-weight", "bold");
                            $("#10000").removeClass("active");
                            $("#" + pid).addClass("curPrice");
                        } else {
                            $("#10000").addClass("active");
                            $("#10000").addClass("curPrice");
                        }
                        if (pid == "") {
                            $("#10000").addClass("active");
                            $("#10000").addClass("curPrice");
                        }
                    })
                </script>
                <div class="item-wrap clearfix">
                    <div class="item-tit">户型：</div>
                    <dl id="dl_rentType" class="item clearfix">
                        <dt class="active" id="allRoom"><a id="youtxlist_B03_18" href="" onclick="roomnum(this)" data=""
                                                           rel="nofollow" class="nolimit">不限</a></dt>
                        <dd><label id="youtxlist_B03_19"><a href="" onclick="roomnum(this)" data="1"
                                                            id="r1"><i></i>一居</a></label></dd>
                        <dd><label id="youtxlist_B03_20"><a href="" onclick="roomnum(this)" data="2"
                                                            id="r2"><i></i>二居</a></label></dd>
                        <dd><label id="youtxlist_B03_21"><a href="" onclick="roomnum(this)" data="3"
                                                            id="r3"><i></i>三居</a></label></dd>
                        <dd><label id="youtxlist_B03_22"><a href="" onclick="roomnum(this)" data="4"
                                                            id="r4"><i></i>四居</a></label></dd>
                        <dd><label id="youtxlist_B03_23"><a href="" onclick="roomnum(this)" data="5" id="r5"><i></i>四居以上</a></label>
                        </dd>
                        <dd><label id="youtxlist_B03_24"><a href="" onclick="roomtype(this)" data="整套出租"
                                                            id="整套出租"><i></i>整套出租</a></label></dd>
                        <dd><label id="youtxlist_B03_25"><a href="" onclick="roomtype(this)" data="单间出租"
                                                            id="单间出租"><i></i>单间出租</a></label></dd>
                        <dd><label id="youtxlist_B03_26"><a href="" onclick="roomtype(this)" data="床位出租"
                                                            id="床位出租"><i></i>床位出租</a></label></dd>
                        <dd><label id="youtxlist_B03_27"><a href="" onclick="roomtype(this)" data="沙发出租"
                                                            id="沙发出租"><i></i>沙发出租</a></label></dd>
                    </dl>
                </div>
            <#list curRo as ro >
                <input type="hidden" class="checkRo" value="${ro}"/>
            </#list>
            <#list curTy as ty >
                <input type="hidden" class="checkTy" value="${ty}"/>
            </#list>
                <script type="text/javascript">
                    $(function () {
                        if ($(".checkRo").val() != "*") {
                            $(".checkRo").each(function () {
                                $("#r" + $(this).val()).css("color", "#2b98dd");
                                $("#r" + $(this).val()).find("i").addClass("checked");
                                $("#r" + $(this).val()).addClass("curRoom");
                            })
                            if ($(".curRoom").val() != undefined) {
                                $("#allRoom").removeClass("active");
                            } else {
                                $("#allRoom").addClass("active");
                            }
                        }
                    })
                    $(function () {
                        if ($(".checkTy").val() != "*") {
                            $(".checkTy").each(function () {
                                $("#" + $(this).val()).css("color", "#2b98dd");
                                $("#" + $(this).val()).find("i").addClass("checked");
                                $("#" + $(this).val()).addClass("curType");
                            })
                            if ($(".curType").val() != undefined) {
                                $("#allRoom").removeClass("active");
                            } else {
                                $("#allRoom").addClass("active");
                            }
                        }
                    })

                    function roomnum(obj) {
                        var ddd = new Array();
                        var bbb = new Array();
                        var qqq = new Array();
                        var eeee = new Array();

                        var sort4 = $(".c2b98dd").attr("data");
                        if ($(obj).hasClass("curRoom")) {
                            $(obj).removeClass("curRoom");
                        } else {
                            $(obj).addClass("curRoom");
                        }
                        var key3 = $("#txtLocation").val();
                        var city3 = $("#txtCity").val();
                        var curprice4 = $(".curPrice").attr("data");
                        $(".curFac").each(function () {
                            ddd.push($(this).attr("data"));
                        })
                        $(".curPlace").each(function () {
                            bbb.push($(this).attr("data"));
                        })
                        $(".curRoom").each(function () {
                            qqq.push($(this).attr("data"));
                        })
                        $(".curType").each(function () {
                            eeee.push($(this).attr("data"));
                        })
                        if (ddd == "") {
                            ddd.push("*");
                        }
                        if (bbb == "") {
                            bbb.push("*");
                        }
                        if (qqq == "") {
                            qqq.push("*");
                        }
                        if (eeee == "") {
                            eeee.push("*");
                        }
                        if ($(obj).hasClass("nolimit")) {
                            qqq = [];
                            qqq.push("*");
                        }
                        $(obj).attr("href", "rent/screen/all?all=" + curprice4 + "-" + key3 + "-" + city3 + "-" + bbb + "-" + ddd + "-" + qqq + "-" + eeee + "&currentPage=1&sort=" + sort4);
                        return true;
                    }

                    function roomtype(obj) {
                        var aaaa = new Array();
                        var bbbb = new Array();
                        var cccc = new Array();
                        var dddd = new Array();
                        var sort5 = $(".c2b98dd").attr("data");
                        if ($(obj).hasClass("curType")) {
                            $(obj).removeClass("curType");
                        } else {
                            $(obj).addClass("curType");
                        }
                        var key4 = $("#txtLocation").val();
                        var city4 = $("#txtCity").val();
                        var curprice5 = $(".curPrice").attr("data");
                        $(".curFac").each(function () {
                            aaaa.push($(this).attr("data"));
                        })
                        $(".curPlace").each(function () {
                            bbbb.push($(this).attr("data"));
                        })
                        $(".curRoom").each(function () {
                            cccc.push($(this).attr("data"));
                        })
                        $(".curType").each(function () {
                            dddd.push($(this).attr("data"));
                        })
                        if (aaaa == "") {
                            aaaa.push("*");
                        }
                        if (bbbb == "") {
                            bbbb.push("*");
                        }
                        if (cccc == "") {
                            cccc.push("*");
                        }
                        if (dddd == "") {
                            dddd.push("*");
                        }

                        $(obj).attr("href", "rent/screen/all?all=" + curprice5 + "-" + key4 + "-" + city4 + "-" + bbbb + "-" + aaaa + "-" + cccc + "-" + dddd + "&currentPage=1&sort=" + sort5);
                        return true;
                    }
                </script>
                <div id="div_HouseType" class="item-wrap clearfix">
                    <div class="item-tit">类型：</div>
                    <dl id="dl_HouseType" class="item clearfix">
                        <dt class="active" id="allPlace"><a id="youtxlist_B03_28" href="" data="*" rel="nofollow"
                                                            onclick="place(this)" class="nolimit">不限</a></dt>
                        <dd><label id="youtxlist_B03_29"><a href="" data="公寓" class="" onclick="place(this)"
                                                            id="公寓"><i></i>公寓</a></label></dd>
                        <dd><label id="youtxlist_B03_30"><a href="" data="民宿" class="" onclick="place(this)"
                                                            id="民宿"><i></i>民宿</a></label></dd>
                        <dd><label id="youtxlist_B03_31"><a href="" onclick="place(this)" data="旅馆"
                                                            id="旅馆"><i></i>旅馆</a></label></dd>
                        <dd><label id="youtxlist_B03_32"><a href="" onclick="place(this)" data="别墅"
                                                            id="别墅"><i></i>别墅</a></label></dd>
                        <dd><label id="youtxlist_B03_34"><a href="" onclick="place(this)" data="活动场地" id="活动场地"><i></i>活动场地</a></label>
                        </dd>
                        <dd><label id="youtxlist_B03_35"><a href="" onclick="place(this)" data="农家院" id="农家院"><i></i>农家院</a></label>
                        </dd>
                        <dd><label id="youtxlist_B03_36"><a href="" onclick="place(this)" data="客栈"
                                                            id="客栈"><i></i>客栈</a></label></dd>
                        <dd><label id="youtxlist_B03_37"><a href="" onclick="place(this)" data="其它"
                                                            id="其它"><i></i>其它</a></label></dd>
                    </dl>
                </div>

            <#list curfaci as fa>
                <input type="hidden" class="checkfac" value="${fa}"/>
            </#list>
            <#list curplace as pla>
                <input type="hidden" class="checkplace" value="${pla}"/>
            </#list>

                <script type="text/javascript">
                    $(function () {
                        if ($(".checkfac").val() != "*") {
                            $(".checkfac").each(function () {
                                $("#" + $(this).val()).css("color", "#2b98dd");
                                $("#" + $(this).val()).find("i").addClass("checked");
                                $("#" + $(this).val()).addClass("curFac");
                            })
                            if ($(".curFac").val() != undefined) {
                                $("#allFac").removeClass("active");
                            } else {
                                $("#allFac").addClass("active");
                            }
                        }
                        if ($(".checkplace").val() != "*") {
                            $(".checkplace").each(function () {
                                $("#" + $(this).val()).css("color", "#2b98dd");
                                $("#" + $(this).val()).find("i").addClass("checked");
                                $("#" + $(this).val()).addClass("curPlace");
                            })
                            if ($(".curPlace").val() != undefined) {
                                $("#allPlace").removeClass("active");
                            } else {
                                $("#allPlace").addClass("active");
                            }
                        }
                    });


                    function place(obj) {
                        var ppp = new Array();
                        var ooo = new Array();
                        var hhhh = new Array();
                        var iiii = new Array();
                        var sort6 = $(".c2b98dd").attr("data");
                        if ($(obj).hasClass("curPlace")) {
                            $(obj).removeClass("curPlace");
                        } else {
                            $(obj).addClass("curPlace");
                        }
                        var key1 = $("#txtLocation").val();
                        var city1 = $("#txtCity").val();
                        var curprice2 = $(".curPrice").attr("data");
                        $(".curFac").each(function () {
                            ooo.push($(this).attr("data"));
                        })
                        $(".curPlace").each(function () {
                            ppp.push($(this).attr("data"));
                        })
                        $(".curRoom").each(function () {
                            hhhh.push($(this).attr("data"));
                        })
                        $(".curType").each(function () {
                            iiii.push($(this).attr("data"));
                        })
                        if (ooo == "") {
                            ooo.push("*");
                        }
                        if (ppp == "") {
                            ppp.push("*");
                        }
                        if (hhhh == "") {
                            hhhh.push("*");
                        }
                        if (iiii == "") {
                            iiii.push("*");
                        }
                        if ($(obj).hasClass("nolimit")) {
                            ppp = [];
                            ppp.push("*");
                        }
                        $(obj).attr("href", "rent/screen/all?all=" + curprice2 + "-" + key1 + "-" + city1 + "-" + ppp + "-" + ooo + "-" + hhhh + "-" + iiii + "&currentPage=1&sort=" + sort6);
                        return true;
                    }
                </script>

                <!--v_DIVTagEndString end-->

                <div class="item-wrap clearfix peitao">
                    <div class="item-tit">配套：</div>
                    <dl id="dl_ConvenientFacilities" class="item clearfix">
                        <dt class="active" id="allFac"><a id="youtxlist_B03_49" href="" data="*" rel="nofollow"
                                                          onclick="fac(this)" class="nolimit">不限</a></dt>
                        <dd><label id="youtxlist_B03_50"><a href="" onclick="fac(this)" data="facwirednetwork"
                                                            id="facwirednetwork"><i></i>宽带</a></label></dd>
                        <dd><label id="youtxlist_B03_51"><a href="" onclick="fac(this)" id="facwirelessnetwork"
                                                            data="facwirelessnetwork"><i></i>无线宽带</a></label></dd>
                        <dd><label id="youtxlist_B03_52"><a href="" onclick="fac(this)" id="factv" data="factv"><i></i>有线电视</a></label>
                        </dd>
                        <dd><label id="youtxlist_B03_53"><a href="" onclick="fac(this)" id="facshower" data="facshower"><i></i>淋浴</a></label>
                        </dd>
                        <dd><label id="youtxlist_B03_54"><a href="" onclick="fac(this)" id="facaircon" data="facaircon"><i></i>空调</a></label>
                        </dd>
                        <dd><label id="youtxlist_B03_55"><a href="" onclick="fac(this)" id="facheating"
                                                            data="facheating"><i></i>暖气</a></label></dd>
                        <dd><label id="youtxlist_B03_56"><a href="" onclick="fac(this)" id="fackitchen"
                                                            data="fackitchen"><i></i>厨房</a></label></dd>
                        <dd><label id="youtxlist_B03_57"><a href="" onclick="fac(this)" id="fachotwater"
                                                            data="fachotwater"><i></i>24小时热水</a></label></dd>
                    </dl>

                    <dl class="more">
                        <dd>
                            <a href="javascript:;" class="downjt">更多</a>
                            <div id="FacilitiesMore" class="moreWrap" style="display: none;">
                                <div class="List_PopArrow"></div>
                                <div id="youtxlist_B03_58" class="moreInfo">
                                    <div class="List_Pop_close" onclick="$(&#39;#FacilitiesMore&#39;).hide();"></div>

                                    <dl id="dl_MoreFacilities" class="clearfix">
                                        <dd><label id="youtxlist_B03_59"><a href="" onclick="fac(this)" id="facbathtub"
                                                                            data="facbathtub"><i></i>热水浴缸</a></label>
                                        </dd>
                                        <dd><label id="youtxlist_B03_60"><a href="" onclick="fac(this)" id="facwasher"
                                                                            data="facwasher"><i></i>洗衣机</a></label></dd>
                                        <dd><label id="youtxlist_B03_61"><a href="" onclick="fac(this)" id="facfridge"
                                                                            data="facfridge"><i></i>电冰箱</a></label></dd>
                                        <dd><label id="youtxlist_B03_62"><a href="" onclick="fac(this)" id="facpark"
                                                                            data="facpark"><i></i>停车位</a></label></dd>
                                        <dd><label id="youtxlist_B03_65"><a href="" onclick="fac(this)" id="facbreafast"
                                                                            data="breakfast"><i></i>提供早餐</a></label>
                                        </dd>
                                        <dd><label id="youtxlist_B03_68"><a href="" onclick="fac(this)" id="facmahjong"
                                                                            data="facmahjong"><i></i>自动麻将桌</a></label>
                                        </dd>
                                        <dd><label id="youtxlist_B03_69"><a href="" onclick="fac(this)" id="facparty"
                                                                            data="facparty"><i></i>适合举办活动</a></label>
                                        </dd>
                                        <dd><label id="youtxlist_B03_70"><a href="" onclick="fac(this)" id="facpet"
                                                                            data="facpet"><i></i>可以携带宠物</a></label></dd>
                                        <dd><label id="youtxlist_B03_71"><a href="" onclick="fac(this)" id="facsmoke"
                                                                            data="facsmoke"><i></i>可否吸烟</a></label></dd>
                                        <dd><label id="youtxlist_B03_72"><a href="" onclick="fac(this)" id="facbarrier"
                                                                            data="facbarrier"><i></i>无障碍设施</a></label>
                                        </dd>
                                        <dd><label id="youtxlist_B03_73"><a href="" onclick="fac(this)" id="facdoor"
                                                                            data="facdoor"><i></i>对讲机门禁</a></label></dd>
                                        <dd><label id="youtxlist_B03_74"><a href="" onclick="fac(this)" id="facelevator"
                                                                            data="facelevator"><i></i>大厦内电梯</a></label>
                                        </dd>
                                        <dd><label id="youtxlist_B03_75"><a href="" onclick="fac(this)" id="facsecurity"
                                                                            data="facsecurity"><i></i>保安</a></label>
                                        </dd>
                                        <dd><label id="youtxlist_B03_76"><a href="" onclick="fac(this)" id="facfit"
                                                                            data="facfit"><i></i>健身房</a></label></dd>
                                        <dd><label id="youtxlist_B03_77"><a href="" onclick="fac(this)" id="facswim"
                                                                            data="facswim"><i></i>游泳池</a></label></dd>
                                        <dd><label id="youtxlist_B03_78"><a href="" onclick="fac(this)" id="facfamily"
                                                                            data="facfamily"><i></i>可接待孩子</a></label>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </dd>
                    </dl>
                    <script>
                        (function () {
                            $('dl.more .downjt').on('click', function () {
                                $(this).siblings('.moreWrap').toggle();
                            });
                        })();
                    </script>
                </div>

                <script type="text/javascript">
                    function fac(obj) {
                        var fac = new Array();
                        var ttt = new Array();
                        var jjjj = new Array();
                        var kkkk = new Array();
                        var sort7 = $(".c2b98dd").attr("data");
                        if ($(obj).hasClass("curFac")) {
                            $(obj).removeClass("curFac");
                        } else {
                            $(obj).addClass("curFac");
                        }
                        var key2 = $("#txtLocation").val();
                        var city2 = $("#txtCity").val();
                        var curprice3 = $(".curPrice").attr("data");
                        $(".curPlace").each(function () {
                            ttt.push($(this).attr("data"));
                        })
                        $(".curFac").each(function () {
                            fac.push($(this).attr("data"));
                        })
                        $(".curRoom").each(function () {
                            jjjj.push($(this).attr("data"));
                        })
                        $(".curType").each(function () {
                            kkkk.push($(this).attr("data"));
                        })
                        if (ttt == "") {
                            ttt.push("*");
                        }
                        if (fac == "") {
                            fac.push("*");
                        }
                        if (jjjj == "") {
                            jjjj.push("*");
                        }
                        if (kkkk == "") {
                            kkkk.push("*");
                        }
                        if ($(obj).hasClass("nolimit")) {
                            fac = [];
                            fac.push("*");
                        }
                        $(obj).attr("href", "rent/screen/all?all=" + curprice3 + "-" + key2 + "-" + city2 + "-" + ttt + "-" + fac + "-" + jjjj + "-" + kkkk + "&currentPage=1&sort=" + sort7);
                        return true;
                    }


                </script>


            </div>


            <!-- 已选择begin -->


            <!-- 已选择end -->
        </div>
        <!-- 快搜区end -->


        <!-- 品牌推荐 begin -->
        <div id="youtxlist_B04_01" class="brandBox">
            <div class="brand-cont"><a class="prev" style="cursor:pointer;"></a><a class="next"
                                                                                   style="cursor:pointer;"></a>
                <div class="brand-list">
                    <div style="width: 1030px; position: absolute; left: 0px;" id="brand-list-bar">
                        <div class="brand-left"><a href="http://www.youtx.com/room/310247/" target="_blank"><img
                                src="${base}/static/find_place/300x200c.jpg" width="300" height="200" alt="【趴趴轰】复古欧式玉兰馆"
                                title="【趴趴轰】复古欧式玉兰馆"><span class="price">￥5980</span></a></div>
                        <div class="brand-right">
                            <div class="brand-info clearfix">
                                <div class="price"><span class="ListDollar">￥</span><span class="housePrice">3000</span>起
                                </div>
                                <h3><a href="http://mall.youtx.com/shop_32463878/" title="趴趴轰-顶级别墅聚会派对" target="_blank">趴趴轰-顶级别墅聚会派对</a>
                                </h3></div>
                            <p>上海市黄浦区人民广场上海市松江区泗泾泗砖南路1500弄398号<span class="vslipt">|</span><span
                                    class="ff9913">24</span>人评价 <span class="vslipt">|</span>近期预订<span
                                    class="ff9913">24</span>晚<a href="http://mall.youtx.com/city-shanghai/"
                                                                class="morebrand" target="_blank">更多品牌店铺</a></p>
                            <ul class="brand-img clearfix">
                                <li><a href="http://www.youtx.com/room/310243/" target="_blank"><img
                                        src="${base}/static/find_place/162x110c.jpg" width="162" height="110"
                                        alt="【趴趴轰】轻奢欧式宫廷馆" title="【趴趴轰】轻奢欧式宫廷馆"><span class="price">￥3080</span></a>
                                </li>
                                <li><a href="http://www.youtx.com/room/256984/" target="_blank"><img
                                        src="${base}/static/find_place/162x110c(1).jpg" width="162" height="110"
                                        alt="【趴趴轰】西班牙风情超大独栋别墅" title="【趴趴轰】西班牙风情超大独栋别墅"><span class="price">￥5980</span></a>
                                </li>
                                <li><a href="http://www.youtx.com/room/294839/" target="_blank"><img
                                        src="${base}/static/find_place/162x110c(2).jpg" width="162" height="110"
                                        alt="市中心娱乐轰趴（悦时光）现代北欧馆" title="市中心娱乐轰趴（悦时光）现代北欧馆"><span
                                        class="price">￥3000</span></a></li>
                                <li><a href="http://www.youtx.com/room/294840/" target="_blank"><img
                                        src="${base}/static/find_place/162x110c(3).jpg" width="162" height="110"
                                        alt="市中心娱乐轰趴馆（悦时光）工业馆" title="市中心娱乐轰趴馆（悦时光）工业馆"><span class="price">￥3000</span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 品牌推荐 end -->


        <!-- ------------------------------------------------------------------------------------------------- -->


        <!--houselist_all begin-->
        <!-- 短租、长租房源列表 begin -->
        <div class="clearfix mt20" style="width:1180px; margin: 20px auto 0;">
            <div class="houseWrap w850">


                <!--排序begin-->
                <div class="title">
                    <!--2014-11-17修改-->

                    <a href="http://www.youtx.com/shanghai/" class="tit_hw dzBtn cur">短租房源</a><a id="youtxlist_B04_02"
                                                                                                 href="http://www.youtx.com/shanghai/htype2/"
                                                                                                 class="tit_hw bsBtn">聚会别墅</a>

                    <!--2014-11-17修改-结束-->

                    <div id="results_count_top" class="result-count"><a href="http://www.youtx.com/" class="GrayFont">游天下短租房</a><span>&nbsp;&gt;&nbsp;</span><a
                            class="BlueFont">${selectedcity}短租房</a>&nbsp;-&nbsp;找到相关房源&nbsp;3543&nbsp;个
                    </div>
                </div>


                <!-- 排序 begin -->


                <div class="filterBox clearfix">
                    <div id="div_SortBy" class="rankBox clearfix">
                        <dl>
                            <dt>排序：</dt>
                            <dd><a id="default" href="" onclick="sortit(this)" class="orderby" data="default">默认</a>
                            </dd>
                            <dd><a id="rprice" class="orderby" href="" onclick="sortit(this)" title="价格由低到高"
                                   data="rprice">价格↑</a></dd>
                            <dd><a id="rsale" class="orderby" href="" onclick="sortit(this)" title="销量由高到低"
                                   data="rsale">销量</a></dd>
                            <dd><a id="ropinion" class="orderby" href="" onclick="sortit(this)" title="好评数由高到低"
                                   data="ropinion">好评数</a></dd>
                            <dd><a id="rtime" class="orderby" href="" onclick="sortit(this)" title="最新发布" data="rtime">最新</a>
                            </dd>
                        </dl>
                    </div>
                </div>
                <input type="hidden" id="sortType" value="${orderby}"/>
                <script type="text/javascript">
                    $(function () {
                        var sorted = $("#sortType").val();
                        $("#" + sorted).addClass("c2b98dd");
                        $("orderby:not(#" + sorted + ")").removeClass("c2b98dd");
                    })

                    function sortit(obj) {
                        var so1 = new Array();
                        var so2 = new Array();
                        var so3 = new Array();
                        var so4 = new Array();
                        var sorttype = $(obj).attr("data");
                        var key9 = $("#txtLocation").val();
                        var city9 = $("#txtCity").val();
                        var curprice9 = $(".curPrice").attr("data");
                        $(".curPlace").each(function () {
                            so1.push($(this).attr("data"));
                        })
                        $(".curFac").each(function () {
                            so2.push($(this).attr("data"));
                        })
                        $(".curRoom").each(function () {
                            so3.push($(this).attr("data"));
                        })
                        $(".curType").each(function () {
                            so4.push($(this).attr("data"));
                        })
                        if (so1 == "") {
                            so1.push("*");
                        }
                        if (so2 == "") {
                            so2.push("*");
                        }
                        if (so3 == "") {
                            so3.push("*");
                        }
                        if (so4 == "") {
                            so4.push("*");
                        }
                        $(obj).attr("href", "rent/screen/all?all=" + curprice9 + "-" + key9 + "-" + city9 + "-" + so1 + "-" + so2 + "-" + so3 + "-" + so4 + "&currentPage=1&sort=" + sorttype);
                        return true;
                    }
                </script>

                <!-- 排序 end -->


                <!--20140731 修改 begin-->
                <div id="results_filters" class="filterCollect clearfix" style=" display:none;">
                    <span class="myFilter">过滤：</span>
                    <ul class="applied_filters">
                        <li id="FlagRoomType" style="display: none;"><span class="myCollect">出租类型</span><a
                                class="close_f"
                                href="javascript:Youtx.Page.closeSearchFlag(&#39;FlagRoomType&#39;);"><span
                                class="filter_x"></span></a></li>
                        <li id="FlagDistrict" style="display: none;"><span class="myCollect">区域</span><a class="close_f"
                                                                                                         href="javascript:Youtx.Page.closeSearchFlag(&#39;FlagDistrict&#39;);"><span
                                class="filter_x"></span></a></li>
                        <li id="FlagHouseCondition" style="display: none;"><span class="myCollect">
                        便利设施</span> <a class="close_f"
                                       href="javascript:Youtx.Page.closeSearchFlag(&#39;FlagHouseCondition&#39;);">
                            <span class="filter_x"></span></a></li>
                        <li id="FlagHouseType" style="display: none;"><span class="myCollect">房屋类型</span><a
                                class="close_f"
                                href="javascript:Youtx.Page.closeSearchFlag(&#39;FlagHouseType&#39;);"><span
                                class="filter_x"></span></a></li>
                        <li id="FlagPrice" style="display: none;"><span class="myCollect">价格</span><a class="close_f"
                                                                                                      href="javascript:Youtx.Page.closeSearchFlag(&#39;FlagPrice&#39;);"><span
                                class="filter_x"></span></a></li>
                        <li id="FlagInvoice" style="display: none;"><span class="myCollect">发票</span><a class="close_f"
                                                                                                        href="javascript:Youtx.Page.closeSearchFlag(&#39;FlagInvoice&#39;);"><span
                                class="filter_x"></span></a></li>
                        <li id="FlagDistance" style="display: none;"><span class="myCollect">距离</span><a class="close_f"
                                                                                                         href="javascript:Youtx.Page.closeSearchFlag(&#39;FlagDistance&#39;);"><span
                                class="filter_x"></span></a></li>
                        <li id="Flagpuserid" style="display: none;"><span class="myCollect">
                        发布的房间</span> <a class="close_f"
                                        href="javascript:Youtx.Page.closeSearchFlag(&#39;Flagpuserid&#39;);">
                            <span class="filter_x"></span></a></li>
                        <li id="Flagfuserid" style="display: none;"><span class="myCollect">我的收藏</span><a
                                class="close_f"
                                href="javascript:Youtx.Page.closeSearchFlag(&#39;Flagfuserid&#39;);"><span
                                class="filter_x"></span></a></li>
                        <li id="Flagpid" style="display: none;"><span class="myCollect">
                        </span><a class="close_f" href="javascript:Youtx.Page.closeSearchFlag(&#39;Flagpid&#39;);"><span
                                class="filter_x"></span></a></li>
                        <li id="FlagSpecialPrice" style="display: none;"><span class="myCollect">今晚特价</span><a
                                class="close_f"
                                href="javascript:Youtx.Page.closeSearchFlag(&#39;FlagSpecialPrice&#39;);"><span
                                class="filter_x"></span></a></li>
                    </ul>

                </div>
                <!--20140731 修改 end-->
                <!--排序end-->


                <!--houselist begin-->
                <div id="HasData_Panel" style="display: block;">
                    <div id="results" class="duanzu houseList">
                        <ul>
                        <#list roomList as room>
                            <li class="clearfix">
                                <div class="house-img"><a id="youtxlist_B05_1" class="b_pic"
                                                          href="rent/detail/show?roomId=${room[0].roomId}"
                                                          target="_blank"><img src="${imagesPath}/${room[5]}" width="300"
                                                                               height="200"><span
                                        class="pic-num">1</span></a><a id="youtxlist_B05_5"
                                                                       href="http://www.youtx.com/user/show/2505111/"
                                                                       target="_blank" class="pic-head"><img
                                        src="${base}/static/find_place/70x70.jpg" width="70" height="70"></a>
                                    <p class="clearfix"></p></div>
                                <div class="houseInfo clearfix">
                                    <div class="house-tit clearfix"><h3><a id="youtxlist_B05_2"
                                                                           href="rent/detail/show?roomId=${room[0].roomId}"
                                                                           target="_blank"
                                                                           title="${room[0].roomName}">${room[0].roomName}</a>
                                    </h3>
                                        <div class="house-price mt9">
                                            <div class="tag-sale"><a id="youtxlist_B05_3"
                                                                     href="http://www.youtx.com/shanghai/pid760/"
                                                                     target="_blank" class="btn-sale">优质房源推荐<i></i></a>
                                            </div>
                                            <span id="pricepre311026"><span class="ListDollar">￥</span><span
                                                    class="housePrice" id="houseprice">${room[3].priceDay}</span></span>
                                            <div class="mix12_5">
                                                <div class="discount">
                                                    <div class="discount-price" style="text-align:right;">满7天<span><span
                                                            class="ListDollar">￥</span>${room[3].priceWeek}/天</span>
                                                    </div>
                                                    <div class="discount-price" style="text-align:right;">满30天<span
                                                            class="ListDollar">￥</span>${room[3].priceMonth}/天
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="PriceBox" id="pricebox311026" style="width: 65px;">
                                                <div class="innerPBox">
                                                    <div class="date_title">
                                                        <ul class="clearfix">
                                                            <li>周一</li>
                                                        </ul>
                                                    </div>
                                                    <div class="date_details" id="date_details311026">
                                                        <div id="pricepage311026_1">
                                                            <ul class="clearfix">
                                                                <li><span class="PriceDate">06-04</span><span
                                                                        class="PriceNum"><span
                                                                        class="ListDollar">￥</span>${room[3].priceDay}</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="PBoxStra"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="houseInfo-left mt2"><p class="clearfix mt5"
                                                                       style="max-width:380px;overflow:hidden;">${room[1].resourceAddress}</p>
                                        <p class="mt5">${room[4].situType}
                                            -${room[4].situRent}-${room[4].situRoomNum}居室-${room[4].situStandardPeople}人宜居-共${room[4].situOtherResource}套<span
                                                    class="vslipt">
                                        <p class="distance mt5">&nbsp;</p></div>
                                    <div class="houseInfo-right mt9"></div>
                                    <div class="clear"></div>
                                    <div class="agentInfo mt16" style="margin-top:38px;"><p><a id="youtxlist_B05_6"
                                                                                               href="http://www.youtx.com/user/show/2505111/"
                                                                                               target="_blank">${room[2].userRealname}</a><em
                                            class="tel">400-8130-400 转 49136</em></p>
                                        <p class="mt10 btm_p_ clearfix"></p></div>
                                </div>
                            </li>
                        </#list>
                        </ul>
                    </div>

                </div>

                <div id="NoData_Panel" style="display: none;">

                    <div id="NoResults_list">
                        <div class="detailsList_box clearfix">
                            <div class="FL empty_house">
                            </div>
                            <div class="FL empty_txt">
                                <p class="F20 MB10" style="font-family: 微软雅黑">
                                    对不起！没有符合条件的房间</p>
                                <p>
                                    <strong>游天下建议您：</strong>适当减少一些搜索条件或换一个临近区域搜索。</p>
                                <p>
                                    我要对搜索<a href="http://www.youtx.com/feedback/" class="BlueFont"
                                            target="_blank">提出意见</a></p>
                            </div>
                        </div>
                    </div>

                </div>


                <!-- 页码 begin-->

                <!-- 页码 end-->


                <div id="clearfix" class="pagebar clearfix">
                    <div class="pagebar-left">
                        <p id="results_count_footer" class="PB5"><a id="youtxlist_B06_01"
                                                                    href="http://www.youtx.com/shanghai/"
                                                                    class="BlueFont">${selectedcity}短租房</a>&nbsp;-&nbsp;找到相关房源&nbsp;<span
                                class="c2b98dd">${pageInfo[0] * 10}</span>&nbsp;个，每页&nbsp;<span class="c2b98dd">1</span>&nbsp;个结果
                        </p>
                        <p><span class="c2b98dd">没有找到满意的房子？</span> <a href="http://www.youtx.com/profile/BookingTeam"
                                                                      class="btn_publish" target="_blank">我要发布求租</a></p>
                    </div>
                    <div id="div_Pager">
                        <div class="pagebar-right">
                        <#if pageInfo[1] == true>
                            <a href="" onclick="changePage(this)" class="next">&lt;</a>
                        <#else>
                            <span class="prev1">&lt;</span>
                        </#if>
                        <#list 1..pageInfo[0] as i>
                            <#if pageInfo[3] == i>
                                <span class="cur">${i}</span>
                            <#else>
                                <a href="" onclick="changePage(this)">${i}</a>
                            </#if>
                        </#list>
                        <#if pageInfo[2] == true>
                            <a href="" class="next" onclick="changePage(this)">&gt;</a>
                        <#else>
                            <span class="prev1">&gt;</span>
                        </#if>
                        </div>
                        <script type="text/javascript">
                            function changePage(obj) {
                                var nnnn = new Array();
                                var oooo = new Array();
                                var pppp = new Array();
                                var qqqq = new Array();
                                var page1 = $(obj).text();
                                var sort1 = $(".c2b98dd").attr("data");
                                var key8 = $("#txtLocation").val();
                                var city8 = $("#txtCity").val();
                                var curprice8 = $(".curPrice").attr("data");
                                $(".curPlace").each(function () {
                                    nnnn.push($(this).attr("data"));
                                })
                                $(".curFac").each(function () {
                                    oooo.push($(this).attr("data"));
                                })
                                $(".curRoom").each(function () {
                                    pppp.push($(this).attr("data"));
                                })
                                $(".curType").each(function () {
                                    qqqq.push($(this).attr("data"));
                                })
                                if (nnnn == "") {
                                    nnnn.push("*");
                                }
                                if (oooo == "") {
                                    oooo.push("*");
                                }
                                if (pppp == "") {
                                    pppp.push("*");
                                }
                                if (qqqq == "") {
                                    qqqq.push("*");
                                }
                                if (page1 == ">") {
                                    page1 = parseInt($(".pagebar-right").find(".cur").text()) + 1;
                                }
                                if (page1 == "<") {
                                    page1 = parseInt($(".pagebar-right").find(".cur").text()) - 1;
                                }
                                $(obj).attr("href", "rent/screen/all?all=" + curprice8 + "-" + key8 + "-" + city8 + "-" + nnnn + "-" + oooo + "-" + pppp + "-" + qqqq + "&currentPage=" + page1 + "&sort=" + sort1);
                                return true;
                            }
                        </script>
                    </div>
                </div>
            </div>
            <!--houselist end-->
            <!--houselist_all end-->


            <!-- ------------------------------------------------------------------------------------------------- -->
            <div class="s_right" style="margin: 0 auto;">
                <div class="map_box" id="youtxlist_B06_01" style="margin-top:-15px;">
                    <div id="mapa"
                         style="background: rgb(252, 249, 242); overflow: hidden; width: 300px; height: 300px; z-index: 9; position: relative;"
                         class="amap-container">
                        <object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; pointer-events: none; z-index: -1;"
                                type="text/html" data="${base}/static/find_place/saved_resource.html"></object>
                        <div class="amap-maps">
                            <div class="amap-drags" style="">
                                <div class="amap-layers" style="transform: translateZ(0px);">
                                    <canvas class="amap-layer" width="375" height="375"
                                            style="position: absolute; z-index: 0; transform-origin: 187.5px 187.5px 0px; transform: scale3d(0.8, 0.8, 1); top: -38px; left: -38px; height: 375px; width: 375px;"></canvas>
                                    <div class="amap-markers"
                                         style="position: absolute; z-index: 120; top: 150px; left: 150px;">
                                        <div class="amap-marker"
                                             style="top: -29px; left: -25px; z-index: 999; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/icon-blue.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 6px; left: -70px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="1.田园风格高档三房二厅一卫房，近地铁"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps1.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 6px; left: -63px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="2.上海首家2000㎡ 游戏娱乐综合轰趴馆"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps2.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 2px; left: -44px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="3.【聚乐派】超大独栋别墅可容50人轰趴"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps3.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -2px; left: -32px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="4.【众乐派】9馆美式南加州花园别墅"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps4.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -32px; left: -30px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="5.市中心公寓 7号线长寿路站温馨一居室"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps5.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 0px; left: -58px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="6.【趴趴轰】西班牙风情超大独栋别墅"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps6.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -23px; left: -31px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="7.闲舍 法租界双朝南两居老洋房"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps7.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -19px; left: 14px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="8.2号线20平米8人间35/天/人"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps8.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -42px; left: -21px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="9.精装独立商务房.长租优惠"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps9.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 0px; left: -58px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="10.【趴趴轰】轻奢欧式宫廷馆"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps10.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 12px; left: -34px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="11.【众乐派】3馆最具性价比欧式轰趴别墅"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps11.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -48px; left: -27px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="12.彭浦新村1室1厅 免费加床 包月特惠"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps12.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -32px; left: -30px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="13.15分钟直达人民广场外滩，温馨一室户"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps13.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 0px; left: -58px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="14.艺墅乐音殿堂佘山独栋别墅音乐会馆"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps14.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 13px; left: -4px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="15.九匹马560平独栋欧式豪华别墅轰趴"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps15.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -3px; left: -40px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="16.地铁1号线短租公寓莘庄站8Min家庭主卧"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps16.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -24px; left: -10px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="17.世纪公园龙阳地铁站精装1房酒店公寓"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps17.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 12px; left: -34px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="18.【爱轰趴】闵行独栋精装聚会别墅轰趴"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps18.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -28px; left: -20px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="19.滨江名人苑 短租公寓 外滩豪华标间"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps19.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -3px; left: -70px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="20.佘山震撼4000平花园+奢华露天泳池别墅"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps20.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 57px; left: -17px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="21.阳光海奢华欧式别墅"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps21.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 12px; left: -33px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="22.乐乐别墅轰趴 新店八折优惠"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps22.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -12px; left: -31px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="23.地铁1、3号上海南站尚姐公寓"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps23.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -20px; left: -30px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="24.毗邻上海体育场全新精装修一室一厅"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps24.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -17px; left: -57px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="25.Joy&amp;LuckHouse虹桥别墅轰趴馆民宿派对"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps25.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -32px; left: -16px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="26.陆家嘴外滩/近人民广场公寓"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps26.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -42px; left: -74px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="28.同济大学边的别墅"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps28.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 58px; left: -18px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="29.艾聚会别墅轰趴碧海金沙渔人码头馆"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps29.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -5px; left: -7px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="30.浦东万达配套酒店式公寓超温馨一居"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps30.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -20px; left: 10px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="31.【众乐派】新5馆性价比高超级大独栋"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps31.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -29px; left: -29px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="32.7号线长寿路站商业区温馨酒店式公寓"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps32.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -28px; left: -20px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="33.滨江名人苑 短租公寓 温馨典雅景观房"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps33.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -18px; left: -53px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="34.国家会展中心2房花园公寓 近虹桥枢纽"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps34.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: -120px; left: -34px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="27.崇明地中海岛低密度养生墅 聚会度假房"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps27.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                        <div class="amap-marker"
                                             style="top: 37px; left: 56px; z-index: 100; transform: rotate(0deg); transform-origin: 9px 31px 0px; display: block;">
                                            <div class="amap-icon" title="35.临港海昌极地海洋世界"
                                                 style="position: absolute; overflow: inherit; opacity: 1;"><img
                                                    src="${base}/static/find_place/gps35.png"
                                                    style="top: 0px; left: 0px;"></div>
                                        </div>
                                    </div>
                                    <canvas class="amap-labels" draggable="false" width="600" height="600"
                                            style="position: absolute; z-index: 99; height: 300px; width: 300px; top: 0px; left: 0px;"></canvas>
                                </div>
                                <div class="amap-overlays" style=""></div>
                            </div>
                        </div>
                        <div style="display: none;"></div>
                        <div class="amap-controls">
                            <div class="amap-toolbar" style="left: 10px; top: 10px; visibility: visible;">
                                <div class="amap-pancontrol" style="position: relative; display: none;">
                                    <div class="amap-pan-left"></div>
                                    <div class="amap-pan-top"></div>
                                    <div class="amap-pan-right"></div>
                                    <div class="amap-pan-bottom"></div>
                                </div>
                                <div class="amap-locate" style="position: relative; left: 17px; display: block;"></div>
                                <div class="amap-zoomcontrol" style="position: relative; left: 14px;">
                                    <div class="amap-zoom-plus"></div>
                                    <div class="amap-zoom-ruler" style="display: none;">
                                        <div class="amap-zoom-mask" style="height: 91px;"></div>
                                        <div class="amap-zoom-cursor" style="top: 91px;"></div>
                                        <div class="amap-zoom-labels">
                                            <div class="amap-zoom-label-street"></div>
                                            <div class="amap-zoom-label-city"></div>
                                            <div class="amap-zoom-label-province"></div>
                                            <div class="amap-zoom-label-country"></div>
                                        </div>
                                    </div>
                                    <div class="amap-zoom-minus"></div>
                                </div>
                            </div>
                            <div class="amap-scalecontrol" style="left: 2px; bottom: 20px; visibility: visible;">
                                <div class="amap-scale-text" style="width: 103.631px;">50 公里</div>
                                <div class="amap-scale-line">
                                    <div class="amap-scale-edgeleft"></div>
                                    <div class="amap-scale-edgeright" style="left: 96.6313px;"></div>
                                    <div class="amap-scale-middle" style="width: 95.6313px;"></div>
                                </div>
                            </div>
                        </div>
                        <a class="amap-logo" href="http://gaode.com/" target="_blank"><img
                                src="${base}/static/find_place/mapinfo_05.png"></a>
                        <div class="amap-copyright" style="display: none;"></div>
                    </div>
                </div>

                <!--明星房东 begin-->
                <div id="youtxlist_B06_02" class="mxfd_box" style="overflow:hidden; height:300px;">
                    <ul class="clearfix" style="width: 3000px; position: absolute; left: -2100px;">
                        <li class="floatl" style="position:relative"><a href="http://www.youtx.com/user/show/2246040"
                                                                        target="_blank"><img
                                src="${base}/static/find_place/009607261500.jpg" width="300" height="300" alt=""></a>
                            <div class="mxfd_txt"><p>上海市：张莉</p>
                                <p class="mxfd_plc">美丽源自于生活的质感</p></div>
                        </li>
                        <li class="floatl" style="position:relative"><a href="http://www.youtx.com/user/show/76837"
                                                                        target="_blank"><img
                                src="${base}/static/find_place/003636964500.jpg" width="300" height="300" alt=""></a>
                            <div class="mxfd_txt"><p>上海市：龚敏</p>
                                <p class="mxfd_plc">诚心服务,以朋相待</p></div>
                        </li>
                        <li class="floatl" style="position:relative"><a href="http://www.youtx.com/user/show/2241915"
                                                                        target="_blank"><img
                                src="${base}/static/find_place/003674292900.jpg" width="300" height="300" alt=""></a>
                            <div class="mxfd_txt"><p>上海市：谢道亮</p>
                                <p class="mxfd_plc">用心为租客提供专业服务</p></div>
                        </li>
                        <li class="floatl" style="position:relative"><a href="http://www.youtx.com/user/show/2511569"
                                                                        target="_blank"><img
                                src="${base}/static/find_place/003030901800.jpg" width="300" height="300" alt=""></a>
                            <div class="mxfd_txt"><p>上海市：凌凌乱</p>
                                <p class="mxfd_plc">用心做短租的我，欢迎你来做客</p></div>
                        </li>
                        <li class="floatl" style="position:relative"><a href="http://www.youtx.com/user/show/849785"
                                                                        target="_blank"><img
                                src="${base}/static/find_place/002961455800.jpg" width="300" height="300" alt=""></a>
                            <div class="mxfd_txt"><p>上海市：涞坊派</p>
                                <p class="mxfd_plc">认真做事，认真对待每一位租客</p></div>
                        </li>
                        <li class="floatl" style="position:relative"><a href="http://www.youtx.com/user/show/1659515"
                                                                        target="_blank"><img
                                src="${base}/static/find_place/002934350300.jpg" width="300" height="300" alt=""></a>
                            <div class="mxfd_txt"><p>上海市：阿飞</p>
                                <p class="mxfd_plc">对每一位租客的留言都及时回复</p></div>
                        </li>
                        <li class="floatl" style="position:relative"><a href="http://www.youtx.com/user/show/2474798"
                                                                        target="_blank"><img
                                src="${base}/static/find_place/005796020600.jpg" width="300" height="300" alt=""></a>
                            <div class="mxfd_txt"><p>上海市：万齐平</p>
                                <p class="mxfd_plc">齐聚乐园，共享青春</p></div>
                        </li>
                        <li class="floatl" style="position:relative"><a href="http://www.youtx.com/user/show/1070308"
                                                                        target="_blank"><img
                                src="${base}/static/find_place/004679501600.jpg" width="300" height="300" alt=""></a>
                            <div class="mxfd_txt"><p>上海市：猫心管家</p>
                                <p class="mxfd_plc">精致于事，动人以心</p></div>
                        </li>
                        <li class="floatl" style="position:relative"><a href="http://www.youtx.com/user/show/2189149"
                                                                        target="_blank"><img
                                src="${base}/static/find_place/004625284900.jpg" width="300" height="300" alt=""></a>
                            <div class="mxfd_txt"><p>上海市：趴趴轰</p>
                                <p class="mxfd_plc">脚踏实地做事情</p></div>
                        </li>
                        <li class="floatl" style="position:relative"><a href="http://www.youtx.com/user/show/2243232"
                                                                        target="_blank"><img
                                src="${base}/static/find_place/003226142900.jpg" width="300" height="300" alt=""></a>
                            <div class="mxfd_txt"><p>上海市：李先生</p>
                                <p class="mxfd_plc">宾至如归，我们永远的追求</p></div>
                        </li>
                    </ul>
                    <img class="mxfd_icon" src="${base}/static/find_place/mxfd.png" alt="">
                    <p class="mxfd_dot clearfix"><a href="javascript:void(0);" class=""></a><a
                            href="javascript:void(0);" class=""></a><a href="javascript:void(0);" class=""></a><a
                            href="javascript:void(0);" class=""></a><a href="javascript:void(0);" class=""></a><a
                            href="javascript:void(0);" class=""></a><a href="javascript:void(0);" class=""></a><a
                            href="javascript:void(0);" class="cur"></a><a href="javascript:void(0);"></a><a
                            href="javascript:void(0);"></a></p></div>
                <!--明星房东 end-->

                <div class="r_links">
                    <!--攻略 begin-->
                    <div id="youtxlist_B06_03" class="r_info clearfix"><a class="r_l_l"><img
                            src="${base}/static/find_place/i_gl.png" alt="">
                        <p>攻略</p></a>
                        <p class="rll_link"><a href="http://guidebook.youtx.com/Info/1234766/" target="_blank">上海深度游---依我所见</a><a
                                href="http://guidebook.youtx.com/Info/1342973/" target="_blank">吃货带你坐地铁9号线享受美食</a></p>
                    </div>
                    <!--攻略 end-->
                    <!--景点 begin-->
                    <div id="youtxlist_B06_04" class="r_info clearfix"><a class="r_l_l"><img
                            src="${base}/static/find_place/i_jd.png" alt="">
                        <p>景点</p></a>
                        <p class="rll_link"><a href="http://www.youtx.com/JingDian/Detail_7737/"
                                               target="_blank">瀛东村东湖景区</a><a
                                href="http://www.youtx.com/JingDian/Detail_7513/" target="_blank">上海动漫博物馆</a></p></div>
                    <!--景点 end-->
                    <!--问答 begin-->

                    <!--问答 end-->
                </div>

                <!--品牌店铺热卖 begin-->

                <!--品牌店铺热卖 end-->

                <!--小广告 begin-->

                <!--小广告 end-->

                <!--精品长租房 begin-->

                <!--精品长租房 end-->

            </div>
        </div>
        <!-- 短租、长租房源列表 end -->
    </div>
</div>
<div id="calroot" class="calendarBox" style="display: none; position: absolute;"><a id="calprev" class="calPrev"></a><a
        id="calnext" class="calNext"></a>
    <div id="calcontent"></div>
</div>

<!--橱窗推荐begin-->
<div id="youtxlist_B07_01" class="bottom">
    <div class="bottomInfo">
        <div class="title clearfix"><a href="http://www.youtx.com/user/housespread/1/" target="_blank"
                                       class="floatr more">我也要出现在这里&gt;</a>
            <div class="floatl title-tab">
                <div class="s2 cur">橱窗推荐</div>
            </div>
        </div>
        <div class="scroll_wrap"><!--<a class="prev" href="javascript:;"></a><a class="next" href="javascript:;"></a>-->
            <div class="scroll_list">
                <ul class="clearfix" style="width: 2400px; margin-left: 0px;">
                    <li><a class="lt_cutoff" href="javascript:void(0)"><em class="ltc_t">评价返</em><span
                            class="ltc_cny">￥</span><em class="ltc_my">5</em></a><a
                            href="http://www.youtx.com/room/320603/" target="_blank"><img
                            src="${base}/static/find_place/280x187c.jpg" width="280" height="187"></a>
                        <h3>万达广场，迪士尼，素雅双1.5米大床</h3>
                        <p class="clearfix"><span class="floatr"><em class="ff9913">￥298</em>/晚</span>上海市浦东新区</p></li>
                    <li><a class="lt_cutoff" href="javascript:void(0)"><em class="ltc_t">评价返</em><span
                            class="ltc_cny">￥</span><em class="ltc_my">5</em></a><a
                            href="http://www.youtx.com/room/313780/" target="_blank"><img
                            src="${base}/static/find_place/280x187c(1).jpg" width="280" height="187"></a>
                        <h3>梦幻家园主题民宿/浦东机场/迪士尼</h3>
                        <p class="clearfix"><span class="floatr"><em class="ff9913">￥288</em>/晚</span>上海市浦东新区</p></li>
                    <li><a class="lt_cutoff" href="javascript:void(0)"><em class="ltc_t">评价返</em><span
                            class="ltc_cny">￥</span><em class="ltc_my">10</em></a><a
                            href="http://www.youtx.com/room/287974/" target="_blank"><img
                            src="${base}/static/find_place/280x187c(2).jpg" width="280" height="187"></a>
                        <h3>迪士尼客唯美家庭民宿套二</h3>
                        <p class="clearfix"><span class="floatr"><em class="ff9913">￥358</em>/晚</span>上海市浦东新区</p></li>
                    <li><a class="lt_cutoff" href="javascript:void(0)"><em class="ltc_t">评价返</em><span
                            class="ltc_cny">￥</span><em class="ltc_my">5</em></a><a
                            href="http://www.youtx.com/room/318263/" target="_blank"><img
                            src="${base}/static/find_place/280x187c(3).jpg" width="280" height="187"></a>
                        <h3>乐趴别墅轰趴碧海金沙渔人码头馆</h3>
                        <p class="clearfix"><span class="floatr"><em class="ff9913">￥1680</em>/晚</span>上海市奉贤区</p></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--橱窗推荐end-->


<!----------------------------------------------------------------------------------------------------->


<div id="youtxlist_B07_02" class="hothouse">
    <p id="seo_bottom" class="hotAbout" style="display:block">
        游天下短租网为您提供上海短租房/日租房住宿,现有3543套高品质家庭旅馆、短租公寓、青年旅社等上海短租房和上海日租房供您选择,您也可以在游天下短租网将您的房间进行短租出租发布。</p>
    <!--hotHouseAndAbout end-->
    <div class="searchByKey"><a class="mobcheck" href="http://m.youtx.com/Wap_shanghai-yinduluzhan/" target="_blank">手机查看</a>
        <p class="keyIndex"><a href="javascript:void(0);" class="keyIndexChecked">A</a> <a href="javascript:void(0);"
                                                                                           class="">B</a> <a
                href="javascript:void(0);" class="">C</a> <a href="javascript:void(0);" class="">D</a> <a
                href="javascript:void(0);" class="">E</a> <a href="javascript:void(0);" class="">F</a> <a
                href="javascript:void(0);" class="">G</a> <a href="javascript:void(0);" class="">H</a><a
                href="javascript:void(0);">I</a> <a href="javascript:void(0);" class="">J</a> <a
                href="javascript:void(0);" class="">K</a> <a href="javascript:void(0);">L</a> <a
                href="javascript:void(0);" class="">M</a> <a href="javascript:void(0);" class="">N</a> <a
                href="javascript:void(0);" class="">O</a> <a href="javascript:void(0);">P</a> <a
                href="javascript:void(0);" class="">Q</a><a href="javascript:void(0);" class="">R</a> <a
                href="javascript:void(0);" class="">S</a> <a href="javascript:void(0);">T</a> <a
                href="javascript:void(0);">U</a> <a href="javascript:void(0);">V</a> <a href="javascript:void(0);">W</a>
            <a href="javascript:void(0);" class="">X</a> <a href="javascript:void(0);">Y</a> <a
                    href="javascript:void(0);" class="">Z</a></p>
        <p class="keyResult" style="display: block;"><a href="http://www.youtx.com/shanghai-aiguoluzhan/">爱国路站短租房</a><a
                href="http://www.youtx.com/shanghai-ascjzx/">鞍山初级中学短租房</a><a
                href="http://www.youtx.com/shanghai-anshanxincunzhan/">鞍山新村站短租房</a><a
                href="http://www.youtx.com/shanghai-antingzhan/">安亭站短租房</a></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-baoshanluzhan/">宝山路站短租房</a><a
                href="http://www.youtx.com/shanghai-beiyangjingluzhan/">北洋泾路站短租房</a><a
                href="http://www.youtx.com/shanghai-bjgjzx/">北郊高级中学短租房</a><a
                href="http://www.youtx.com/shanghai-boxingluzhan/">博兴路站短租房</a><a
                href="http://www.youtx.com/shanghai-beiqiaozhan/">北桥站短租房</a><a
                href="http://www.youtx.com/shanghai-beixinjingzhan/">北新泾站短租房</a><a
                href="http://www.youtx.com/shanghai-baoangongluzhan/">宝安公路站短租房</a><a
                href="http://www.youtx.com/shanghai-bhzx/">北海中学短租房</a><a
                href="http://www.youtx.com/shanghai-baiyinluzhan/">白银路站短租房</a><a
                href="http://www.youtx.com/shanghai-baoyangluzhan/">宝杨路站短租房</a></p>
        <p class="keyResult" style="display: none;"><a
                href="http://www.youtx.com/shanghai-changshuluzhan/">常熟路站短租房</a><a
                href="http://www.youtx.com/shanghai-changshouluzhan/">长寿路站短租房</a><a
                href="http://www.youtx.com/shanghai-changpingluzhan/">昌平路站短租房</a><a
                href="http://www.youtx.com/shanghai-chenghuangmiao/">城隍庙短租房</a><a
                href="http://www.youtx.com/shanghai-caoyangluzhan/">曹杨路站短租房</a><a
                href="http://www.youtx.com/shanghai-changfenggongyuan/">长风公园短租房</a><a
                href="http://www.youtx.com/shanghai-caoxiluzhan/">漕溪路站短租房</a><a
                href="http://www.youtx.com/shanghai-chifengluzhan/">赤峰路站短租房</a><a
                href="http://www.youtx.com/shanghai-chuanshazhan/">川沙站短租房</a><a
                href="http://www.youtx.com/shanghai-czgjzx/">澄衷高级中学短租房</a><a
                href="http://www.youtx.com/shanghai-chunshenluzhan/">春申路站短租房</a><a
                href="http://www.youtx.com/shanghai-caobaoluzhan/">漕宝路站短租房</a><a
                href="http://www.youtx.com/shanghai-chengshanluzhan/">成山路站短租房</a><a
                href="http://www.youtx.com/shanghai-changqingluzhan/">长清路站短租房</a><a
                href="http://www.youtx.com/shanghai-chuangxinzhongluzhan/">创新中路站短租房</a><a
                href="http://www.youtx.com/shanghai-cyzxfsxx/">曹杨中学附属学校短租房</a><a
                href="http://www.youtx.com/shanghai-cydezxfsxx/">曹杨第二中学附属学校短租房</a><a
                href="http://www.youtx.com/shanghai-changjidongluzhan/">昌吉东路站短租房</a><a
                href="http://www.youtx.com/shanghai-caohejingkaifaquzhan/">漕河泾开发区站短租房</a><a
                href="http://www.youtx.com/shanghai-changjiangnanluzhan/">长江南路站短租房</a><a
                href="http://www.youtx.com/shanghai-changzhongluzhan/">场中路站短租房</a></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-dongfangmingzhu/">东方明珠短租房</a><a
                href="http://www.youtx.com/shanghai-dashijiezhan/">大世界站短租房</a><a
                href="http://www.youtx.com/shanghai-damuqiaoluzhan/">大木桥路站短租房</a><a
                href="http://www.youtx.com/shanghai-donganluzhan/">东安路站短租房</a><a
                href="http://www.youtx.com/shanghai-dapuqiaozhan/">打浦桥站短租房</a><a
                href="http://www.youtx.com/shanghai-chh/">第二军医大学附属长海医院短租房</a><a
                href="http://www.youtx.com/shanghai-dongchangluzhan/">东昌路站短租房</a><a
                href="http://www.youtx.com/shanghai-dongbaoxingluzhan/">东宝兴路站短租房</a><a
                href="http://www.youtx.com/shanghai-dabaishuzhan/">大柏树站短租房</a><a
                href="http://www.youtx.com/shanghai-dtzx/">大同中学短租房</a><a
                href="http://www.youtx.com/shanghai-dongluluzhan/">东陆路站短租房</a><a
                href="http://www.youtx.com/shanghai-dongpingguojiasenlingongyuan/">东平国家森林公园短租房</a><a
                href="http://www.youtx.com/shanghai-dongfangmingzhuguangbodianshita/">东方明珠广播电视塔短租房</a><a
                href="http://www.youtx.com/shanghai-dtcjzx/">大同初级中学短租房</a><a
                href="http://www.youtx.com/changningqu-dhdx/">东华大学短租房</a><a
                href="http://www.youtx.com/shanghai-daduheluzhan/">大渡河路站短租房</a><a
                href="http://www.youtx.com/shanghai-dazhongguojihuiyizhongxin/">大众国际会议中心短租房</a><a
                href="http://www.youtx.com/shanghai-dongmingluzhan/">东明路站短租房</a><a
                href="http://www.youtx.com/shanghai-depingluzhan/">德平路站短租房</a><a
                href="http://www.youtx.com/shanghai-dalianluzhan/">大连路站短租房</a><a
                href="http://www.youtx.com/shanghai-dishuihu/">滴水湖短租房</a><a
                href="http://www.youtx.com/shanghai-dongjingluzhan/">东靖路站短租房</a><a
                href="http://www.youtx.com/shanghai-dishuihuzhan/">滴水湖站短租房</a><a
                href="http://www.youtx.com/shanghai-dongjingzhan/">洞泾站短租房</a><a
                href="http://www.youtx.com/shanghai-dianshanhu/">淀山湖短租房</a><a
                href="http://www.youtx.com/shanghai-dongchuanluzhan/">东川路站短租房</a><a
                href="http://www.youtx.com/shanghai-dahuasanluzhan/">大华三路站短租房</a><a
                href="http://www.youtx.com/shanghai-dongfangtiyuzhongxinzhan/">东方体育中心站短租房</a><a
                href="http://www.youtx.com/shanghai-dachangzhenzhan/">大场镇站短租房</a><a
                href="http://www.youtx.com/shanghai-dongfanglvzhou/">东方绿洲短租房</a><a
                href="http://www.youtx.com/shanghai-daguanyuan/">大观园短租房</a></p>
        <p class="keyResult" style="display: none;"></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-hsh/">复旦大学附属华山医院短租房</a><a
                href="http://www.youtx.com/shanghai-fdu/">复旦大学短租房</a><a href="http://www.youtx.com/shanghai-zlyy/">复旦大学附属肿瘤医院短租房</a><a
                href="http://www.youtx.com/shanghai-wgkyy/">复旦大学附属眼耳鼻喉科医院短租房</a><a
                href="http://www.youtx.com/shanghai-fanghualuzhan/">芳华路站短租房</a><a
                href="http://www.youtx.com/shanghai-fengqiaoluzhan/">枫桥路站短租房</a><a
                href="http://www.youtx.com/shanghai-zsh/">复旦大学附属中山医院短租房</a><a
                href="http://www.youtx.com/shanghai-fdsyzx/">复旦实验中学短租房</a><a href="http://www.youtx.com/shanghai-fhzx/">风华中学短租房</a><a
                href="http://www.youtx.com/shanghai-fengzhuangzhan/">丰庄站短租房</a><a
                href="http://www.youtx.com/shanghai-fuxingdaozhan/">复兴岛站短租房</a><a
                href="http://www.youtx.com/shanghai-fduach/">复旦大学附属儿科医院短租房</a><a
                href="http://www.youtx.com/shanghai-fujinluzhan/">富锦路站短租房</a></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-guoquanluzhan/">国权路站短租房</a><a
                href="http://www.youtx.com/shanghai-guojikeyunzhongxinzhan/">国际客运中心站短租房</a><a
                href="http://www.youtx.com/shanghai-guilinluzhan/">桂林路站短租房</a><a
                href="http://www.youtx.com/shanghai-gaokexiluzhan/">高科西路站短租房</a><a
                href="http://www.youtx.com/shanghai-gaoqingluzhan/">高青路站短租房</a><a
                href="http://www.youtx.com/shanghai-gangchengluzhan/">港城路站短租房</a><a
                href="http://www.youtx.com/shanghai-gucungongyuanzhan/">顾村公园站短租房</a><a
                href="http://www.youtx.com/shanghai-gucungongyuan/">顾村公园短租房</a><a
                href="http://www.youtx.com/shanghai-gcgy/">顾村公园短租房</a><a
                href="http://www.youtx.com/shanghai-gongkangluzhan/">共康路站短租房</a><a
                href="http://www.youtx.com/shanghai-ghzx/">国和中学短租房</a><a href="http://www.youtx.com/shanghai-guyiyuan/">古猗园短租房</a><a
                href="http://www.youtx.com/shanghai-guanglanluzhan/">广兰路站短租房</a><a
                href="http://www.youtx.com/shanghai-gongfuxincun/">共富新村站短租房</a></p>
        <p class="keyResult" style="display: none;"><a
                href="http://www.youtx.com/shanghai-hanzhongluzhan/">汉中路站短租房</a><a
                href="http://www.youtx.com/shanghai-huangpinanluzhan/">黄陂南路站短租房</a><a
                href="http://www.youtx.com/shanghai-hdmfzx/">华东模范中学短租房</a><a
                href="http://www.youtx.com/shanghai-hengshanluzhan/">衡山路站短租房</a><a
                href="http://www.youtx.com/shanghai-ecupl/">华东政法大学短租房</a><a href="http://www.youtx.com/shanghai-hnzx/">海南中学短租房</a><a
                href="http://www.youtx.com/shanghai-hongqiaoluzhan/">虹桥路站短租房</a><a
                href="http://www.youtx.com/shanghai-huangxinggongyuanzhan/">黄兴公园站短租房</a><a
                href="http://www.youtx.com/shanghai-ecnu/">华东师范大学短租房</a><a
                href="http://www.youtx.com/shanghai-hailunluzhan/">海伦路站短租房</a><a
                href="http://www.youtx.com/shanghai-huamuluzhan/">花木路站短租房</a><a
                href="http://www.youtx.com/shanghai-huaxiazhongluzhan/">华夏中路站短租房</a><a
                href="http://www.youtx.com/shanghai-hsxx/">霍山学校短租房</a><a
                href="http://www.youtx.com/shanghai-hongqiaohuochezhan/">虹桥火车站短租房</a><a
                href="http://www.youtx.com/shanghai-hqhcz/">虹桥火车站短租房</a><a
                href="http://www.youtx.com/shanghai-huanlegu/">欢乐谷短租房</a><a href="http://www.youtx.com/shanghai-hwlyq/">海湾旅游区短租房</a><a
                href="http://www.youtx.com/shanghai-huaxiadongluzhan/">华夏东路站短租房</a><a
                href="http://www.youtx.com/shanghai-hkzqc/">虹口足球场短租房</a><a
                href="http://www.youtx.com/shanghai-huangxingluzhan/">黄兴路站短租房</a><a
                href="http://www.youtx.com/shanghai-hangzhongluzhan/">航中路站短租房</a><a
                href="http://www.youtx.com/xuhuiqu-hdlgdx/">华东理工大学短租房</a><a
                href="http://www.youtx.com/shanghai-hongkouzuqiuchangzhan/">虹口足球场站短租房</a><a
                href="http://www.youtx.com/shanghai-hqzhcz/">虹桥站火车站短租房</a><a
                href="http://www.youtx.com/shanghai-huaxiaxiluzhan/">华夏西路站短租房</a><a
                href="http://www.youtx.com/shanghai-houtanzhan/">后滩站短租房</a><a
                href="http://www.youtx.com/shanghai-hongqiao2haohangzhanlouzhan/">虹桥2号航站楼站短租房</a><a
                href="http://www.youtx.com/shanghai-huinanzhan/">惠南站短租房</a><a
                href="http://www.youtx.com/shanghai-hangjinluzhan/">航津路站短租房</a><a
                href="http://www.youtx.com/shanghai-hechuanluzhan/">合川路站短租房</a><a
                href="http://www.youtx.com/shanghai-huanahuizhanzhongxin/">华纳会展中心短租房</a><a
                href="http://www.youtx.com/shanghai-hqgjjc/">虹桥国际机场短租房</a><a
                href="http://www.youtx.com/shanghai-hongqiao1haohangzhanlouzhan/">虹桥1号航站楼站短租房</a><a
                href="http://www.youtx.com/shanghai-huaningluzhan/">华宁路站短租房</a><a
                href="http://www.youtx.com/shanghai-hdsfdxmhxq/">华东师范大学闵行校区短租房</a><a
                href="http://www.youtx.com/shanghai-hulanluzhan/">呼兰路站短租房</a><a
                href="http://www.youtx.com/shanghai-heshahangcheng/">鹤沙航城站短租房</a><a
                href="http://www.youtx.com/shanghai-huidongnanzhan/">惠东南站短租房</a><a
                href="http://www.youtx.com/shanghai-haitiansanluzhan/">海天三路站短租房</a><a
                href="http://www.youtx.com/shanghai-huinandongzhan/">惠南东站短租房</a><a
                href="http://www.youtx.com/shanghai-hangtoudongzhan/">航头东站短租房</a></p>
        <p class="keyResult" style="display: none;"></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-jiangsuluzhan/">江苏路站短租房</a><a
                href="http://www.youtx.com/shanghai-jinganquzhan/">静安寺站短租房</a><a
                href="http://www.youtx.com/shanghai-jiangwantiyuchangzhan/">江湾体育场站短租房</a><a
                href="http://www.youtx.com/shanghai-jiashanluzhan/">嘉善路站短租房</a><a
                href="http://www.youtx.com/shanghai-jaqjyxyfsxx/">静安区教育学院附属学校短租房</a><a
                href="http://www.youtx.com/shanghai-jiangwanzhenzhan/">江湾镇站短租房</a><a
                href="http://www.youtx.com/shanghai-jnxx/">江宁学校短租房</a><a
                href="http://www.youtx.com/shanghai-jiaotongdaxuezhan/">交通大学站短租房</a><a
                href="http://www.youtx.com/shanghai-jinshajiangluzhan/">金沙江路站短租房</a><a
                href="http://www.youtx.com/shanghai-jinqiaoluzhan/">金桥路站短租房</a><a
                href="http://www.youtx.com/shanghai-jinxiuluzhan/">锦绣路站短租房</a><a
                href="http://www.youtx.com/shanghai-jiutingzhan/">九亭站短租房</a><a
                href="http://www.youtx.com/shanghai-jinjiangleyuanzhan/">锦江乐园站短租房</a><a
                href="http://www.youtx.com/shanghai-jiangpuluzhan/">江浦路站短租房</a><a
                href="http://www.youtx.com/shanghai-jianchuanluzhan/">剑川路站短租房</a><a
                href="http://www.youtx.com/shanghai-jinshajiangxiluzhan/">金沙江西路站短租房</a><a
                href="http://www.youtx.com/shanghai-jufengluzhan/">巨峰路站短租房</a><a
                href="http://www.youtx.com/shanghai-jinyunluzhan/">金运路站短租房</a><a
                href="http://www.youtx.com/shanghai-jinjingluzhan/">金京路站短租房</a><a
                href="http://www.youtx.com/shanghai-jinjiangleyuan/">锦江乐园短租房</a><a
                href="http://www.youtx.com/shanghai-jiangpugongyuanzhan/">江浦公园站短租房</a><a
                href="http://www.youtx.com/shanghai-jinhailuzhan/">金海路站短租房</a><a
                href="http://www.youtx.com/shanghai-jinkeluzhan/">金科路站短租房</a><a
                href="http://www.youtx.com/shanghai-jgzyjsxy/">济光职业技术学院短租房</a><a
                href="http://www.youtx.com/shanghai-jinpingluzhan/">金平路站短租房</a><a
                href="http://www.youtx.com/shanghai-jiangyueluzhan/">江月路站短租房</a><a
                href="http://www.youtx.com/shanghai-jingluhuiyizhongxin/">景露会议中心短租房</a><a
                href="http://www.youtx.com/shanghai-jfgjzx/">建峰高级中学短租房</a><a
                href="http://www.youtx.com/shanghai-jiadingxinchengzhan/">嘉定新城站短租房</a><a
                href="http://www.youtx.com/shanghai-jiadingbeizhan/">嘉定北站短租房</a><a
                href="http://www.youtx.com/shanghai-jiadingxizhan/">嘉定西站短租房</a><a
                href="http://www.youtx.com/shanghai-jiangyangbeiluzhan/">江杨北路站短租房</a></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-kjcjzx/">控江初级中学短租房</a><a
                href="http://www.youtx.com/shanghai-kyzx/">开元中学短租房</a><a href="http://www.youtx.com/shanghai-kjzx/">控江中学短租房</a><a
                href="http://www.youtx.com/shanghai-kjzsfsmbxx/">控江中学附属民办学校短租房</a></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-lujiazuizhan/">陆家嘴站短租房</a><a
                href="http://www.youtx.com/shanghai-longdeluzhan/">隆德路站短租房</a><a
                href="http://www.youtx.com/shanghai-laoximenzhan/">老西门站短租房</a><a
                href="http://www.youtx.com/shanghai-llzx/">零陵中学短租房</a><a
                href="http://www.youtx.com/shanghai-lancunluzhan/">蓝村路站短租房</a><a
                href="http://www.youtx.com/shanghai-lyzx/">龙苑中学短租房</a><a
                href="http://www.youtx.com/shanghai-lubanluzhan/">鲁班路站短租房</a><a
                href="http://www.youtx.com/shanghai-longhuazhongluzhan/">龙华中路站短租房</a><a
                href="http://www.youtx.com/shanghai-lujiabangluzhan/">陆家浜路站短租房</a><a
                href="http://www.youtx.com/shanghai-longyangluzhan/">龙阳路站短租房</a><a
                href="http://www.youtx.com/shanghai-longhuazhan/">龙华站短租房</a><a
                href="http://www.youtx.com/shanghai-langaoluzhan/">岚皋路站短租房</a><a
                href="http://www.youtx.com/shanghai-luoshanluzhan/">罗山路站短租房</a><a
                href="http://www.youtx.com/shanghai-loushanguanluzhan/">娄山关路站短租房</a><a
                href="http://www.youtx.com/shanghai-linyixincunzhan/">临沂新村站短租房</a><a
                href="http://www.youtx.com/shanghai-linpingluzhan/">临平路站短租房</a><a
                href="http://www.youtx.com/shanghai-lcxx/">洛川学校短租房</a><a
                href="http://www.youtx.com/shanghai-longcaoluzhan/">龙漕路站短租房</a><a
                href="http://www.youtx.com/shanghai-luxungongyuan/">鲁迅公园短租房</a><a
                href="http://www.youtx.com/shanghai-longyaoluzhan/">龙耀路站短租房</a><a
                href="http://www.youtx.com/shanghai-longxiluzhan/">龙溪路站短租房</a><a
                href="http://www.youtx.com/shanghai-lingkongluzhan/">凌空路站短租房</a><a
                href="http://www.youtx.com/shanghai-longbaixincunzhan/">龙柏新村站短租房</a><a
                href="http://www.youtx.com/shanghai-lianhualuzhan/">莲花路站短租房</a><a
                href="http://www.youtx.com/shanghai-lingyannanluzhan/">灵岩南路站短租房</a><a
                href="http://www.youtx.com/shanghai-luonanxincunzhan/">罗南新村站短租房</a><a
                href="http://www.youtx.com/shanghai-lingzhaoxincunzhan/">凌兆新村站短租房</a><a
                href="http://www.youtx.com/shanghai-longchangluzhan/">隆昌路站短租房</a><a
                href="http://www.youtx.com/shanghai-lingangdadaozhan/">临港大道站短租房</a><a
                href="http://www.youtx.com/shanghai-liziyuanzhan/">李子园站短租房</a><a
                href="http://www.youtx.com/shanghai-liuhangzhan/">刘行站短租房</a><a
                href="http://www.youtx.com/shanghai-lianhangluzhan/">联航路站短租房</a><a
                href="http://www.youtx.com/shanghai-linjianggongyuan/">临江公园短租房</a><a
                href="http://www.youtx.com/shanghai-luhengluzhan/">芦恒路站短租房</a></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-mlzx/">民立中学短租房</a><a
                href="http://www.youtx.com/shanghai-madangluzhan/">马当路站短租房</a><a
                href="http://www.youtx.com/shanghai-minshengluzhan/">民生路站短租房</a><a
                href="http://www.youtx.com/shanghai-meisaidesibenchiwenhuazhongxin/">梅赛德斯奔驰文化中心短租房</a><a
                href="http://www.youtx.com/shanghai-meilanhuzhan/">美兰湖站短租房</a><a
                href="http://www.youtx.com/shanghai-mbmlzx/">民办梅陇中学短租房</a><a
                href="http://www.youtx.com/shanghai-maluzhan/">马陆站短租房</a><a
                href="http://www.youtx.com/shanghai-minhangkaifaqu/">闵行开发区站短租房</a></p>
        <p class="keyResult" style="display: none;"><a
                href="http://www.youtx.com/shanghai-nanjingxiluzhan/">南京西路站短租房</a><a
                href="http://www.youtx.com/shanghai-nanjingdongluzhan/">南京东路站短租房</a><a
                href="http://www.youtx.com/shanghai-nanpudaqiaozhan/">南浦大桥站短租房</a><a
                href="http://www.youtx.com/shanghai-nhgjzx/">南湖高级中学短租房</a><a
                href="http://www.youtx.com/shanghai-nenjiangluzhan/">嫩江路站短租房</a><a
                href="http://www.youtx.com/shanghai-ningguoluzhan/">宁国路站短租房</a><a
                href="http://www.youtx.com/shanghai-nanxiangguzhen/">南翔古镇短租房</a><a
                href="http://www.youtx.com/shanghai-nanchenluzhan/">南陈路站短租房</a><a
                href="http://www.youtx.com/shanghai-nanxiangzhan/">南翔站短租房</a></p>
        <p class="keyResult" style="display: none;"></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-pgzx/">浦光中学短租房</a><a
                href="http://www.youtx.com/shanghai-pudongdadaozhan/">浦东大道站短租房</a><a
                href="http://www.youtx.com/shanghai-pxxx/">普雄学校短租房</a><a
                href="http://www.youtx.com/shanghai-pudianluzhan/">浦电路站短租房</a><a
                href="http://www.youtx.com/shanhai-pusanluzhan/">浦三路站短租房</a><a
                href="http://www.youtx.com/shanghai-pengfuxincun/">彭浦新村站短租房</a><a
                href="http://www.youtx.com/shanghai-pujiangzhenzhan/">浦江镇站短租房</a><a
                href="http://www.youtx.com/shanghai-pudongguojijichang/">浦东国际机场短租房</a><a
                href="http://www.youtx.com/shanghai-panguangluzhan/">潘广路站短租房</a><a
                href="http://www.youtx.com/shanghai-pudongguojijichangzhan/">浦东国际机场站短租房</a></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-qufuluzhan/">曲阜路站短租房</a><a
                href="http://www.youtx.com/shanghai-qydezx/">曲阳第二中学短租房</a><a
                href="http://www.youtx.com/shanghai-qibaozhan/">七宝站短租房</a><a
                href="http://www.youtx.com/shanghai-quyangluzhan/">曲阳路站短租房</a><a
                href="http://www.youtx.com/shanghai-qibaoguzhen/">七宝古镇短租房</a><a
                href="http://www.youtx.com/shanghai-qilianshannanluzhan/">祁连山南路站短租房</a><a
                href="http://www.youtx.com/shanghai-qihualuzhan/">祁华路站短租房</a><a
                href="http://www.youtx.com/shanghai-qilianshanluzhan/">祁连山路站短租房</a></p>
        <p class="keyResult" style="display: none;"><a
                href="http://www.youtx.com/shanghai-renminguangchang/">人民广场短租房</a><a
                href="http://www.youtx.com/shanghai-renminguangchangzhan/">人民广场站短租房</a></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-sxcjzx/">市西初级中学短租房</a><a
                href="http://www.youtx.com/shanghai-shxjxy/">上海戏剧学院短租房</a><a href="http://www.youtx.com/shanghai-ec/">上海展览中心短租房</a><a
                href="http://www.youtx.com/shanghai-shcmusic/">上海音乐学院短租房</a><a
                href="http://www.youtx.com/shanghai-shangwuguangchanghuiwuzhongxin/">商务广场会务中心短租房</a><a
                href="http://www.youtx.com/shanghai-shijigongyuan/">世纪公园短租房</a><a
                href="http://www.youtx.com/shanghai-shsdyzx/">上海市第一中学短租房</a><a
                href="http://www.youtx.com/shanghai-shzhcz/">上海站火车站短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaihuochezhan/">上海火车站短租房</a><a
                href="http://www.youtx.com/yangpuqu-shjgzyjsxy/">上海济光职业技术学院短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaitushuguanzhan/">上海图书馆站短租房</a><a
                href="http://www.youtx.com/shanghai-egdh/">上海东方肝胆外科医院短租房</a><a
                href="http://www.youtx.com/shanghai-shufe/">上海财经大学短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaiduomeitichanyeyuanhuizhanzhongxin/">上海多媒体产业园会展中心短租房</a><a
                href="http://www.youtx.com/shanghai-hfzh/">上海市红房子妇产科医院短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaijiaoda/">上海交通大学短租房</a><a
                href="http://www.youtx.com/shanghai-shijidadaozhan/">世纪大道站短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaitiyuguanzhan/">上海体育馆站短租房</a><a
                href="http://www.youtx.com/shanghai-shssbcjzx/">上海市市八初级中学短租房</a><a
                href="http://www.youtx.com/shanghai-shangchengluzhan/">商城路站短租房</a><a
                href="http://www.youtx.com/xuhuiqu-shjkzyjsxy/">上海健康职业技术学院短租房</a><a
                href="http://www.youtx.com/xuhuiqu-shgymszyxy/">上海工艺美术职业学院短租房</a><a
                href="http://www.youtx.com/xuhuiqu-shmhzyjsxy/">上海民航职业技术学院短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shjqxy/">上海建桥学院短租房</a><a
                href="http://www.youtx.com/shanghai-tyc/">上海体育场短租房</a><a href="http://www.youtx.com/shanghai-tyg/">上海体育馆短租房</a><a
                href="http://www.youtx.com/shanghai-dyzlg/">上海东亚展览馆短租房</a><a
                href="http://www.youtx.com/shanghai-shjqxy/">上海剑桥学院短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaitiyuchangzhan/">上海体育场站短租房</a><a
                href="http://www.youtx.com/shanghai-shsxy/">上海商学院短租房</a><a href="http://www.youtx.com/shanghai-shmu/">上海海事大学短租房</a><a
                href="http://www.youtx.com/shanghai-sichuanbeiluzhan/">四川北路站短租房</a><a
                href="http://www.youtx.com/shanghai-ruijh/">上海交通大学医学院附属瑞金医院短租房</a><a
                href="http://www.youtx.com/shanghai-shh9/">上海交通大学医学院附属第九人民医院短租房</a><a
                href="http://www.youtx.com/shanghai-rjh/">上海交通大学医学院附属仁济医院短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaiyouyongguanzhan/">上海游泳馆站短租房</a><a
                href="http://www.youtx.com/shanghai-shijigongyuanzhan/">世纪公园站短租房</a><a
                href="http://www.youtx.com/shanghai-sbzygjzx/">市北职业高级中学短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaikejiguanzhan/">上海科技馆站短租房</a><a
                href="http://www.youtx.com/shanghai-shscqxx/">上海市长青学校短租房</a><a
                href="http://www.youtx.com/yangpuqu-shylqxgdzkxx/">上海医疗器械高等专科学校短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaikejiguan/">上海科技馆短租房</a><a
                href="http://www.youtx.com/shanghai-swzx/">尚文中学短租房</a><a
                href="http://www.youtx.com/shanghai-songjiangdaxuechengzhan/">松江大学城站短租房</a><a
                href="http://www.youtx.com/shanghai-ss/">佘山短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaiertongyixuezhongxinzhan/">上海儿童医学中心站短租房</a><a
                href="http://www.youtx.com/shanghai-shsdszx/">上海市第十中学短租房</a><a
                href="http://www.youtx.com/shanghai-sniec/">上海新国际博览中心短租房</a><a
                href="http://www.youtx.com/shanghai-shsdbzx/">上海市第八中学短租房</a><a
                href="http://www.youtx.com/shanghai-sijingzhan/">泗泾站短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shhgxy/">上海海关学院短租房</a><a
                href="http://www.youtx.com/shanghai-shsdfzfslhzx/">上海师大附中附属龙华中学短租房</a><a
                href="http://www.youtx.com/shanghai-pdzlg/">上海浦东展览馆短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shdyyszyxy/">上海电影艺术职业学院短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shxwxxjs/">上海兴韦信息技术职业学院短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shbdzyjsxy/">上海邦德职业技术学院短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shmyzyjsxy/">上海民远职业技术学院短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shhszyjsxy/">上海海事职业技术学院短租房</a><a
                href="http://www.youtx.com/shanghai-songyuanluzhan/">宋园路站短租房</a><a
                href="http://www.youtx.com/shanghai-shiboyuan/">世博园短租房</a><a
                href="http://www.youtx.com/shanghai-sanmenluzhan/">三门路站短租房</a><a
                href="http://www.youtx.com/shanghai-ypdx/">上海杨浦大学短租房</a><a href="http://www.youtx.com/shanghai-shtyxy/">上海体育学院短租房</a><a
                href="http://www.youtx.com/shanghai-shsyysxy/">上海视觉艺术学院短租房</a><a
                href="http://www.youtx.com/shanghai-dishini/">上海迪士尼短租房</a><a
                href="http://www.youtx.com/changningqu-shdwmyxy/">上海对外贸易学院短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shzqzyjsxy/">上海中侨职业技术学院短租房</a><a
                href="http://www.youtx.com/shanghai-sdzx/">市东中学短租房</a><a
                href="http://www.youtx.com/shanghai-songjiangxinchengzhan/">松江新城站短租房</a><a
                href="http://www.youtx.com/shanghai-shanghainanzhan/">上海南站短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaishifandaxuehuiyizhongxin/">上海师范大学会议中心短租房</a><a
                href="http://www.youtx.com/shanghai-shsfdxfszx/">上海师范大学附属中学短租房</a><a
                href="http://www.youtx.com/shanghai-shnu/">上海师范大学短租房</a><a
                href="http://www.youtx.com/songjiangqu-shlxkjxy/">上海立信会计学院短租房</a><a
                href="http://www.youtx.com/shanghai-wgydxxdjjrwxy/">上海外国语大学贤达经济人文学院短租房</a><a
                href="http://www.youtx.com/shanghai-shilongluzhan/">石龙路站短租房</a><a
                href="http://www.youtx.com/shanghai-shydxxh/">上海远大心胸医院短租房</a><a
                href="http://www.youtx.com/shanghai-shh6/">上海市第六人民医院短租房</a><a href="http://www.youtx.com/shanghai-lhh/">上海中医药大学附属龙华医院短租房</a><a
                href="http://www.youtx.com/shanghai-shsfdxdsfszx/">上海师范大学第三附属中学短租房</a><a
                href="http://www.youtx.com/shanghai-necc/">上海国家会展中心短租房</a><a
                href="http://www.youtx.com/shanghai-shibozhongxin/">世博中心短租房</a><a
                href="http://www.youtx.com/shanghai-shec/">上海光大会展中心短租房</a><a
                href="http://www.youtx.com/shanghai-shsdxy/">上海杉达学院 短租房</a><a
                href="http://www.youtx.com/shanghai-shuichengluzhan/">水城路站短租房</a><a
                href="http://www.youtx.com/shanghai-shnzhcz/">上海南站火车站短租房</a><a
                href="http://www.youtx.com/shanghai-weecc/">上海世博展览馆短租房</a><a
                href="http://www.youtx.com/shanghai-shsdwsezx/">上海市第五十二中学短租房</a><a
                href="http://www.youtx.com/shanghai-sisu/">上海外国语大学短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaiguojinongzhanzhongxin/">上海国际农展中心短租房</a><a
                href="http://www.youtx.com/xuhuiqu-shtyzyxy/">上海体育职业学院短租房</a><a
                href="http://www.youtx.com/shanghai-shou/">上海海洋大学短租房</a><a
                href="http://www.youtx.com/shanghai-sipingluzhan/">四平路站短租房</a><a
                href="http://www.youtx.com/shanghai-sheshanzhan/">佘山站短租房</a><a
                href="http://www.youtx.com/shanghai-shzwy/">上海植物园 短租房</a><a
                href="http://www.youtx.com/shanghai-shgcjsdx/">上海工程技术大学短租房</a><a
                href="http://www.youtx.com/shanghai-smsc/">上海世贸商城短租房</a><a href="http://www.youtx.com/shanghai-iec/">上海国际展览中心短租房</a><a
                href="http://www.youtx.com/shanghai-cnqfybjy/">上海市长宁区妇幼保健院短租房</a><a
                href="http://www.youtx.com/shanghai-sanlindongzhan/">三林东站短租房</a><a
                href="http://www.youtx.com/yangpuqu-shlgdx/">上海理工大学短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shdjxy/">上海电机学院短租房</a><a
                href="http://www.youtx.com/shanghai-shangnanluzhan/">上南路站短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaixizhan/">上海西站短租房</a><a
                href="http://www.youtx.com/shanghai-shkjglxx/">上海科技管理学校短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaiinternationalexpocenter/">上海国际博览中心短租房</a><a
                href="http://www.youtx.com/shanghai-sanlinzhan/">三林站短租房</a><a
                href="http://www.youtx.com/shanghai-shenjiangluzhan/">申江路站短租房</a><a
                href="http://www.youtx.com/yangpuqu-shcbysgdzkxx/">上海出版印刷高等专科学校短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaiyeshengdongwuyuan/">上海野生动物园短租房</a><a
                href="http://www.youtx.com/shanghai-shyhdsgy/">上海月湖雕塑公园短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shyygdzkxx/">上海医药高等专科学校短租房</a><a
                href="http://www.youtx.com/yangpuqu-shcsglzyjsxy/">上海城市管理职业技术学院短租房</a><a
                href="http://www.youtx.com/shanghai-songhongluzhan/">淞虹路站短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaimaxichengzhan/">上海马戏城站短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaidongwuyuanzhan/">上海动物园站短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaiqichechengzhan/">上海汽车城站短租房</a><a
                href="http://www.youtx.com/shanghai-shch/">上海市儿童医院短租房</a><a
                href="http://www.youtx.com/yangpuqu-shdlxy/">上海电力学院短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shzyydx/">上海中医药大学短租房</a><a
                href="http://www.youtx.com/shanghai-yeshengdongwuyuan/">上海野生动物园短租房</a><a
                href="http://www.youtx.com/shanghai-shiguangluzhan/">市光路站短租房</a><a
                href="http://www.youtx.com/zhabeiqu-shxjzyxy/">上海行健职业学院短租房</a><a
                href="http://www.youtx.com/jiadingqu-shkxjszyxy/">上海科学技术职业学院短租房</a><a
                href="http://www.youtx.com/fengxianqu-shyyjsxy/">上海应用技术学院短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shdegydx/">上海第二工业大学短租房</a><a
                href="http://www.youtx.com/qingpuqu-shzfxy/">上海政法学院短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shjrxy/">上海金融学院短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaidaxuezhan/">上海大学站短租房</a><a
                href="http://www.youtx.com/shanghai-shyyjsxy/">上海应用技术学院短租房</a><a
                href="http://www.youtx.com/shanghai-qchzzx/">上海汽车会展中心短租房</a><a
                href="http://www.youtx.com/shanghai-shmxdx/">上海闵行大学短租房</a><a
                href="http://www.youtx.com/shanghai-shdxfszx/">上海大学附属中学短租房</a><a
                href="http://www.youtx.com/shanghai-shdegydx/">上海第二工业大学短租房</a><a
                href="http://www.youtx.com/shanghai-songfaluzhan/">淞发路站短租房</a><a
                href="http://www.youtx.com/shanghai-shuichanluzhan/">水产路站短租房</a><a
                href="http://www.youtx.com/shanghai-shu/">上海大学短租房</a><a
                href="http://www.youtx.com/shanghai-shangdaluzhan/">上大路站短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shgswgyzyxy/">上海工商外国语职业学院短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shgagdzkxx/">上海公安高等专科学校短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaigongwuyuan/">上海动物园短租房</a><a
                href="http://www.youtx.com/shanghai-shxhg/">上海鲜花港短租房</a><a href="http://www.youtx.com/shanghai-shdwy/">上海动物园短租房</a><a
                href="http://www.youtx.com/shanghai-shxzhcz/">上海西站火车站短租房</a><a
                href="http://www.youtx.com/pudongxinqu-shsbzyjsxy/">上海思博职业技术学院短租房</a><a
                href="http://www.youtx.com/baoshanqu-shjtzyjsxy/">上海交通职业技术学院短租房</a><a
                href="http://www.youtx.com/baoshanqu-shjfzyjsxy/">上海建峰职业技术学院短租房</a><a
                href="http://www.youtx.com/baoshanqu-shzdzyxy/">上海震旦职业学院短租房</a><a
                href="http://www.youtx.com/minhangqu-shdhzyjsxy/">上海东海职业技术学院短租房</a><a
                href="http://www.youtx.com/shanghai-songbinluzhan/">淞滨路站短租房</a><a
                href="http://www.youtx.com/shanghai-shsfdxthxy/">上海师范大学天华学院短租房</a><a
                href="http://www.youtx.com/shanghai-shuyuanzhan/">书院站短租房</a><a
                href="http://www.youtx.com/shanghai-sjzhcz/">松江站火车站短租房</a><a
                href="http://www.youtx.com/shanghai-shanghaisaichechangzhan/">上海赛车场站短租房</a><a
                href="http://www.youtx.com/jiadingqu-shxqzyjsxy/">上海新侨职业技术学院短租房</a><a
                href="http://www.youtx.com/fengxianqu-shghglzyxy/">上海工会管理职业学院短租房</a><a
                href="http://www.youtx.com/songjiangqu-shldzyjsxy/">上海立达职业技术学院短租房</a><a
                href="http://www.youtx.com/fengxianqu-shzhzyjsxy/">上海中华职业技术学院短租房</a><a
                href="http://www.youtx.com/songjiangqu-shnlzyjsxy/">上海农林职业技术学院短租房</a><a
                href="http://www.youtx.com/fengxianqu-shdzxxzyjsxy/">上海电子信息职业技术学院短租房</a><a
                href="http://www.youtx.com/shanghai-icc/">上海国际会议中心短租房</a><a
                href="http://www.youtx.com/fengxianqu-shsxy/">上海商学院短租房</a><a
                href="http://www.youtx.com/fengxianqu-shlvgdzkxx/">上海旅游高等专科学校短租房</a><a
                href="http://www.youtx.com/shanghai-songjiangtiyuzhongxinzhan/">松江体育中心站短租房</a><a
                href="http://www.youtx.com/shanghai-shendugongluzhan/">沈杜公路站短租房</a><a
                href="http://www.youtx.com/shanghai-songjiangnanzhan/">松江南站短租房</a></p>
        <p class="keyResult" style="display: none;"><a
                href="http://www.youtx.com/shanghai-tiantongluzhan/">天潼路站短租房</a><a
                href="http://www.youtx.com/shanghai-tjcjzx/">同济初级中学短租房</a><a
                href="http://www.youtx.com/shanghai-tianzifang/">田子坊短租房</a><a href="http://www.youtx.com/shanghai-fkh/">同济大学附属上海市肺科医院短租房</a><a
                href="http://www.youtx.com/shanghai-tju/">同济大学短租房</a><a href="http://www.youtx.com/shanghai-tjdxtkxy/">同济大学同科学院短租房</a><a
                href="http://www.youtx.com/shanghai-tongjidaxuezhan/">同济大学站短租房</a><a
                href="http://www.youtx.com/shanghai-tilanqiaozhan/">提篮桥站短租房</a><a
                href="http://www.youtx.com/shanghai-tangqiaozhan/">塘桥站短租房</a><a
                href="http://www.youtx.com/shanghai-tsdezx/">天山第二中学短租房</a><a
                href="http://www.youtx.com/shanghai-tldezx/">田林第二中学短租房</a><a
                href="http://www.youtx.com/shanghai-taiwushixz/">泰晤士小镇短租房</a><a
                href="http://www.youtx.com/shanghai-tangzhenzhan/">唐镇站短租房</a><a
                href="http://www.youtx.com/shanghai-tonghexincun/">通河新村站短租房</a><a
                href="http://www.youtx.com/shanghai-thzx/">通河中学短租房</a><a
                href="http://www.youtx.com/shanghai-tieliluzhan/">铁力路站短租房</a><a
                href="http://www.youtx.com/shanghai-taopuxincunzhan/">桃浦新村站短租房</a></p>
        <p class="keyResult" style="display: none;"></p>
        <p class="keyResult" style="display: none;"></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-waitan/">外滩短租房</a><a
                href="http://www.youtx.com/shanghai-wujiaochangzhan/">五角场站短租房</a><a
                href="http://www.youtx.com/shanghai-wuningluzhan/">武宁路站短租房</a><a
                href="http://www.youtx.com/shanghai-weiningluzhan/">威宁路站短租房</a><a
                href="http://www.youtx.com/shanghai-wulianluzhan/">五莲路站短租房</a><a
                href="http://www.youtx.com/shanghai-waigaoqiaobaoshuiqubeizhan/">外高桥保税区北站短租房</a><a
                href="http://www.youtx.com/shanghai-waihuanluzhan/">外环路站短租房</a><a
                href="http://www.youtx.com/shanghai-wenshuiluzhan/">汶水路站短租房</a><a
                href="http://www.youtx.com/shanghai-wuzhoudadaozhan/">五洲大道站短租房</a><a
                href="http://www.youtx.com/shanghai-waigaoqiaobaoshuiqunanzhan/">外高桥保税区南站短租房</a><a
                href="http://www.youtx.com/shanghai-wenjingluzhan/">文井路站短租房</a><a
                href="http://www.youtx.com/shanghai-wuweiluzhan/">武威路站短租房</a></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-xintiandi/">新天地短租房</a><a
                href="http://www.youtx.com/shanghai-xinzhaluzhan/">新闸路站短租房</a><a
                href="http://www.youtx.com/shanghai-xujiahuizhan/">徐家汇站短租房</a><a
                href="http://www.youtx.com/shanghai-xintiandizhan/">新天地站短租房</a><a
                href="http://www.youtx.com/shanghai-xiangyinluzhan/">翔殷路站短租房</a><a
                href="http://www.youtx.com/shanghai-xgbzx/">新古北中学短租房</a><a
                href="http://www.youtx.com/shanghai-xiaonanmenzhan/">小南门站短租房</a><a
                href="http://www.youtx.com/shanghai-xizangbeiluzhan/">西藏北路站短租房</a><a
                href="http://www.youtx.com/shanghai-xizangnanluzhan/">西藏南路站短租房</a><a
                href="http://www.youtx.com/shanghai-xingzhongluzhan/">星中路站短租房</a><a
                href="http://www.youtx.com/shanghai-xincunluzhan/">新村路站短租房</a><a
                href="http://www.youtx.com/shanghai-xujingdongzhan/">徐泾东站短租房</a><a
                href="http://www.youtx.com/shanghai-shxqzyjsxy/">新侨职业技术学院短租房</a><a
                href="http://www.youtx.com/shanghai-xinzhuangzhan/">莘庄站短租房</a><a
                href="http://www.youtx.com/shanghai-xjzx/">新泾中学短租房</a><a href="http://www.youtx.com/shanghai-gzgjxz/">新中高级中学短租房</a><a
                href="http://www.youtx.com/shanghai-xingzhiluzhan/">行知路站短租房</a><a
                href="http://www.youtx.com/shanghai-xinjiangwanchengzhan/">新江湾城站短租房</a><a
                href="http://www.youtx.com/shanghai-xinchangzhan/">新场站短租房</a></p>
        <p class="keyResult" style="display: none;"><a href="http://www.youtx.com/shanghai-yccjzx/">育才初级中学短租房</a><a
                href="http://www.youtx.com/shanghai-tjdxfsqyzx/"> 同济大学附属七一中学短租房</a><a
                href="http://www.youtx.com/shanghai-yuyuan/">豫园短租房</a><a
                href="http://www.youtx.com/shanghai-yuyuanzhan/">豫园站短租房</a><a
                href="http://www.youtx.com/shanghai-ycqwqxx/"> 应昌期围棋学校短租房</a><a
                href="http://www.youtx.com/shanghai-yuanshentiyuzhongxinzhan/">源深体育中心站短租房</a><a
                href="http://www.youtx.com/shanghai-yangshupuluzhan/">杨树浦路站短租房</a><a
                href="http://www.youtx.com/shanghai-yishanluzhan/">宜山路站短租房</a><a
                href="http://www.youtx.com/shanghai-yananxiluzhan/">延安西路站短租房</a><a
                href="http://www.youtx.com/shanghai-yuqiaozhan/">御桥站短租房</a><a
                href="http://www.youtx.com/shanghai-yanjizhongluzhan/">延吉中路站短租房</a><a
                href="http://www.youtx.com/shanghai-yhzx/">延河中学短租房</a><a href="http://www.youtx.com/shanghai-zscjzx/">
            钟山初级中学短租房</a><a href="http://www.youtx.com/shanghai-yanggaozhongluzhan/">杨高中路站短租房</a><a
                href="http://www.youtx.com/shanghai-yililuzhan/">伊犁路站短租房</a><a
                href="http://www.youtx.com/shanghai-yanggaonanluzhan/">杨高南路站短租房</a><a
                href="http://www.youtx.com/shanghai-yuntailuzhan/">云台路站短租房</a><a
                href="http://www.youtx.com/shanghai-yunshanluzhan/">云山路站短租房</a><a
                href="http://www.youtx.com/shanghai-yunjinluzhan/">云锦路站短租房</a><a
                href="http://www.youtx.com/shanghai-yinduluzhan/">银都路站短租房</a><a
                href="http://www.youtx.com/shanghai-yaohualuzhan/">耀华路站短租房</a><a
                href="http://www.youtx.com/shanghai-ypgjzx/">杨浦高级中学短租房</a><a
                href="http://www.youtx.com/shanghai-youdianxincunzhan/">邮电新村站短租房</a><a
                href="http://www.youtx.com/shanghai-yanggaobeiluzhan/">杨高北路站短租房</a><a
                href="http://www.youtx.com/shanghai-yanchangluzhan/">延长路站短租房</a><a
                href="http://www.youtx.com/shanghai-yazx/">延安中学短租房</a><a
                href="http://www.youtx.com/shanghai-yangsizhan/">杨思站短租房</a><a
                href="http://www.youtx.com/shanghai-yingaoxiluzhan/">殷高西路站短租房</a><a
                href="http://www.youtx.com/shanghai-youyixiluzhan/">友谊西路站短租房</a><a
                href="http://www.youtx.com/shanghai-yeshengdongwuyuan%E7%AB%99/">野生动物园站短租房</a><a
                href="http://www.youtx.com/shanghai-yingaodongluzhan/">殷高东路站短租房</a><a
                href="http://www.youtx.com/shanghai-tjbzx/"> 田家炳中学短租房</a><a
                href="http://www.youtx.com/shanghai-youyiluzhan/">友谊路站短租房</a><a
                href="http://www.youtx.com/shanghai-yuandongdadaozhan/">远东大道站短租房</a></p>
        <p class="keyResult" style="display: none;"><a
                href="http://www.youtx.com/shanghai-zhaojiabangluzhan/">肇嘉浜路站短租房</a><a
                href="http://www.youtx.com/shanghai-zhongtanluzhan/">中潭路站短租房</a><a
                href="http://www.youtx.com/shanghai-zhongxingluzhan/">中兴路站短租房</a><a
                href="http://www.youtx.com/shanghai-zhongshangongyuan/">中山公园短租房</a><a
                href="http://www.youtx.com/shanghai-zhongshangongyuanzhan/">中山公园站短租房</a><a
                href="http://www.youtx.com/shanghai-zhenpingluzhan/">镇坪路站短租房</a><a
                href="http://www.youtx.com/shanghai-zhongshanbeiluzhan/">中山北路站短租房</a><a
                href="http://www.youtx.com/shanghai-shh411/">中国人民解放军第411医院短租房</a><a
                href="http://www.youtx.com/shanghai-zhongchunluzhan/">中春路站短租房</a><a
                href="http://www.youtx.com/shanghai-czxx/">子长学校短租房</a><a
                href="http://www.youtx.com/shanghai-zhoupudongzhan/">周浦东站短租房</a><a
                href="http://www.youtx.com/shanghai-zhonghuayishugongzhan/">中华艺术宫站短租房</a><a
                href="http://www.youtx.com/shanghai-zhenruzhan/">真如站短租房</a><a
                href="http://www.youtx.com/shanghai-zitengluzhan/">紫藤路站短租房</a><a
                href="http://www.youtx.com/shanghai-zhenbeiluzhan/">真北路站短租房</a><a
                href="http://www.youtx.com/shanghai-zhoujiajiao/">朱家角短租房</a><a
                href="http://www.youtx.com/shanghai-zhuanqiaozhan/">颛桥站短租房</a><a
                href="http://www.youtx.com/shanghai-zhangjianggaokezhan/">张江高科站短租房</a><a
                href="http://www.youtx.com/shanghai-zhanghuabangzhan/">张华浜站短租房</a><a
                href="http://www.youtx.com/shanghai-zhouhailuzhan/">洲海路站短租房</a><a
                href="http://www.youtx.com/shanghai-zuibaichizhan/">醉白池站短租房</a></p></div>
    <!--searchByKey end-->

    <div class="FooterCity" id="youtx_B07_05">
        <ul class="FooterCityUl" id="FooterCityUl">
            <li id="divHotShangQuan" class="clearfix">
                <div id="youtxlist_B06_15" class="W FL">
                    <div id="dtHotShangQuan" class="CityTxt"><a href="http://www.youtx.com/shanghai-chuansha/"
                                                                target="_blank">川沙日租房</a><a
                            href="http://www.youtx.com/shanghai-lujiazui/" target="_blank">陆家嘴日租房</a><a
                            href="http://www.youtx.com/shanghai-rmgc/" target="_blank">人民广场日租房</a><a
                            href="http://www.youtx.com/shanghai-huochezhan/" target="_blank">火车站日租房</a><a
                            href="http://www.youtx.com/shanghai-hongqiao/" target="_blank">虹桥日租房</a><a
                            href="http://www.youtx.com/shanghai-taixinlu/" target="_blank">泰兴路日租房</a><a
                            href="http://www.youtx.com/shanghai-wt/" target="_blank">外滩日租房</a><a
                            href="http://www.youtx.com/shanghai-xintiandi/" target="_blank">新天地日租房</a><a
                            href="http://www.youtx.com/shanghai-lujiazui/" target="_blank">陆家嘴日租房</a><a
                            href="http://www.youtx.com/shanghai-huaihaizhonglu/" target="_blank">淮海中路日租房</a><a
                            href="http://www.youtx.com/shanghai-zhenninglu/" target="_blank">镇宁路日租房</a><a
                            href="http://www.youtx.com/shanghai-jiangninglu/" target="_blank">江宁路日租房</a><a
                            href="http://www.youtx.com/shanghai-nanjinglu/" target="_blank">南京路日租房</a><a
                            href="http://www.youtx.com/shanghai-xujiahui/" target="_blank">徐家汇日租房</a><a
                            href="http://www.youtx.com/shanghai-buyecheng/" target="_blank">不夜城日租房</a></div>
                </div>
                <div class="CityTit">
                    热门商圈：
                </div>
                <div class="CityTxtBtn">
                    +展开
                </div>
            </li>
            <li id="divHotLandMark" class="clearfix">
                <div id="youtxlist_B06_16" class="W FL">
                    <div id="ddHotLandMark" class="CityTxt"><a href="http://www.youtx.com/shanghai-chongming/"
                                                               target="_blank">崇明日租房</a><a
                            href="http://www.youtx.com/shanghai-waitan/" target="_blank">外滩日租房</a><a
                            href="http://www.youtx.com/shanghai-zhoujiajiao/" target="_blank">朱家角日租房</a><a
                            href="http://www.youtx.com/shanghai-dongfangmingzhu/" target="_blank">东方明珠日租房</a><a
                            href="http://www.youtx.com/shanghai-huanlegu/" target="_blank">欢乐谷日租房</a><a
                            href="http://www.youtx.com/shanghai-henglongguangchang/" target="_blank">恒隆广场日租房</a><a
                            href="http://www.youtx.com/shanghai-babaiban/" target="_blank">八佰伴日租房</a><a
                            href="http://www.youtx.com/shanghai-twsxz/" target="_blank">泰晤士小镇日租房</a><a
                            href="http://www.youtx.com/shanghai-zhengdaguangchang/" target="_blank">正大广场日租房</a><a
                            href="http://www.youtx.com/shanghai-qblj/" target="_blank">七宝老街日租房</a><a
                            href="http://www.youtx.com/shanghai-njlbxj/" target="_blank">南京路步行日租房</a><a
                            href="http://www.youtx.com/shanghai-necc/" target="_blank">国家会展中心日租房</a><a
                            href="http://www.youtx.com/shanghai-hwlyq/" target="_blank">海湾旅游日租房</a><a
                            href="http://www.youtx.com/shanghai-dongfanglvzhou/" target="_blank">东方绿洲日租房</a><a
                            href="http://www.youtx.com/shanghai-dianshanhu/" target="_blank">淀山湖日租房</a><a
                            href="http://www.youtx.com/shanghai-dongpingguojiasenlingongyuan/" target="_blank">东平国家森林公园日租房</a><a
                            href="http://www.youtx.com/shanghai-guyiyuan/" target="_blank">古猗园日租房</a><a
                            href="http://www.youtx.com/shanghai-gucungongyuan/" target="_blank">顾村公园日租房</a><a
                            href="http://www.youtx.com/shanghai-jinjiangleyuan/" target="_blank">锦江乐园日租房</a><a
                            href="http://www.youtx.com/shanghai-linjianggongyuan/" target="_blank">临江公园日租房</a><a
                            href="http://www.youtx.com/shanghai-shanghaigongwuyuan/" target="_blank">上海动物园日租房</a><a
                            href="http://www.youtx.com/shanghai-shanghaikejiguan/" target="_blank">上海科技馆日租房</a><a
                            href="http://www.youtx.com/shanghai-yeshengdongwuyuan/" target="_blank">上海野生动物园日租房</a><a
                            href="http://www.youtx.com/shanghai-shijigongyuan/" target="_blank">世纪公园日租房</a><a
                            href="http://www.youtx.com/shanghai-changfenggongyuan/" target="_blank">长风公园日租房</a></div>
                </div>
                <div class="CityTit">
                    热门地标：
                </div>
                <div class="CityTxtBtn">
                    +展开
                </div>
            </li>
            <li id="div_shop" class="clearfix">
                <div id="youtxlist_B06_17" class="W FL">
                    <div id="dt_shop" class="CityTxt"><a href="http://dian32463878.youtx.com/" target="_blank">趴趴轰-顶级别墅聚会派对</a><a
                            href="http://dian48375362.youtx.com/" target="_blank">上海宝安大酒店</a><a
                            href="http://dian53428466.youtx.com/" target="_blank">涞坊派-聚会轰趴团建场地</a></div>
                </div>
                <div class="CityTit">
                    品牌店铺：
                </div>
                <div class="CityTxtBtn">
                    +展开
                </div>
            </li>
            <li id="div_city" class="clearfix">
                <div id="youtxlist_B06_18" class="W FL">
                    <div id="dt_city" class="CityTxt"><a target="_blank"
                                                         href="http://www.youtx.com/changzhou/">常州短租房</a><a
                            target="_blank" href="http://www.youtx.com/hangzhou/">杭州短租房</a><a target="_blank"
                                                                                              href="http://www.youtx.com/huzhou/">湖州短租房</a><a
                            target="_blank" href="http://www.youtx.com/jiaxing/">嘉兴短租房</a><a target="_blank"
                                                                                             href="http://www.youtx.com/jiangyin/">江阴短租房</a><a
                            target="_blank" href="http://www.youtx.com/nantong/">南通短租房</a><a target="_blank"
                                                                                             href="http://www.youtx.com/ningbo/">宁波短租房</a><a
                            target="_blank" href="http://www.youtx.com/shaoxing/">绍兴短租房</a><a target="_blank"
                                                                                              href="http://www.youtx.com/suzhou/">苏州短租房</a><a
                            target="_blank" href="http://www.youtx.com/taicang/">太仓短租房</a><a target="_blank"
                                                                                             href="http://www.youtx.com/wuxi/">无锡短租房</a><a
                            target="_blank" href="http://www.youtx.com/zhoushan/">舟山短租房</a></div>
                </div>
                <div class="CityTit">
                    周边城市：
                </div>

            </li>
            <li class="clearfix" style="display: block; height: auto;">
                <div id="youtxlist_B06_19" class="W FL">
                    <div class="CityTxt">
                        <a href="http://www.youtx.com/beijing/" target="_blank">北京短租房</a><a
                            href="http://www.youtx.com/shanghai/" target="_blank">上海短租房</a><a
                            href="http://www.youtx.com/guangzhou/" target="_blank">广州短租房</a><a
                            href="http://www.youtx.com/shenzhen/" target="_blank">深圳短租房</a><a
                            href="http://www.youtx.com/hongkong/" target="_blank">香港短租房</a><a
                            href="http://www.youtx.com/sanya/" target="_blank">三亚短租房</a><a
                            href="http://www.youtx.com/suzhou/" target="_blank">苏州短租房</a><a
                            href="http://www.youtx.com/hangzhou/" target="_blank">杭州短租房</a><a
                            href="http://www.youtx.com/nanjing/" target="_blank">南京短租房</a><a
                            href="http://www.youtx.com/xian/" target="_blank">西安短租房</a><a
                            href="http://www.youtx.com/dalian/" target="_blank">大连短租房</a><a
                            href="http://www.youtx.com/qingdao/" target="_blank">青岛短租房</a><a
                            href="http://www.youtx.com/chongqing/" target="_blank">重庆短租房</a> <a
                            href="http://www.youtx.com/chengdu/" target="_blank">成都短租房</a><a
                            href="http://www.youtx.com/wuhan/" target="_blank">武汉短租房</a><a
                            href="http://www.youtx.com/tianjin/" target="_blank">天津短租房</a><a
                            href="http://www.youtx.com/kunming/" target="_blank">昆明短租房</a><a
                            href="http://www.youtx.com/lijiang/" target="_blank">丽江短租房</a><a
                            href="http://www.youtx.com/xiamen/" target="_blank">厦门短租房</a><a
                            href="http://www.youtx.com/lasa/" target="_blank">拉萨短租房</a><a
                            href="http://www.youtx.com/zhengzhou/" target="_blank">郑州短租房</a><a
                            href="http://www.youtx.com/changsha/" target="_blank">长沙短租房</a><a
                            href="http://www.youtx.com/changchun/" target="_blank">长春短租房</a><a
                            href="http://www.youtx.com/shenyang/" target="_blank">沈阳短租房</a><a
                            href="http://www.youtx.com/cities/" target="_blank">更多城市..</a><a
                            href="http://www.youtx.com/locations/" target="_blank">更多地标...</a>
                    </div>
                </div>
                <div class="CityTit">
                    热门城市：
                </div>

            </li>
            <li class="clearfix" style="display: block; height: auto;">
                <div id="youtxlist_B06_20" class="W FL">
                    <div class="CityTxt">

                        <span><a href="http://www.youtx.com/beijing/htype2/" target="_blank">北京日租别墅</a></span>
                        <span><a href="http://www.youtx.com/shanghai/htype2/" target="_blank">上海日租别墅</a></span>
                        <span><a href="http://www.youtx.com/guangzhou/htype2/" target="_blank">广州日租别墅</a></span>
                        <span><a href="http://www.youtx.com/shenzhen/htype2/" target="_blank">深圳日租别墅</a></span>
                        <span><a href="http://www.youtx.com/tianjin/htype2/" target="_blank">天津日租别墅</a></span>
                        <span><a href="http://www.youtx.com/nanjing/htype2/" target="_blank">南京日租别墅</a></span>
                        <span><a href="http://www.youtx.com/hangzhou/htype2/" target="_blank">杭州日租别墅</a></span>
                        <span><a href="http://www.youtx.com/suzhou/htype2/" target="_blank">苏州日租别墅</a></span>
                        <span><a href="http://www.youtx.com/chongqing/htype2/" target="_blank">重庆日租别墅</a></span>
                        <span><a href="http://www.youtx.com/qinhuangdao/htype2/" target="_blank">秦皇岛日租别墅</a></span>
                        <span><a href="http://www.youtx.com/chengdu/htype2/" target="_blank">成都日租别墅</a></span>
                        <span><a href="http://www.youtx.com/xiamen/htype2/" target="_blank">厦门日租别墅</a></span>
                        <span><a href="http://www.youtx.com/sanya/htype2/" target="_blank">三亚日租别墅</a></span>
                        <span><a href="http://www.youtx.com/wuhan/htype2/" target="_blank">武汉日租别墅</a></span>
                        <span><a href="http://www.youtx.com/dalian/htype2/" target="_blank">大连日租别墅</a></span>
                        <span><a href="http://www.youtx.com/xian/htype2/" target="_blank">西安日租别墅</a></span>
                        <span><a href="http://www.youtx.com/qingdao/htype2/" target="_blank">青岛日租别墅</a></span>
                        <span><a href="http://www.youtx.com/changsha/htype2/" target="_blank">长沙日租别墅</a></span>
                        <span><a href="http://www.youtx.com/shenyang/htype2/" target="_blank">沈阳日租别墅</a></span>
                        <span><a href="http://www.youtx.com/hefei/htype2/" target="_blank">合肥日租别墅</a></span>
                        <span><a href="http://www.youtx.com/zhengzhou/htype2/" target="_blank">郑州日租别墅</a></span>
                        <span><a href="http://www.youtx.com/haerbin/htype2/" target="_blank">哈尔滨日租别墅</a></span>
                    </div>
                </div>
                <div class="CityTit">
                    热门别墅：
                </div>

            </li>

            <li id="div_link" class="clearfix" style="display:block;height:auto;">
                <div id="youtxlist_B06_21" class="W FL">
                    <div id="dt_link" class="CityTxt"><a href="http://www.muniao.com/shanghai/"
                                                         target="_blank">上海短租房</a><a
                            href="http://trip.elong.com/shanghai/" target="_blank">上海旅游</a><a
                            href="http://www.meilele.com/shanghai/" target="_blank">上海家具</a><a
                            href="http://www.chachaba.com/shanghai/" target="_blank">上海地图</a><a
                            href="http://www.yangshitianqi.com/shanghai/30tian.html" target="_blank">上海天气预报30天</a><a
                            href="http://sh.fzg360.com/" target="_blank">上海房地产</a><a href="http://sh.58.com/ershoufang/"
                                                                                     target="_blank">上海二手房</a><a
                            href="http://www.5fen.com/shanghai/" target="_blank">上海旅游</a><a
                            href="http://huochezhan.114piaowu.com/" target="_blank">火车站网上订票</a><a
                            href="http://sh.cityhouse.cn/" target="_blank">上海城市房产</a><a
                            href="http://www.tuan800.com/shanghai" target="_blank">上海团购网</a><a
                            href="http://www.zhuna.cn/daxue/" target="_blank">大学附近酒店</a><a
                            href="http://sh.ganji.com/fang11/" target="_blank">上海厂房出租</a><a
                            href="http://www.cjol.com/shanghai/" target="_blank">上海人才网</a><a
                            href="http://shanghai.tianqi.com/15/" target="_blank">上海15天天气</a><a
                            href="http://dibiao.zhuna.cn/shanghai/" target="_blank">上海住宿</a><a
                            href="http://www.zglxw.com/china/" target="_blank">北京国际旅行社</a><a
                            href="http://zu.sh.fang.com/" target="_blank">上海租房</a><a
                            href="http://www.tujia.com/duanzu_shanghai/" target="_blank">上海日租房</a></div>
                </div>
                <div class="CityTit">
                    友情链接：
                </div>

            </li>
        </ul>
    </div>

</div>


<!--隐藏域-->
<form id="vform" target="_blank" action="http://www.youtx.com/shanghai/" method="get">
    <input type="hidden" name="map" value="1"></form>
<input name="favourites" type="hidden" id="favourites" value=",0,">


<script type="text/javascript" src="${base}/static/find_place/saved_resource"></script>

<script type="text/javascript" src="${base}/static/find_place/jquery.ui.datepicker-zh.min.js.下载"></script>

<script type="text/javascript" src="${base}/static/find_place/Youtx.UtilityForList2014.js.下载"></script>
<script type="text/javascript" src="${base}/static/find_place/Youtx.SearchForMain2014.js.下载"></script>
<script type="text/javascript" src="${base}/static/find_place/Youtx.PageA2014.js.下载"></script>
<script type="text/javascript" src="${base}/static/find_place/list2016_ShortRentListJs2014.js.下载"></script>


<script type="text/javascript">
    var now = "21:07:37";
    var specialPriceTime = "17:00:00";
    var islogin2 = "1";
    var userid = "2600363";
    var isDistance = "False";
    var distanceName = "";
    var totalcount = "3543";
    var isSpecialPrice = "False";
    var latlngs = new Array();
    var focusid = '';
    var latestValue = "";
    var markers = [];
    var askUrl = "http://ask.youtx.com";
    var cityPathS = "shanghai";
    var clatlng = {lat: "31.230393", lng: "121.473704"};
    var adCity = "上海市";
    var USDCurrency = "0.1454";
    var keyword = "";

    $("#submit_location").click(function () {

//                    var begin = $("#checkin").val();
//                    var end = $("#checkout").val();
//
//                    var checkin1 = AddDate(begin, 0);
//                    var checkout1 = AddDate(end, 0);
//                    var checkDays = Number(DiffLong(checkin1, checkout1));
//                    if (checkDays > 30) {
//                        $("#checkouttip").show();
//                        return;
//                    }
//                    else {
//                        $("#checkouttip").hide();
//
//                        goUrl();
//
//                    }
//
//        if (($('#checkin').val() != "yy-mm-dd") && ($('#checkout').val() != "yy-mm-dd")) {
//            var begin = $("#checkin").val();
//            var end = $("#checkout").val();
//            var checkin1 = AddDate(begin, 0);
//            var checkout1 = AddDate(end, 0);
//            var checkDays = Number(DiffLong(checkin1, checkout1));
//            if (checkDays > 30) {
//                $("#checkouttip").show();
//                return;
//            }
//            else {
//                $("#checkouttip").hide();
//            }
//        }
//
//        goUrl();
        var kkk = new Array();
        var rrr = new Array();
        var llll = new Array();
        var mmmm = new Array();
        var sort2 = $(".c2b98dd").attr("data");
        var key = $("#txtLocation").val();
        var city = $("#txtCity").val();
        var curprice1 = $(".curPrice").attr("data");
        $(".curPlace").each(function () {
            kkk.push($(this).attr("data"));
        })
        $(".curFac").each(function () {
            rrr.push($(this).attr("data"));
        })
        $(".curRoom").each(function () {
            llll.push($(this).attr("data"));
        })
        $(".curType").each(function () {
            mmmm.push($(this).attr("data"));
        })
        if (kkk == "") {
            kkk.push("*");
        }
        if (rrr == "") {
            rrr.push("*");
        }
        if (llll == "") {
            llll.push("*");
        }
        if (mmmm == "") {
            mmmm.push("*");
        }
        $("#submit_location").attr("href", "rent/screen/all?all=" + curprice1 + "-" + key + "-" + city + "-" + kkk + "-" + rrr + "-" + llll + "-" + mmmm + "&currentPage=1&sort=" + sort2);
        return true;


    });
    $(document).ready(function () {
        o = new Youtx.UrlParameter();
        o.version = "20140718";

        latlngs.push(['031.06265400000000000000', '121.22296600000000000000', '311026', '田园风格高档三房二厅一卫房，近地铁']);

        latlngs.push(['031.06466800000000000000', '121.26232000000000000000', '232182', '上海首家2000㎡ 游戏娱乐综合轰趴馆']);

        latlngs.push(['031.08181900000000000000', '121.36490500000000000000', '257658', '【聚乐派】超大独栋别墅可容50人轰趴']);

        latlngs.push(['031.09997900000000000000', '121.43227700000000000000', '282360', '【众乐派】9馆美式南加州花园别墅']);

        latlngs.push(['031.24382500000000000000', '121.44350800000000000000', '144142', '市中心公寓 7号线长寿路站温馨一居室']);

        latlngs.push(['031.09037956000708000000', '121.28764507427991000000', '256984', '【趴趴轰】西班牙风情超大独栋别墅']);

        latlngs.push(['031.20272500000000000000', '121.43817000000000000000', '323813', '闲舍 法租界双朝南两居老洋房']);

        latlngs.push(['031.18271500000000000000', '121.68714700000000000000', '252256', '2号线20平米8人间35/天/人']);

        latlngs.push(['031.29038100000000000000', '121.49051400000000000000', '312731', '精装独立商务房.长租优惠']);

        latlngs.push(['031.09051600000000000000', '121.28865400000000000000', '310243', '【趴趴轰】轻奢欧式宫廷馆']);

        latlngs.push(['031.03585900000000000000', '121.42202400000000000000', '193968', '【众乐派】3馆最具性价比欧式轰趴别墅']);

        latlngs.push(['031.31612900000000000000', '121.45777900000000000000', '16156', '彭浦新村1室1厅 免费加床 包月特惠']);

        latlngs.push(['031.24296700000000000000', '121.44359000000000000000', '4945', '15分钟直达人民广场外滩，温馨一室户']);

        latlngs.push(['031.09456700000000000000', '121.28812800000000000000', '323470', '艺墅乐音殿堂佘山独栋别墅音乐会馆']);

        latlngs.push(['031.03348100000000000000', '121.58393600000000000000', '197721', '九匹马560平独栋欧式豪华别墅轰趴']);

        latlngs.push(['031.10409200000000000000', '121.38807600000000000000', '99361', '地铁1号线短租公寓莘庄站8Min家庭主卧']);

        latlngs.push(['031.20363600000000000000', '121.55218800000000000000', '27690', '世纪公园龙阳地铁站精装1房酒店公寓']);

        latlngs.push(['031.03681600000000000000', '121.42291100000000000000', '268505', '【爱轰趴】闵行独栋精装聚会别墅轰趴']);

        latlngs.push(['031.22334240000000000000', '121.49835550000000000000', '140584', '滨江名人苑 短租公寓 外滩豪华标间']);

        latlngs.push(['031.10469400000000000000', '121.22174800000000000000', '244871', '佘山震撼4000平花园+奢华露天泳池别墅']);

        latlngs.push(['030.82299080285044000000', '121.51317179203035000000', '324237', '阳光海奢华欧式别墅']);

        latlngs.push(['031.03527600000000000000', '121.42440700000000000000', '273943', '乐乐别墅轰趴 新店八折优惠']);

        latlngs.push(['031.14992661278185400000', '121.43979806137690000000', '58049', '地铁1、3号上海南站尚姐公寓']);

        latlngs.push(['031.18446200000000000000', '121.44359900000000000000', '189422', '毗邻上海体育场全新精装修一室一厅']);

        latlngs.push(['031.17248920000000000000', '121.29620760000000000000', '259386', 'Joy&LuckHouse虹桥别墅轰趴馆民宿派对']);

        latlngs.push(['031.24122200000000000000', '121.52160300000000000000', '64460', '陆家嘴外滩/近人民广场公寓']);

        latlngs.push(['031.65637700000000000000', '121.42295800000000000000', '236964', '崇明地中海岛低密度养生墅 聚会度假房']);

        latlngs.push(['031.28924100000000000000', '121.20173800000000000000', '323596', '同济大学边的别墅']);

        latlngs.push(['030.81971200000000000000', '121.50673000000000000000', '287045', '艾聚会别墅轰趴碧海金沙渔人码头馆']);

        latlngs.push(['031.11479500000000000000', '121.56932000000000000000', '86506', '浦东万达配套酒店式公寓超温馨一居']);

        latlngs.push(['031.18634400000000000000', '121.66461800000000000000', '240009', '【众乐派】新5馆性价比高超级大独栋']);

        latlngs.push(['031.22900300000000000000', '121.44822400000000000000', '6222', '7号线长寿路站商业区温馨酒店式公寓']);

        latlngs.push(['031.22422900000000000000', '121.49848500000000000000', '140580', '滨江名人苑 短租公寓 温馨典雅景观房']);

        latlngs.push(['031.17474195141628000000', '121.31510009814747000000', '256854', '国家会展中心2房花园公寓 近虹桥枢纽']);

        latlngs.push(['030.91617900000000000000', '121.91598200000000000000', '323691', '临港海昌极地海洋世界']);


        initData();

        Youtx.Input.initialize(document.getElementById("minprice"));
        Youtx.Input.initialize(document.getElementById("maxprice"));
        $("#PriceSubmit").click(function () {
            var minprice = $("#minprice").val();
            var maxprice = $("#maxprice").val();
            if (minprice == "" || (isNaN(minprice) || isNaN(maxprice))) {
                alert("请输入数字");
            }
            else if (Number(maxprice) < Number(minprice)) {
                alert("最大价格应大于最小价格");
            }
            else {
                $("#ul_price .nolimited").removeClass("nolimited");
                o.params["price"].value = minprice + "," + maxprice;
                o.params['page'].value = 1;
                window.location.href = o.join();
            }
        })
    })

    function goUrl() {
        o.getParams();
        //            o.params['se'].value = "2";
        o.params['page'].value = 1;
        $.cookie("list_constrast", null, {path: '/', domain: 'youtx.com'});
        window.location.href = o.join();
    }

    function initData() {
        $("#path").val("shanghai");
        o.params['city'].value = "上海";
        Youtx.Page.init(o);
        $.cookie("duanzukeyword", "searchstr:" + o.params['kw'].value + ";checkin:" + o.params['in'].value + ";checkout:" + o.params['out'].value + ";sort:" + o.params['sort'].value + ";numberofguests:" + o.params['guest'].value + ";", {
            expires: 0.1,
            path: '/',
            domain: 'youtx.com'
        });
        if (o.params["kt"].value == "" && o.params["kw"].value != "") {
            o.params["kt"].value = 0;
        }
        if (o.params["ct"].value == "" && o.params["city"].value != "") {
            o.params["ct"].value = 0;
        }
        if (window.location.hostname.toLowerCase() == "www.youtx.com" || window.location.hostname.toLowerCase() == "youtx.com") {
            userAttention("1", o.statistics());
        }

        o.params['se'].value = "";
        o.params['ct'].value = "";
        o.params['kt'].value = "";
    }

    $("#txtLocation").focus(function () {
        $("#divcheckkeyword").show();
        $("#divcheckkeyword").hide();
    });

</script>

<script type="text/javascript">
    $(document).ready(function () {
        //YtxMain.app.DropDown();  //登陆域导航下拉菜单
        //YtxDefault.app.FocusPicture();  //焦点图
        //YtxDefault.app.pullDown();  //表单-模拟下拉
        //YtxMain.app.TwoDim(); //底部微信二维码、与头部手机客户端(延时显示)
        //YtxMain.app.unfold(); //页底展开、隐藏

    })
</script>

<script type="text/javascript" src="${base}/static/find_place/maps"></script>
<script type="text/javascript">
    $(function () {
        $.getScript('http://js.youtx.com/scripts/MapGao.js?v=201710191200', function () {
            showmap();
        });
    });
</script>


<!--2015-01-20 stats code-->
<script type="text/javascript" src="${base}/static/find_place/click2011.js.下载"></script>
<script type="text/javascript">
    Clickstat.eventAdd(window, 'load', function (e) {
        Clickstat.batchEvent('youtxlist_', '');
    });
</script>


<script type="text/javascript" src="${base}/static/find_place/HouseList2016GetHousePriceJS.aspx"></script>
<script type="text/javascript">$(function () {
    $("#pricepre311026").hover(function () {
        $("#pricebox311026").show();
    }, function () {
        $("#pricebox311026").hide();
    });
    $("#pricepre232182").hover(function () {
        $("#pricebox232182").show();
    }, function () {
        $("#pricebox232182").hide();
    });
    $("#pricepre257658").hover(function () {
        $("#pricebox257658").show();
    }, function () {
        $("#pricebox257658").hide();
    });
    $("#pricepre282360").hover(function () {
        $("#pricebox282360").show();
    }, function () {
        $("#pricebox282360").hide();
    });
    $("#pricepre144142").hover(function () {
        $("#pricebox144142").show();
    }, function () {
        $("#pricebox144142").hide();
    });
    $("#pricepre256984").hover(function () {
        $("#pricebox256984").show();
    }, function () {
        $("#pricebox256984").hide();
    });
    $("#pricepre323813").hover(function () {
        $("#pricebox323813").show();
    }, function () {
        $("#pricebox323813").hide();
    });
    $("#pricepre252256").hover(function () {
        $("#pricebox252256").show();
    }, function () {
        $("#pricebox252256").hide();
    });
    $("#pricepre312731").hover(function () {
        $("#pricebox312731").show();
    }, function () {
        $("#pricebox312731").hide();
    });
    $("#pricepre310243").hover(function () {
        $("#pricebox310243").show();
    }, function () {
        $("#pricebox310243").hide();
    });
    $("#pricepre193968").hover(function () {
        $("#pricebox193968").show();
    }, function () {
        $("#pricebox193968").hide();
    });
    $("#pricepre16156").hover(function () {
        $("#pricebox16156").show();
    }, function () {
        $("#pricebox16156").hide();
    });
    $("#pricepre4945").hover(function () {
        $("#pricebox4945").show();
    }, function () {
        $("#pricebox4945").hide();
    });
    $("#pricepre323470").hover(function () {
        $("#pricebox323470").show();
    }, function () {
        $("#pricebox323470").hide();
    });
    $("#pricepre197721").hover(function () {
        $("#pricebox197721").show();
    }, function () {
        $("#pricebox197721").hide();
    });
    $("#pricepre99361").hover(function () {
        $("#pricebox99361").show();
    }, function () {
        $("#pricebox99361").hide();
    });
    $("#pricepre27690").hover(function () {
        $("#pricebox27690").show();
    }, function () {
        $("#pricebox27690").hide();
    });
    $("#pricepre268505").hover(function () {
        $("#pricebox268505").show();
    }, function () {
        $("#pricebox268505").hide();
    });
    $("#pricepre140584").hover(function () {
        $("#pricebox140584").show();
    }, function () {
        $("#pricebox140584").hide();
    });
    $("#pricepre244871").hover(function () {
        $("#pricebox244871").show();
    }, function () {
        $("#pricebox244871").hide();
    });
    $("#pricepre324237").hover(function () {
        $("#pricebox324237").show();
    }, function () {
        $("#pricebox324237").hide();
    });
    $("#pricepre273943").hover(function () {
        $("#pricebox273943").show();
    }, function () {
        $("#pricebox273943").hide();
    });
    $("#pricepre58049").hover(function () {
        $("#pricebox58049").show();
    }, function () {
        $("#pricebox58049").hide();
    });
    $("#pricepre189422").hover(function () {
        $("#pricebox189422").show();
    }, function () {
        $("#pricebox189422").hide();
    });
    $("#pricepre259386").hover(function () {
        $("#pricebox259386").show();
    }, function () {
        $("#pricebox259386").hide();
    });
    $("#pricepre64460").hover(function () {
        $("#pricebox64460").show();
    }, function () {
        $("#pricebox64460").hide();
    });
    $("#pricepre236964").hover(function () {
        $("#pricebox236964").show();
    }, function () {
        $("#pricebox236964").hide();
    });
    $("#pricepre323596").hover(function () {
        $("#pricebox323596").show();
    }, function () {
        $("#pricebox323596").hide();
    });
    $("#pricepre287045").hover(function () {
        $("#pricebox287045").show();
    }, function () {
        $("#pricebox287045").hide();
    });
    $("#pricepre86506").hover(function () {
        $("#pricebox86506").show();
    }, function () {
        $("#pricebox86506").hide();
    });
    $("#pricepre240009").hover(function () {
        $("#pricebox240009").show();
    }, function () {
        $("#pricebox240009").hide();
    });
    $("#pricepre6222").hover(function () {
        $("#pricebox6222").show();
    }, function () {
        $("#pricebox6222").hide();
    });
    $("#pricepre140580").hover(function () {
        $("#pricebox140580").show();
    }, function () {
        $("#pricebox140580").hide();
    });
    $("#pricepre256854").hover(function () {
        $("#pricebox256854").show();
    }, function () {
        $("#pricebox256854").hide();
    });
    $("#pricepre323691").hover(function () {
        $("#pricebox323691").show();
    }, function () {
        $("#pricebox323691").hide();
    });
})</script>


<!--尾部2012-10-9修改 start-->
<div id="Footer">
    <div class="footer_link" id="youtx_B07_06"><span id="youtxlist_B06_22">
        <a rel="nofollow" target="_blank" href="http://www.youtx.com/help/about/">关于我们</a>|<a rel="nofollow"
                                                                                              target="_blank"
                                                                                              href="http://www.youtx.com/help/contact/">联系我们</a>|<a
            target="_blank" href="http://www.youtx.com/help/links/">友情链接</a>|<a rel="nofollow" target="_blank"
                                                                                href="http://www.youtx.com/help/jobs/">招聘</a>|<a
            rel="nofollow" target="_blank" href="http://www.youtx.com/help/service/">服务协议</a>|<a id="youtx_34"
                                                                                                 rel="nofollow"
                                                                                                 target="_blank"
                                                                                                 href="http://www.youtx.com/feedback/">意见反馈</a>|<a
            rel="nofollow" target="_blank" href="http://www.youtx.com/downloadshortcut/" class="appYtx">下载桌面游天下</a>|<a
            rel="nofollow" target="_blank" href="http://www.youtx.com/mo/">手机游天下</a>|<a rel="nofollow" target="_blank"
                                                                                        href="http://www.youtx.com/star/">明星房东</a>|<a
            target="_blank" href="http://www.youtx.com/">日租房</a>|<a rel="nofollow" target="_blank"
                                                                    href="http://blog.youtx.com/">博客</a>|<a
            rel="nofollow" target="_blank" href="http://www.youtx.com/jifen/exchange/">积分换礼</a>|<a rel="nofollow"
                                                                                                   target="_blank"
                                                                                                   href="http://www.youtx.com/Profile/cps/cpsapply.aspx">CPS加盟</a>|<a
            href="http://www.youtx.com/publish/StarUser/LandlordCruit.aspx" rel="nofollow"
            target="_blank">房东招募</a></span>
    </div>
    <div class="FooterDec">
        <span class="clearfix"><span class="FooterDecSpan">Copyright © 2017 Youtx.com,
            All Rights Reserved<br>
            <a rel="nofollow" target="_blank" href="http://js.youtx.com/icp.jpg">京ICP证041065号</a>京公网安备11010602010093号-2
        </span><a class="Dec" rel="nofollow"
                  href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN"
                  target="_blank">
            <img width="60" height="35" src="${base}/static/find_place/VerisignYoutx.gif"></a>
            <a class="Dec" target="_blank" rel="nofollow" href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730">
                <img src="${base}/static/find_place/FooterNetPic.gif"></a> <a class="Dec" rel="nofollow"
                                                                              href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891"
                                                                              target="_blank">
                    <img width="100" height="35px" src="${base}/static/find_place/TrustYoutx.gif"></a>
            <a class="Dec" rel="nofollow" href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202012082400507"
               target="_blank">
                <img src="${base}/static/find_place/gsbs.gif"></a> </span>
    </div>
</div>

<!--尾部2012-10-9修改 end-->


<!--右边悬浮框suspension-->
<div class="suspenBox" style="display: none;">
    <ul class="suspensionL">
        <li class="suspenLi suspenLi2" id="suspenLi2">
            <a href="http://www.youtx.com/feedback/" target="_blank"></a>
        </li>
        <li class="suspenLi suspenLi3" id="suspenLi3">
            <div class="suspenPop1 suspenPop3">
                <h2><span class="ColorBlue">微信</span>扫描二维码使用游天下</h2>
                <img src="${base}/static/find_place/ewmBNew(1).jpg" width="102" height="102" alt="微信二维码">
                <p>微信号：游天下短租</p>
            </div>
        </li>

    </ul>
    <div class="suspensionR">
        <a href="javascript:;"></a>
    </div>
</div>
<!--右边悬浮框suspension end-->

<script type="text/javascript" src="${base}/static/find_place/list2016.js.下载"></script>


</body>
</html>