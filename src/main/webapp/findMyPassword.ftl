<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0068)https://passport.youtx.com/profile/Passport/EditPassword.aspx?Email= -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <#assign base=request.contextPath />
    <base id="base" href="${base}">
 
    <meta http-equiv="Cache-Control" content="max-age=86400">
    <img src="${base}/static/findPassword/countpv" width="0" height="0"><script type="text/javascript" async="" src="${base}/static/findPassword/load.min.js.下载"></script><script src="${base}/static/findPassword/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
    <script src="${base}/static/findPassword/jQuery.cookie.js.下载" language="javascript" type="text/javascript"></script>
   
    <link href="${base}/static/findPassword/public_PassPort.css" rel="Stylesheet" type="text/css">
    
    
    <script type="text/javascript" language="javascript">
      window.onerror = function () { return true; }
      var userid = '';
      var HostUrl = 'http://www.youtx.com';
      if (parseInt(userid) > 0) {
          $.ajax({
              type: 'POST',
              url: '/profile/Ajax/AjaxPassport.aspx',
              data: 'type=isBlackList&UserID=' + userid,
              success: function (data) {

              },
              error: function (err) {

              }
          });
      }
    </script>
    
    <title>找回密码-游天下</title>
    <link href="${base}/static/findPassword/register.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="${base}/static/findPassword/ValidCode.css">

    
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
            $.cookie('LN', lang, { expires: 30, path: '/', domain: 'youtx.com' });
            $.cookie('huobi', "USD", { expires: 30, path: '/', domain: 'youtx.com' });
            location.href = HostUrl_En;
        });
        //手机游天下修改Begin
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
        //手机游天下修改End
    });
</script>
<!--<script src="http://a.tbcdn.cn/apps/top/x/sdk.js?appkey=21036824"></script> -->
<script type="text/javascript" src="${base}/static/findPassword/Login_Cookie.js.下载"></script>
<script type="text/javascript">
    function setLang(lang) { $.cookie('LN', lang, { expires: 7, path: '/' }); location.reload(); }
    </script>
    
    <script type="text/javascript">

    var _dctc = _dctc || {};

    _dctc._account = _dctc._account || ['UA-25297079-1'];

    _dctc.isNorth = _dctc.isNorth || 'Y';

    _dctc.bid = '27';

    (function () {

        var script = document.createElement('script'); script.type = 'text/javascript'; script.async = true;

        script.src = 'https://static.soufunimg.com/count/load.min.js';

        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(script, s);

    })();

</script>

<div id="youtxlogin" class="header" style="display: none">
    <p class="logo">
        <a href="http://www.youtx.com/" target="_blank">
            <img src="${base}/static/findPassword/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
    </p>
    <p class="btncz"><a id="A2" style="cursor:default;" target="_blank" rel="nofollow" onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;publish&#39;});}">我是房东</a></p>
    <ul class="HeadLandlord">
        <li class="HeadLandlordNew"><a id="MallShopNum" target="_blank" href="http://www.youtx.com/mallshop/mallabout/">我要开店</a></li>
        <li><a target="_blank" href="http://www.youtx.com/room/new/">我要出租</a></li>
        <li><a target="_blank" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">订单管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/publish/DateMnage/">排期管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/User/Myroom/">房源管理</a></li>
        <li style="border:none;"><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">我的短租帮</a></li>
    </ul>
    <ul class="subnav">
        <li><a href="http://www.youtx.com/help/" rel="nofollow">帮助</a></li>
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/findPassword/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">短租帮</a></li>
        <li class="HeadLanguage"><a href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob">
            <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="youtx_04">手机游天下</a>
            <div class="ytxMobCon" style="display:none">
        	    <span class="arrowGy">◆</span>
                <span class="arrowWt">◆</span>
                <dl>
            	    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a href="http://www.youtx.com/mo/"><img src="${base}/static/findPassword/ewmANew.jpg" width="120" height="120"></a></dd>
                </dl>
                <dl>
            	    <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img src="${base}/static/findPassword/ewmBNew.jpg" width="102" height="102"></dd>
                    <dd>微信公众号：游天下</dd>
                </dl>
                <dl style="border:none;">
            	    <dt>手机浏览器访问游天下</dt>
                    <dd style="margin-top:45px;"><a href="http://m.youtx.com/" class="mbUrl">m.YouTX.com</a></dd>
                </dl>
            </div>
        </li>
        <li class="first firstNew">
              <span class="FirstSpan FirstSpan02"><a href="http://www.youtx.com/home/dashboard/" rel="nofollow">Hi,<span id="liname">游天下</span></a><span class="JianTouIco"></span></span>
              <div class="UlName UlName02">
                   <div><a href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx" rel="nofollow">已预订的房间</a><span id="RoomsNumSpan" class="font_red">(0)</span></div>
                   <div><a href="http://www.youtx.com/User/MyMailBox/" rel="nofollow">站内信</a><span id="MsgNumSpan" class="font_red">(0)</span></div>
                   <div><a href="https://passport.youtx.com/profile/User/MailBox/SystemMail.aspx" rel="nofollow">系统通知</a><span id="SysMsgNumSpan" class="font_red">(0)</span></div>
                   <div id="FavNumLi"><a href="https://passport.youtx.com/payment/User/MyCollection/Collection.aspx" title="查看我收藏的房间" rel="nofollow">收藏夹</a></div>
                   <div style="border:none;"><a href="http://www.youtx.com/user/logout/" rel="nofollow">退出</a></div>
              </div>
        </li>
    </ul>
</div>
<!--头 已登录 end-->
<!--头 未登录 start-->
<div id="youtxloginw" class="header">
    <p class="logo">
        <a href="http://www.youtx.com/" target="_blank">
            <img src="${base}/static/findPassword/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
    </p>
    <p class="btncz"><a id="A3" style="cursor:default;" target="_blank" rel="nofollow" onclick="if(_dctc.trackEvent){_dctc.trackEvent({c:&#39;index&#39;, a:&#39;publish&#39;});}">我是房东</a></p>
    <ul class="HeadLandlord">
        <li class="HeadLandlordNew"><a target="_blank" href="http://www.youtx.com/mallshop/mallabout/">我要开店</a></li>
        <li><a target="_blank" href="http://www.youtx.com/room/new/">我要出租</a></li>
        <li><a target="_blank" href="http://www.youtx.com/payment/User/MyroomEn/OrderManageEn.aspx">订单管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/publish/DateMnage/">排期管理</a></li>
        <li><a target="_blank" href="http://www.youtx.com/User/Myroom/">房源管理</a></li>
        <li style="border:none;"><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">我的短租帮</a></li>
    </ul>
    <ul class="subnav">
        <li><a href="http://www.youtx.com/help/" rel="nofollow">帮助</a></li>
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/findPassword/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob">
            <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
            <div class="ytxMobCon" style="display:none">
        	    <span class="arrowGy">◆</span>
                <span class="arrowWt">◆</span>
                <dl>
            	    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a href="http://www.youtx.com/mo/"><img src="${base}/static/findPassword/ewmANew.jpg" width="120" height="120"></a></dd>
                </dl>
                <dl>
            	    <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img src="${base}/static/findPassword/ewmBNew.jpg" width="102" height="102"></dd>
                    <dd>微信公众号：游天下</dd>
                </dl>
                <dl style="border:none;">
            	    <dt>手机浏览器访问游天下</dt>
                    <dd style="margin-top:45px;"><a href="http://m.youtx.com/" class="mbUrl">m.YouTX.com</a></dd>
                </dl>
            </div>
        </li>
        <li>
            <a href="https://passport.youtx.com/user/login/" rel="nofollow">登录</a>
        </li>
        <li class="firstNew">
            <a id="reg" href="https://passport.youtx.com/user/regist/" rel="nofollow" style="color:#fa2b2b;">注册就送100元</a>
        </li>
    </ul>
</div>
      <div class="Registration_main">
        <div class="Registration_left" style="background:url(/profile/images/Passport/RegistrationBg.gif) no-repeat 5px bottom;"></div>
        <div class="Registration_right">
          <span class="Registration_You_z">找回密码</span>
          <div class="Registration_tab pt20">
            <p style=" color:#000">请输入您的已验证的手机号，我们将向您发送用于找回密码的信息</p>
            <p style=" color:#000">境外手机号请联系客服，客服热线：400-630-0088（8：00-24:00），客服邮箱：service@youtx.com</p>
            <div class="item_listxt">
              <div class="input290">
                <input type="text" id="forgot_Phone" placeholder="已绑定的手机" class="input" style="height: 30px;border-color: #4c3000">
              </div>
                <p class="item_listxt_error" id="ErrorMsg">请输入已验证的手机</p>

              <div class="Registration_btn">
                <input name="" type="button" class="btn152" id="sendphone" value="确认发送" onclick="sendEmailNew()"style="background-color: #4c9300;color: #fff3cf">
                <p id="sendErrorMsg" class="item_listxt_error" style="display:none"></p>
              </div>
            </div>
          </div>
        </div>
      </div>
        <script type="text/javascript">

        $(function () {
            $("#forgot_Phone").blur(function () {
                var rPhone = /^(((1[3-7]{1}[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
//               var checkPhone = /^1[3578]\d{9}$/;
                var sPhone = $.trim($("#forgot_Phone").val());
//                alert(sPhone.length);
                if (sPhone.length <= 0) {
                    $("#ErrorMsg").html('请填写注册手机');
                    $("#ErrorMsg").css('visibility', 'visible');
                    return;
                }else {
                    $("#ErrorMsg").html('');
                }
                if (!rPhone.test(sPhone)) {
                    $("#ErrorMsg").html('手机格式不正确');
                    $("#ErrorMsg").css('visibility', 'visible');
                    return;
                }else {
                    $("#ErrorMsg").html('');
                }

            });

            $("#sendphone").click(function () {
                var sPhone = $.trim($("#forgot_Phone").val());
                var  sss = $("#ErrorMsg").html();
                if(sss == "请输入已验证的手机"){
                    alert(sss);
                    return;
                }
                if(sss == "手机格式不正确"){
                    alert("请输入手机格式不正确");
                    return;
                }
                if(sss == "请填写注册手机"){
                    alert(sss);
                    return;
                }

                $.post(
                        "${base}/reg/checkPhone2",
                        {"phone":sPhone},
                        function (data) {
//                            alert(data.code);
                            if(data.code == "6"){
                                window.location.href="${base}/user/updatepassword";
                            }else if(data.code == "9"){
//                                alert("1");
                                alert(data.msg);
                            }else {
//                                alert("2");
                                alert(data.msg);
                            }
                        }
                );
            });
        });

        </script>


        <!--尾部2011-9-6修改 start-->
        <div class="footer">
    <dl class="FooterCity">
      <dd class="footer_link_grey">热门城市：</dd>
       <dt><a href="http://www.youtx.com/beijing/" target="_blank">北京短租房</a>|<a href="http://www.youtx.com/shanghai/" target="_blank">上海短租房</a>|<a href="http://www.youtx.com/guangzhou/" target="_blank">广州短租房</a>|<a href="http://www.youtx.com/shenzhen/" target="_blank">深圳短租房</a>|<a href="http://www.youtx.com/hongkong/" target="_blank">香港短租房</a>|<a href="http://www.youtx.com/sanya/" target="_blank">三亚短租房</a>|<a href="http://www.youtx.com/suzhou/" target="_blank">苏州短租房</a>|<a href="http://www.youtx.com/hangzhou/" target="_blank">杭州短租房</a>|<a href="http://www.youtx.com/nanjing/" target="_blank">南京短租房</a>|<a href="http://www.youtx.com/xian/" target="_blank">西安短租房</a>|<a href="http://www.youtx.com/dalian/" target="_blank">大连短租房</a>|<a href="http://www.youtx.com/qingdao/" target="_blank">青岛短租房</a>|<a href="http://www.youtx.com/chongqing/" target="_blank">重庆短租房</a> <a href="http://www.youtx.com/chengdu/" target="_blank">成都短租房</a>|<a href="http://www.youtx.com/wuhan/" target="_blank">武汉短租房</a>|<a href="http://www.youtx.com/tianjin/" target="_blank">天津短租房</a>|<a href="http://www.youtx.com/kunming/" target="_blank">昆明短租房</a>|<a href="http://www.youtx.com/lijiang/" target="_blank">丽江短租房</a>|<a href="http://www.youtx.com/xiamen/" target="_blank">厦门短租房</a>|<a href="http://www.youtx.com/lasa/" target="_blank">拉萨短租房</a>|<a href="http://www.youtx.com/zhengzhou/" target="_blank">郑州短租房</a>|<a href="http://www.youtx.com/changsha/" target="_blank">长沙短租房</a>|<a href="http://www.youtx.com/changchun/" target="_blank">长春短租房</a>|<a href="http://www.youtx.com/shenyang/" target="_blank">沈阳短租房</a>|<a href="http://www.youtx.com/guilin/" target="_blank">桂林短租房</a>|<a href="http://www.youtx.com/cities/" target="_blank">更多...</a>
    </dt></dl>
    <div class="CB"></div>
    <ul class="footer_link">
      <li><a href="http://www.youtx.com/help/about/" target="_blank" rel="nofollow">关于我们</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/help/contact/" target="_blank" rel="nofollow">联系我们</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/help/jobs/" target="_blank" rel="nofollow">招聘</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/help/service/" target="_blank" rel="nofollow">服务协议</a></li>
      <li class="footer_link_space">|</li>
      <li><a href="http://www.youtx.com/feedback/" target="_blank" rel="nofollow" id="A1">意见反馈</a></li>
      <li class="footer_link_space">|</li>
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="${base}/static/findPassword/at.jpg"> <span>youtx.com</span></li>
    </ul>   
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/zhuanti/duanzufang/" target="_blank" rel="nofollow">短租房推荐</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="Li2"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>

    <ul class="FooterNet" style="width:475px;"><li class="FontArial02">Copyright © <script type="text/javascript">document.write((new Date()).getFullYear());</script>2018 Youtx.com, All Rights Reserved<br><a href="https://passport.youtx.com/profile/images/icp.jpg" target="_blank" rel="nofollow">京ICP证041065号</a> 京公网安备11010602010093号-2</li>
    <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="${base}/static/findPassword/VerisignYoutx.gif" height="35" width="60"></a></li>
    <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="${base}/static/findPassword/FooterNetPic.gif"></a></li>
    </ul>
</div>
<!--2013-6-26修改-->
<script type="text/javascript">
    $(document).ready(function () {
        $('body').append('<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="/profile/images/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="/profile/images/ewm.png?v=1"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div>');
        $(".FeedBackColse").click(function () {
            $(".feedbackbox").hide();
        })
    });
</script>
<!--2013-6-26修改-结束-->

        <!--尾部2011-9-6修改 end-->        
    </div>


<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="${base}/static/findPassword/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/findPassword/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div></body></html>