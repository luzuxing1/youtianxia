<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0078)https://passport.youtx.com/payment/Booking/NewBookingPay.aspx?paycode=52283724 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <#assign base=request.contextPath />
        <base id="base" href="${base}">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Cache-Control" content="max-age=86400">
    
        <img src="${base}/static/pay_money/countpv" width="0" height="0"><script type="text/javascript" async="" src="${base}/static/pay_money/load.min.js.下载"></script><script src="${base}/static/pay_money/jquery-1.6.2.min.js.下载" language="javascript" type="text/javascript"></script>
        <link href="${base}/static/pay_money/public_PassPort.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="${base}/static/pay_money/jQuery.cookie.js.下载"></script>
            
        
    
    <title>订单付款-游天下</title>
    <meta http-equiv="expires" content="0">
    <link type="text/css" rel="stylesheet" href="${base}/static/pay_money/PassportNewOrder.css">

   

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
<script type="text/javascript" src="${base}/static/pay_money/Login_Cookie.js.下载"></script>
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

<div id="youtxlogin" class="header" style="">
    <p class="logo">
        <a href="http://www.youtx.com/" target="_blank">
            <img src="${base}/static/pay_money/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/pay_money/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/DateManage/DateManage.aspx">短租帮</a></li>
        <li class="HeadLanguage"><a href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob">
            <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="youtx_04">手机游天下</a>
            <div class="ytxMobCon" style="display:none">
        	    <span class="arrowGy">◆</span>
                <span class="arrowWt">◆</span>
                <dl>
            	    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a href="http://www.youtx.com/mo/"><img src="${base}/static/pay_money/ewmANew.jpg" width="120" height="120"></a></dd>
                </dl>
                <dl>
            	    <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img src="${base}/static/pay_money/ewmBNew.jpg" width="102" height="102"></dd>
                    <dd>微信公众号：游天下</dd>
                </dl>
                <dl style="border:none;">
            	    <dt>手机浏览器访问游天下</dt>
                    <dd style="margin-top:45px;"><a href="http://m.youtx.com/" class="mbUrl">m.YouTX.com</a></dd>
                </dl>
            </div>
        </li>
        <li class="first firstNew">
              <span class="FirstSpan FirstSpan02"><a href="http://www.youtx.com/home/dashboard/" rel="nofollow">Hi,<span id="liname">卢 祖兴</span></a><span class="JianTouIco"></span></span>
              <div class="UlName UlName02">
                   <div><a href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx" rel="nofollow">已预订的房间</a><span id="RoomsNumSpan" class="font_red">(2)</span></div>
                   <div><a href="http://www.youtx.com/User/MyMailBox/" rel="nofollow">站内信</a><span id="MsgNumSpan" class="font_red">(0)</span></div>
                   <div><a href="https://passport.youtx.com/profile/User/MailBox/SystemMail.aspx" rel="nofollow">系统通知</a><span id="SysMsgNumSpan" class="font_red">(3)</span></div>
                   <div id="FavNumLi"><a href="https://passport.youtx.com/s/fuser2600363/" title="查看我收藏的房间" rel="nofollow">收藏夹</a></div>
                   <div style="border:none;"><a href="http://www.youtx.com/user/logout/" rel="nofollow">退出</a></div>
              </div>
        </li>
    </ul>
</div>
<!--头 已登录 end-->
<!--头 未登录 start-->
<div id="youtxloginw" class="header" style="display: none;">
    <p class="logo">
        <a href="http://www.youtx.com/" target="_blank">
            <img src="${base}/static/pay_money/logo.jpg" alt="游天下 搜房网旗下-专业短租房、日租房网站" title="游天下 搜房网旗下-专业短租房、日租房网站"></a>
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
        <li><a href="http://www.youtx.com/profile/BookingTeam" target="_blank">团队订房</a><img alt="新" src="${base}/static/pay_money/NewIco.gif" style="display:none;left:45px;" class="PosAb TN17"></li>
        <li><a target="_blank" href="http://bang.youtx.com/">短租帮</a></li>
        <li class="HeadLanguage"><a href="http://en.youtx.com/">English</a></li>
        <li class="ytxMob">
            <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow" id="A1">手机游天下</a>
            <div class="ytxMobCon" style="display:none">
        	    <span class="arrowGy">◆</span>
                <span class="arrowWt">◆</span>
                <dl>
            	    <dt>扫描二维码安装游天下客户端</dt>
                    <dd><a href="http://www.youtx.com/mo/"><img src="${base}/static/pay_money/ewmANew.jpg" width="120" height="120"></a></dd>
                </dl>
                <dl>
            	    <dt><span class="ColorBlue">微信</span>扫描二维码使用游天下</dt>
                    <dd><img src="${base}/static/pay_money/ewmBNew.jpg" width="102" height="102"></dd>
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

    
    <div class="NewOrder">
        
        <div class="NewOrderLeft">
            <div>
                <img src="${base}/static/pay_money/OrderTitBg_z.gif" alt="">
            </div>
            
            <div class="landlord_agreed">
                <img src="${base}/static/pay_money/issuance_03.gif" alt="" width="28" height="28">
                <span>房东已接受您的订房请求，请及时付款！</span>
            </div>
            
            
            <div class="NewOrderContent">
                <div class="NewOrderTxt_new">
                    <div class="Pay_deposit">
                        <p>
                            您需要支付订金:<span class="Color_red">￥ ${price}</span></p>
                        <ul>
                            <input id="orderId" type="hidden" value="${orderId}">
                            <li>订单总额：<span class="Color_red">￥ ${price}</span></li>
                            <li>支付订金：<span class="Color_red">￥ ${price}</span><span><a class="calculate" href="javascript:void(0)">如何计算?</a></span></li>
                            <li>线下支付：<span class="Color_red">￥ 0</span><span class="Color_grey">(剩余费用)</span>+<span class="Color_red">￥ 200</span><span class="Color_grey">(押金)</span></li>
                            <li>交易规则：<span id="Punishment" class="Color_gree"><a target="_blank" href="http://www.youtx.com/CancelRule/#superhigh">极严的交易规则</a></span><span id="CashPledgeRule" class="Color_grey">(租客需在线支付全部房费作为订金)</span></li>
                            <img src="${base}/static/pay_money/Pay_deposit_arrow.gif" alt="" width="6" height="11">
                        </ul>
                    </div>
                    
                    <div id="Calculate" class="cboxContentNew" style="width: 480px; z-index: 9999999;
                        display: none; position: absolute;">
                        <h4>
                            在线支付额度</h4>
                        <div class="ReceiveScu_table02">
                            <table width="480" border="0">
                                <tbody><tr>
                                    <td class="ReceiveScu_td">
                                        房款（基本）
                                    </td>
                                    <td>
                                        <strong>
                                            ￥ 70</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ReceiveScu_td">
                                        房款（额外客人入住费用）
                                    </td>
                                    <td>
                                        <strong>
                                            </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ReceiveScu_td">
                                        *
                                        
                                    房东规定要在线支付100%的房款</td><td>
                                        <strong>
                                            ￥ 70=￥ 70</strong>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td class="ReceiveScu_td">
                                        清洁费
                                    </td>
                                    <td>
                                        <strong>
                                            ￥ 0</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ReceiveScu_td">
                                        增值服务费
                                    </td>
                                    <td>
                                        <strong>
                                            ￥ 0</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding: 10px 0 0 20px;">
                                        * 共计在线支付<strong>￥ 70</strong>
                                    </td>
                                </tr>
                            </tbody></table>
                        </div>
                        <div class="closeNew_btn">
                            close</div>
                    </div>
                    
                    
                    <div id="OtherBanks" class="NewSidebarBtnTxt" style="width: 680px; z-index: 9999999;
                        display: none; position: absolute;">
                        <p class="BorderBottom PB10" style="margin: 10px 0px;">
                            <span class="F14 FwB">选择银行</span></p>
                        <table cellspacing="0" cellpadding="0" border="0" class="order_pay_new_4xli">
                            <tbody><tr>
                                <td>
                                    <label>
                                        
                                        <input type="radio" value="10" name="type" class="BankRadio" paymethod="bankPay" defaultbank="SPABANK">
                                        <div class="Sdb">
                                        </div>
                                    </label>
                                </td>
                                <td>
                                    <label>
                                        
                                        <input type="radio" value="10" name="type" class="BankRadio" paymethod="bankPay" defaultbank="SPABANK">
                                        <div class="PingAn">
                                        </div>
                                    </label>
                                </td>
                                <td>
                                    <label>
                                        
                                        <input type="radio" value="10" name="type" class="BankRadio" paymethod="bankPay" defaultbank="GDB">
                                        <div class="Cgbchina">
                                        </div>
                                    </label>
                                </td>
                                <td>
                                    <label>
                                        
                                        <input type="radio" value="10" name="type" class="BankRadio" paymethod="bankPay" defaultbank="SHRCB">
                                        <div class="Srcb">
                                        </div>
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>
                                        
                                        <input type="radio" value="10" name="type" class="BankRadio" paymethod="bankPay" defaultbank="SHBANK">
                                        <div class="Shangha">
                                        </div>
                                    </label>
                                </td>
                                <td>
                                    <label>
                                        
                                        <input type="radio" value="10" name="type" class="BankRadio" paymethod="bankPay" defaultbank="NBBANK">
                                        <div class="Nbcb">
                                        </div>
                                    </label>
                                </td>
                                <td>
                                    <label>
                                        
                                        <input type="radio" value="10" name="type" class="BankRadio" paymethod="bankPay" defaultbank="HZCBB2C">
                                        <div class="Hzbank">
                                        </div>
                                    </label>
                                </td>
                                <td>
                                    <label>
                                        
                                        <input type="radio" value="10" name="type" class="BankRadio" paymethod="bankPay" defaultbank="BJBANK">
                                        <div class="Beijing">
                                        </div>
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>
                                        
                                        <input type="radio" value="10" name="type" class="BankRadio" paymethod="bankPay" defaultbank="BJRCB">
                                        <div class="Bjrcb">
                                        </div>
                                    </label>
                                </td>
                                <td>
                                    <label>
                                        
                                        <input type="radio" value="10" name="type" class="BankRadio" paymethod="bankPay" defaultbank="FDB">
                                        <div class="FudianBank">
                                        </div>
                                    </label>
                                </td>
                                <td>
                                    <label>
                                        
                                        <input type="radio" value="10" name="type" class="BankRadio" paymethod="bankPay" defaultbank="WZCBB2C-DEBIT">
                                        <div class="Wzbank">
                                        </div>
                                    </label>
                                </td>
                            </tr>
                        </tbody></table>
                        <div id="closeDiv" class="SidebarBtnTxtClose">
                        </div>
                        <p class="BorderTop">
                        </p>
                        <div class="SidebarGrayBtn">
                            <a onclick="payClick()" href="javascript:hide();">下一步</a>
                        </div>
                    </div>
                    
                    <div class="Use_pay" id="Tickets" style="display:none">
                        <h2 id="UsingTicketsH2" class="Use_payH2" style="border-bottom: 1px solid #BBBBBB">
                            使用代金券</h2>
                        <div id="Use_pay_Table" class="Use_pay_Table">
                        </div>
                        
                        <div id="TicketsMessage" class="Color_red">
                        </div>
                        <div id="Use_pay_q" class="Use_pay_q" style="display: none;">
                            <h4>
                                您已选择:<span id="TicketDenomination" class="Color_gree">￥0</span>代金卷<span style="font: 12px/40px &#39;宋体&#39;" class="Color_grey">（多余金额不找零）</span></h4>
                            <h5>
                                使用说明：</h5>
                            <p>
                                代金券不能直接抵扣房费，抵值金额将在您入住结束（2018.06.12 12:00）后，自动返还到您在游天下的资金账户中。
                            </p>
                        </div>
                    </div>
                    <div class="Use_pay" id="Packets" style="display: none;">
                        <h2 id="UsingPacketsH2" class="Use_payH2" style="border-bottom: 1px solid #BBBBBB">
                            使用红包</h2>
                        <div id="Use_Packets_Table" class="Use_pay_Table">
                        </div>
                        
                        <div id="PacketsMessage" class="Color_red">
                        </div>
                        <div id="Use_Packets" class="Use_pay_q" style="display: none">
                            <h4>
                                您已选择:<span id="PacketDenomination" class="Color_gree">￥0</span>红包<span style="font: 12px/40px &#39;宋体&#39;" class="Color_grey">（多余金额不找零）</span></h4>
                            
                        </div>
                    </div>
                    <div class="Use_pay" id="payDeposit" style="padding-top: 30px; display: none;">
                        <h3>
                            使用账户现金</h3>
                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                            <tbody><tr id="xianjin">
                                <td width="697" colspan="2">
                                    <input name="ctl00$ctl00$body$ContentBody$UseCashPay" type="checkbox" id="UseCashPay" class="radio_n">用资金帐户余额付款<span id="Pay" class="Color_gree">￥0</span>(可用余额：<span id="Balance" class="Color_gree">￥0</span>)
                                </td>
                            </tr>
                            <tr id="fanxian">
                                <td width="697" colspan="2">
                                    <input name="ctl00$ctl00$body$ContentBody$UseFxPay" type="checkbox" id="UseFxPay" class="radio_n">用返现帐户余额付款<span id="fxPay" class="Color_gree">￥0</span>(可用余额：<span id="fxBalance" class="Color_gree">￥0</span>)
                                </td>
                            </tr>
                        </tbody></table>
                    </div>
                    <p id="BalancePay" style="text-align: center; display: none;">
                        <input type="button" style="margin: 10px 0 0 10px;" value="确认付款" name="book_it_button" id="Button1" onclick="payCashClick()" class="OrderCoBtn_new">
                    </p>
                </div>
                <div class="Pay_deposit_new" id="RestFunds" style="display: none;">
                    <p id="POtherPay">
                        还需要在线支付:<span id="SpanOtherPay" class="Color_red">￥ 70</span>
                    </p>
                </div>
            </div>
            
            
            <div id="PaymentManner" class="NewOrderContent">
                <div class="NewOrderTit">
                    选择支付方式</div>
                <div class="NewOrderTxt_New">
                    <div class="Payment_tab">
                        <ul class="Payment_List">
                            <li id="Three" class="List_Current">在线支付</li>
                            <li id="CreditCard">信用卡支付</li>
                          
                            <li id="DaiFu">找人代付</li>
                            
                            
                        </ul>
                        <div id="divThree" class="order_pay_U" style="display: block;">
                            <p style="margin: 20px 0px; color: #FF8262;">
                                温馨提示：建议使用IE浏览器进行支付，非IE浏览器可能会导致支付失败!</p>
                            <p style="margin: 20px 0px;">
                                <span style="color: #000" class="F14 FwB">网上银行</span></p>
                            
                            <table cellspacing="0" cellpadding="0" border="0" class="order_pay_new_4xli">
                                <tbody><tr>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="ICBCB2C" value="10">
                                            <div class="Icbc">
                                            </div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="CCB" value="10">
                                            <div class="Ccb">
                                            </div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="CMB" value="10">
                                            <div class="Cmbc">
                                            </div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="POSTGC" value="10">
                                            <div class="Psbc">
                                            </div>
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="BOCB2C" value="10">
                                            <div class="Bc">
                                            </div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="ABC" value="10">
                                            <div class="Abc">
                                            </div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="COMM" value="10">
                                            <div class="Ctb">
                                            </div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="CMBC" value="10">
                                            <div class="Cmsb">
                                            </div>
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="CITIC" value="10">
                                            <div class="Cct">
                                            </div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="CIB" value="10">
                                            <div class="Cib">
                                            </div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="CEBBANK" value="10">
                                            <div class="Ceb">
                                            </div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" paymethod="bankPay" defaultbank="SPDB" value="10">
                                            <div class="Spd">
                                            </div>
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" value="10" paymethod="bankPay" defaultbank="ICBCBTB">
                                            <div class="Icbc">
                                                <span class="BankFont">企<br>
                                                    业</span></div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" value="10" paymethod="bankPay" defaultbank="CCBBTB">
                                            <div class="Ccb">
                                                <span class="BankFont">企<br>
                                                    业</span></div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" value="10" paymethod="bankPay" defaultbank="ABCBTB">
                                            <div class="Abc">
                                                <span class="BankFont">企<br>
                                                    业</span></div>
                                        </label>
                                    </td>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" class="BankRadio" name="type" value="10" paymethod="bankPay" defaultbank="SPDBB2B">
                                            <div class="Spd">
                                                <span class="BankFont">企<br>
                                                    业</span></div>
                                        </label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 24px; padding-left: 24px; font-size: 14px; font-family: &#39;微软雅黑&#39;" colspan="4">
                                        <a class="ShowOtherBank" href="javascript:void(0)">选择其他银行</a> | <a target="_blank" href="http://www.youtx.com/help/pay#alipay">查看支付限额</a>
                                    </td>
                                </tr>
                            </tbody></table>
                            
                            <p class="BorderTop PT10" style="margin: 20px 0px;">
                                <span style="color: #000" class="F14 FwB">第三方支付平台</span>
                            </p>
                            
                            <table border="0" cellspacing="0" cellpadding="0" class="order_pay_new_4xli">
                                
                                <tbody><tr>
                                    <td width="25%">
                                        <label>
                                            
                                            <input type="radio" id="alipay" style="margin-right: 10px" name="type" defaultbank="" paymethod="" value="2" checked="checked">
                                            <img src="${base}/static/pay_money/NewPay4.gif" alt="支付宝"></label>
                                    </td>
                                    <td width="75%">
                                        <p class="payword">
                                            支持支付宝余额支付、网银支付、快捷支付、找人代付等。<br>
                                            <a target="_blank" href="http://www.youtx.com/help/pay#alipay">
                                                查看支付限额&gt;&gt;</a></p>
                                    </td>
                                </tr>
                                
                                
                                <tr>
                                    <td>
                                        <label>
                                            <!-- 银联在线 -->
                                            <input type="radio" id="yinlianonline" style="margin-right: 10px" name="type" defaultbank="8607" value="12">
                                            <img src="${base}/static/pay_money/NewPay1.gif" alt="银联在线"></label>
                                    </td>
                                    <td>
                                        <p class="payword">
                                            <font color="##FF0000">支持多家银行无需开通网银的在线支付</font>，仅需一张有银联标识的借记卡或信用卡。<br>
                                            <a target="_blank" href="http://www.youtx.com/help/pay#blquestion">
                                                查看支付说明&gt;&gt;</a></p>
                                    </td>
                                </tr>
                                
                                
                         
                                
                                
                                <tr>
                                    <td>
                                        <label>
                                            
                                            <input type="radio" id="yinlian" style="margin-right: 10px" name="type" defaultbank="" value="3">
                                            <img src="${base}/static/pay_money/NewPay3.gif" alt="网银"></label>
                                    </td>
                                    <td>
                                        <p class="payword">
                                            支持开通网上银行功能的信用卡和借记卡支付。<br>
                                            <a target="_blank" href="http://www.youtx.com/help/pay#bankonline">
                                                查看支付限额&gt;&gt;</a></p>
                                    </td>
                                </tr>
                                
                                
                                
                                
                            </tbody></table>
                            
                            <p style="text-align: center">
                                <input type="button" class="OrderCoBtn_new" onclick="payClick()" id="p4_book_it_button" name="book_it_button" value="确认付款" style="margin: 10px 0 0 10px;">
                            </p>
                        </div>
                        
                        <div id="divCreditCard" class="order_pay_U" style="display: none;">
                            <div class="NewOrderInfor_new">
                                <div class="NewOrderInfor_L">
                                    
                                    <table class="order_pay_new_3xli" cellspacing="0" cellpadding="0" border="0">
                                        <tbody>
                                            <tr>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input id="zhaoshangkuaijie" type="radio" defaultbank="CMB" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="Cmbc">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input type="radio" defaultbank="ICBC" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="Icbc">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input type="radio" defaultbank="CCB" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="Ccb">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input type="radio" defaultbank="ABC" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="Abc">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input type="radio" defaultbank="BOC" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="Bc">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input type="radio" defaultbank="CITIC" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="Cct">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input type="radio" defaultbank="SPDB" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="Spd">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input type="radio" defaultbank="CIB" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="Cib">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input type="radio" defaultbank="CMBC" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="Cmsb">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input type="radio" defaultbank="CEB" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="Ceb">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input type="radio" defaultbank="PAB" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="PingAn">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                                
                                                <td>
                                                    <label class="Label01">
                                                        <input type="radio" defaultbank="GDB" paymethod="CNP" class="BankRadio" name="kjBank" value="22">
                                                        <div class="Cgbchina">
                                                            <span class="BankFontK">快<br>
                                                                捷</span></div>
                                                    </label>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td style="height: 30px;">
                                                    <a onclick="payOtherClick();" href="javascript:void(0)">选择其他银行&gt;&gt;</a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    
                                    
                                   <div class="yinlianonline HuanXun">
                                        <label class="Label">
                                            <input type="radio" value="12" id="Radio1" name="kjBank" class="BankRadio" defaultbank="8607" paymethod="">
                                            <div class="OnlineCup MR10">
                                            </div>
                                        </label>
                                        <span>支持多家银行信用卡，信用卡无需开通网银。<br>
                                            <a target="_blank" href="http://www.youtx.com/help/pay#blquestion">查看支付帮助&gt;&gt;</a>
                                        </span>
                                        <div class="CB">
                                        </div>
                                    </div>
                                    
                                    <div style="padding-left: 85px">
                                        <input id="Next_Book_It_Button" class="OrderCoBtn_new" type="button" style="margin: 10px 0 0 10px;" value="确认支付" name="next_book_it_button" onclick="payClick()">
                                        <div id="divPadPrompt" style="display: none" class="PadPrompt">
                                            <p>
                                                平板（Pad）支付友情提示：</p>
                                            <p>
                                                1、用平板访问本网站，建议使用信用卡支付，成功率更高。</p>
                                            <p>
                                                2、如果没有相应信用卡，可选择<a href="http://m.youtx.com/Orders/Pay.aspx?im=zk&amp;oid=752587">去wap支付</a></p>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="CB">
                            </div>
                        </div>
                        
                        <!--国际信用卡支付 2013-9-25修改 start-->
                        <div class="order_pay_0000" id="divForCard" style="display: none;">
                            <div class="NewOrderInfor_L">
                                <h3 style="margin: 10px 0px;">
                                    <span class="F14 FwB" style="color: #000">付款说明</span></h3>
                                <ul class="StatUl">
                                    <li>应付金额：<b id="YingFuJinE" class="Colorff6037">￥ 70</b> 元人民币</li>
                                    <li>手续费：<b id="ShouXuFei" class="Colorff6037">￥ 3</b> 元人民币</li>
                                    <li>总计：<b id="ZongJi" class="Colorff6037">￥ 73</b> 元人民币<span class="ColorBlue">（约<span id="MeiYuan" class="Colorff6037">$ 10.61</span>，实际扣款美元金额，以银行信用卡账单为准）</span></li>
                                </ul>
                                <h3 style="margin: 20px 0px 10px;">
                                    <span class="F14 FwB" style="color: #000">选择卡种</span></h3>
                                <table class="CardsTable">
                                    <tbody><tr>
                                        <td>
                                            <label>
                                                <input class="CardsRadio" type="radio" name="radio" id="Visa" defaultbank="cybs-visa" paymethod="jvm-3d">Visa</label>
                                        </td>
                                        <td>
                                            <img class="FL" src="${base}/static/pay_money/IcoVisa.gif">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <input class="CardsRadio" type="radio" name="radio" id="Master" defaultbank="cybs-master" paymethod="jvm-3d">Master Card</label>
                                        </td>
                                        <td>
                                            <img class="FL" src="${base}/static/pay_money/IcoMasterCard.gif">
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td>
                                            <label>
                                                <input class="CardsRadio" type="radio" name="radio" id="JCB" defaultbank="cybs-jcb" paymethod="jvm-3d">JCB</label>
                                        </td>
                                        <td>
                                            <img class="FL" src="${base}/static/pay_money/IcoJCB.gif">
                                        </td>
                                    </tr>
                                    <tr class="CardsTableBtn">
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <input type="button" class="OrderCoBtn_new" onclick="payClick()" value="确认支付">
                                        </td>
                                    </tr>
                                </tbody></table>
                                <div class="Illustrate">
                                    <p>
                                        本付款为美元（$USD），需使用中国大陆以外地区发行的带有Visa、MasterCard标志的信用卡，支付过程中需输入预留在银行的"3D认证码"，若不清楚，请联系发卡行查询。</p>
                                    <div class="PT10">
                                        <a target="_blank" href="http://www.youtx.com/help/pay#foreigncard">查看详细支付帮助&gt;&gt;</a></div>
                                </div>
                            </div>
                            <div class="NewOrderInfor_R">
                                <div class="ContactPeo_new">
                                    <h2>
                                        信用卡安全保障</h2>
                                    <p>
                                        1.完善的管理，专业的分工，标准化的流程，严格的监控体系。</p>
                                    <p>
                                        2.完备的风险控制体系，遵从信用卡支付安全国际标准。</p>
                                    <p>
                                        3.先进的专线连接及加密方法，从技术上确保安全。</p>
                                    <a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN">
                                        <img alt="" src="${base}/static/pay_money/ContactPeonew_img.gif"></a>
                                </div>
                            </div>
                            <div class="CB">
                            </div>
                        </div>
                        <!--国际信用卡支付 2013-9-25修改 end-->
                        
                        <div id="divDaiFu" class="order_pay_U" style="display: none">
                            <ul class="PayUl">
                                <li>
                                    <label>
                                        <input type="radio" name="radio" id="alipayDaiFu"><img alt="支付宝代付" src="${base}/static/pay_money/u96_original.jpg"></label></li>
                                <li style="display: none;">
                                    <label>
                                        <input type="radio" name="radio" id="youtxDaiFu"><img alt="游天下代付" src="${base}/static/pay_money/u100_original.jpg"></label></li>
                                <li class="PayUlBtn">
                                    <input type="button" value="申请支付" onclick="payOnBehalfClick();" class="OrderCoBtn_new"></li>
                            </ul>
                        </div>
                        
                        
                        <div id="divPaypal" class="order_pay_U" style="display: none">
                            <div class="NewOrderInfor_new">
                                <div class="NewOrderInfor_L">
                                    <h2 class="Paypal">
                                        该付款使用美元（$USD）,您需支付的金额为<span class="Color_red payTotal">$</span> USD.
                                    </h2>
                                    <div class="PaypalMessage">
                                        <img src="${base}/static/pay_money/paypal_logo.gif" width="106" height="29">
                                        <h2 class="PaypalMessageH2">
                                            付款说明
                                            <div>
                                                如果您使用的是MasterCard信用卡进行支付，并且主币种非美元，请您先致电Paypal直接从美元账户扣款，以免转汇给您带来损失。
                                            </div>
                                        </h2>
                                        <ul>
                                            <li><span class="PaypalMessage_p">应付金额：</span><span class="Color_red payAmount">$</span>USD</li>
                                            <li><span class="PaypalMessage_p">手续费：</span><span class="Color_red handlingFee">$</span>USD<span class="Color_grey ML10">Paypal直接收取</span></li>
                                            <li><span class="PaypalMessage_p">总计：</span><span class="Color_red payTotal">$</span>USD</li>
                                            <li class="Color_grey">点击Paypal支付 按钮，将跳转到Paypal页面完成支付！</li>
                                        </ul>
                                    </div>
                                    <div class="PaypalBtn">
                                        <input id="book_it_button" class="OrderCoBtn_new" type="button" value="PayPal支付" name="book_it_button" onclick="payClick()">
                                    </div>
                                </div>
                                <div class="NewOrderInfor_R">
                                    <div class="ContactPeo_new">
                                        <h2>
                                            信用卡安全保障</h2>
                                        <p>
                                            1.完善的管理，专业的分工，标准化的流程，严格的监控体系。</p>
                                        <p>
                                            2.完备的风险控制体系，遵从信用卡支付安全国际标准。</p>
                                        <p>
                                            3.先进的专线连接及加密方法，从技术上确保安全。</p>
                                        <a href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" target="_blank">
                                            <img src="${base}/static/pay_money/ContactPeonew_img.gif" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div id="divPhonePay" class="order_pay_U" style="display: none">
                            <div class="NewOrderInfor_new">
                                <div class="NewOrderInfor_L">
                                    <div class="Pay_deposit_p">
                                        <p>
                                            订单编号：52283724</p>
                                        <ul>
                                            
                                            <img src="${base}/static/pay_money/Pay_deposit_arrow.gif" width="6" height="11">
                                        </ul>
                                        <p style="font-weight: normal; padding: 20px 0px; *width: 400px">
                                            请拨打我们的客服热线<span class="Color_gree" style="">400-630-0088</span>完成支付</p>
                                        <div class="pay_tital">
                                            <h2>
                                                温馨提示：</h2>
                                            <ul class="pay_tital_ul">
                                                <li>1.招商银行将以回呼的方式帮您完成支付：您通过电话告知我们的客服人员您的招商银行信用卡号码，我们录入系统后，招商银行95555会回呼到您在银行预留的手机号码，按照提示即可完成支付；</li>
                                                <li>2.其它银行，请按照客服的提示，输入相应的信息即可完成支付。</li>
                                                <li>3.我们保证不记录用户的数据，我们会通过加密的方式把您的数据提交给银行。</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="NewOrderInfor_R">
                                    <div class="ContactPeo_new">
                                        <h2>
                                            信用卡安全保障</h2>
                                        <p>
                                            1.完善的管理，专业的分工，标准化的流程，严格的监控体系。</p>
                                        <p>
                                            2.完备的风险控制体系，遵从信用卡支付安全国际标准。</p>
                                        <p>
                                            3.先进的专线连接及加密方法，从技术上确保安全。</p>
                                        <a href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" target="_blank">
                                            <img src="${base}/static/pay_money/ContactPeonew_img.gif" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="NewOrderTxt_foot">
                        <h2>
                            如何进行大额支付：
                        </h2>
                        <ul>
                            <li><span class="number">1、</span><span class="font_p">如果您的订单金额较大，可以直接在您的游天下 <a target="_blank" href="http://www.youtx.com/profile/cashaccount/">资金账户</a>
                                先进行充值（<a target="_blank" href="http://www.youtx.com/help/pay#cashaccount">如何充值？</a>），然后再使用
                                <a target="_blank" href="http://www.youtx.com/profile/cashaccount/">
                                    资金账户</a>一次性大额付款（<a target="_blank" href="http://www.youtx.com/help/pay#cashaccount">资金账户如何付款？</a>)；</span></li>
                            <li><span class="number">2、</span><span class="font_p">如果您没有开通网银，可以选择银联在线( <a target="_blank" href="http://www.youtx.com/help/pay#blquestion">查看帮助</a>)即可进行两万元以下的支付，支持信用卡与借记卡；</span></li>
                            <li><span class="number">3、</span><span class="font_p">如果您有支付宝(<a target="_blank" href="http://www.youtx.com/help/pay">查看帮助</a>)、财付通账户( <a target="_blank" href="http://www.youtx.com/help/pay#wealthpay">查看帮助</a>)，可以先充值到账户，然后再使用账户余额一次性大额付款。</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            
        </div>
        <!--2012-03-07订单流程end-->
        
        <div class="NewOrderSiderBar">
            <div class="SiderBarBox">
                <div class="SiderBarBoxTit">
                    订单流程</div>
                <div class="SiderBarBoxTxt">
                    <p>
                        本页是支付订金页，请您核对内容无误后，确认付款。付款成功后等待入住：</p>
                    <ul class="OrderProcess">
                        <li>租客提交订单</li>
                        <li>房东确认订单</li>
                        <li>租客支付订金</li>
                        <li>租客入住并支付剩余房费</li>
                        <li class="OrderProcessEnd">入住结束后双方互评</li>
                    </ul>
                    <h3>
                        注意事项</h3>
                    <p>
                        1.付款后您可以联系房东沟通入住细节。</p>
                    <p>
                        2.如果您在支付订单后，想要取消预订，可以登录游天下，在"用户中心-我是租客-订单管理"页面中取消对应的订单，此时取消可能会扣除一部分费用。</p>
                </div>
            </div>
            <div class="SiderBarBox SiderBarBoxEnd">
                <div class="SiderBarBoxTit">
                    联系客服</div>
                <div class="SiderBarBoxTxt">
                    <h3>
                        游天下客服电话：</h3>
                    <div class="SiderBarBoxTel">
                        400-630-0088</div>
                    <h3>
                        游天下在线客服：</h3>
                    <p class="BoxTime">
                        ( 周一至周日8:00-24:00 )</p>
                    <p class="Contact">
                        <a target="_blank" href="http://qiao.baidu.com/v3/?module=default&amp;controller=im&amp;action=index&amp;ucid=3540858&amp;type=n&amp;siteid=4553352">
                            联系客服</a></p>
                </div>
            </div>
        </div>
        
    </div>
    
    <a style="display: none;" id="plpayment"></a>
    <div id="Payment" style="width: 480px; z-index: 9999999; display: none; position: absolute;" class="cboxContentNew">
        <h4>
            登录网上银行或通过银联在线、支付宝、财付通付款</h4>
        <div class="ReceiveScu_table">
            <p class="New_PagChose">
                <span></span>请在新开页面完成付款后选择</p>
            <p class="ReceiveScuLink">
                付款成功：<a href="http://www.youtx.com/payment/User/TravelEn/TenantsOrderManageEn.aspx">查看出行计划</a></p>
            <p class="ReceiveScuLink">
                付款失败：<a href="http://www.youtx.com/help/pay/" target="_blank">查看支付帮助</a><a style="padding-left: 20px;
                    cursor: pointer;" class="closebtn">选择其他付款方式</a></p>
        </div>
        <div class="closeNew_btn">
            close</div>
    </div>
    
    
    
    <input name="ctl00$ctl00$body$ContentBody$txtPayCode" type="hidden" id="txtPayCode" value="7AF049801DBC1D821B3C9070E7EBF632">
    <input name="ctl00$ctl00$body$ContentBody$txtTicketID" type="hidden" id="txtTicketID">
    <input name="ctl00$ctl00$body$ContentBody$TicketName2" type="hidden" id="TicketName2">
    <input name="ctl00$ctl00$body$ContentBody$TicketPassword2" type="hidden" id="TicketPassword2">
    <input name="ctl00$ctl00$body$ContentBody$BeginTime" type="hidden" id="BeginTime" value="2018-06-10 09:00:00">
    <input name="ctl00$ctl00$body$ContentBody$txtPayType" type="hidden" id="txtPayType" value="2">
    <input name="ctl00$ctl00$body$ContentBody$txtDefaultBank" type="hidden" id="txtDefaultBank" value="">
    <input id="txtPayMethod" type="hidden" value="directPay">
    <input name="ctl00$ctl00$body$ContentBody$txtLiIndex" type="hidden" id="txtLiIndex" value="0">
    <input id="txtInfo" type="hidden" value="0">
    
    <input name="ctl00$ctl00$body$ContentBody$txtPacketID" type="hidden" id="txtPacketID">
    <input name="ctl00$ctl00$body$ContentBody$txtPacketCode" type="hidden" id="txtPacketCode">
    <input name="ctl00$ctl00$body$ContentBody$txtPacketPassword" type="hidden" id="txtPacketPassword">
    
    <input name="ctl00$ctl00$body$ContentBody$txtFanXian" type="hidden" id="txtFanXian">
    
    <!--Cps页面布码Begin-->
    <script type="text/javascript">
        var ScrW = window.screen.width;
        var ScrH = window.screen.height;
        var LyUrl = escape(encodeURI(document.referrer));
        var DqUrl = escape(encodeURI(document.URL));
        var VPType = "6";
        var CpsSite = 'https://passport.youtx.com';
        var PostUrl = CpsSite + '/profile/Cps/CpsViewRecordPP.aspx?ScrW=' + ScrW + '&ScrH=' + ScrH + "&LyUrl=" + LyUrl + "&VPType=" + VPType + "&DqUrl=" + DqUrl;
        document.write("<scri" + "pt src='" + PostUrl + "'></scr" + "ipt>"); 
    </script><script src="${base}/static/pay_money/CpsViewRecordPP.aspx"></script>
    <!--Cps页面布码End-->
    <script src="${base}/static/pay_money/popupLayer.js.下载" type="text/javascript"></script>
    <script src="${base}/static/pay_money/jQuery.cookie.js(1).下载" language="javascript" type="text/javascript"></script>
    <script type="text/javascript" src="${base}/static/pay_money/merchant.js.下载"></script>
    <script type="text/javascript" language="javascript">
        var balance = parseInt('0');    //资金账户现金总余额
        var balance1=parseInt(0); ///展示Balance元素的值(剩余现金)
        var balance2=parseInt(0); ///展示Pay元素的值（要支付现金）
        var balance3=parseInt(0); ///账户余额
        var balance4=parseInt('0'); //返现总余额
        var balance5=parseInt(0); //返现余额（剩下的返现余额）
        var balance6=parseInt(0); //返现支付金额（要用的）
        var otherbalance=parseInt(0);///展示还需要在线支付的钱数
        var balancepay=parseInt(0);///实际消费的资金金额
        var cashPledge = 0;    //订金
        var ticketPay = 0;  //代金券金额
        var packetPay = 0;  //红包金额
        var limitNum = 0;   
        var cookieLN = "zh";  
        var currency = "CNY";
        var currencyrate = "1.00";
        var redpackethtml="";
        var redpacketval=parseInt(0);
        var redpacketids=",";
        var isclicked=false;
        var ticketHide = false;
        var packetHide = false;
        var cashtype=parseInt(0);
        
        $(function () {
            document.domain = "youtx.com";
            cashPledge = parseFloat("70.00"); 
            redpackethtml = "";
            $("#UseCashPay").removeAttr("checked");
            $("#UseFxPay").removeAttr("checked");
    ///当订单金额不大于100的时候不能使用代金券，代金券列表隐藏
    ticketPay = '100';
    var houseCost = "70.00";
    //if ((parseInt(houseCost) < parseInt(ticketPay)) || ('0'!="0") ) {
    
    ticketHide = 'True';
    if((parseInt(houseCost) < parseInt(ticketPay)))
    {
        $("#Tickets").hide();
        if(console){
            console.log("隐藏了代金券，为什么？");
            console.log(parseInt(houseCost) <= parseInt(ticketPay));
            console.log(('0'!="0"));
            }
    }
    else 
    {
        if((ticketHide=="True") || ('0'==7))
        {
            $("#Tickets").hide();
        }
        else {
            $("#Tickets").show();
        }
    }
        
    packetHide = 'True';
    packetPay = '100';
    if(packetHide == "True")
    {
        if((parseInt(houseCost) < parseInt(packetPay)))
        {
            $("#Packets").hide();      
        }
        else
        {
            $("#Packets").show(); 
        }
    }else{
       $("#Packets").show(); 
    }
   
    //红包的显示隐藏
    var cookiePayType = getcookie("paytype");
    var txtPayType = $("#txtPayType").val();
    var u = navigator.userAgent;
    $('input[type="radio"]').removeAttr("checked");
    if (u.indexOf('Windows') <= -1){
        $("#txtDefaultBank").val("CMB");
        $('#zhaoshangkuaijie').attr("checked", "checked");
        $("#txtPayType").val("22");
        $("#txtPayMethod").val("motoPay");
        $(".HuanXunMes").hide();
    }else{
        $("#txtLiIndex").val("0");
    }
    ///红包和资金账户初始化
    if(balance>0||redpackethtml!="")
    {
        $(".Pay_deposit_new").hide();
        $("#payDeposit").show();
        if(balance>0)
        {
            //当余额不为0的时候，显示资金账户部分
            balance3=balance-balance4;
            if(balance3>0 && balance4==0)
            {
               $("#fanxian").hide();
               $("#xianjin").show();
               getCurrency($("#Balance"),"",balance3, "CNY");
               getCurrency($("#Pay"),"",0, "CNY");
            }
            else if(balance4>0 && balance3==0)
            {
               $("#xianjin").hide();
               $("#fanxian").show();
               getCurrency($("#fxBalance"),"",balance4, "CNY");
               getCurrency($("#fxPay"),"",0, "CNY");
            }
            else
            {
               $("#xianjin").show();
               getCurrency($("#Balance"),"",balance3, "CNY");
               getCurrency($("#Pay"),"",0, "CNY");
               $("#fanxian").show();
               getCurrency($("#fxBalance"),"",balance4, "CNY");
               getCurrency($("#fxPay"),"",0, "CNY");
            }
        }else 
        {
            //当余额为0的时候，不显示资金账户部分
            $("#xianjin").hide();
            $("#UseCashPay").checked = false;
             $("#fanxian").hide();
            $("#UseFxPay").checked = false;
        }
        if(redpackethtml=="") 
        {
            $("#fanxian").siblings().removeClass('radio_n redpacket');
        }
        else
        {
            $("#fanxian").after(redpackethtml);
            $("#fanxian").siblings().children("radio_n").checked = false;
        }
    } 
    else 
    {
        //资金账户异常，可能被冻结
        $("#payDeposit").hide();
        $(".Pay_deposit_new").hide();
        $(".radio_n").checked = false;
    }///红包和资金账户初始化 End
    
    if (u.indexOf('Windows') <= -1){
        $("#divPadPrompt").show();
    }else{
        $("#divPadPrompt").hide();
    }
    var payCode = $("#txtPayCode").val();
    ///初始化代金券
    if ($("#txtTicketID").val() != "0" && $("#txtTicketID").val() != "" && $("#txtTicketID").val() != null) {
        $.ajax({
            type: "GET",
            url: "/payment/Ajax/AjaxTicket.aspx?",
            data: "type=GetTicketDenominationByTicketID&TicketID=" + $("#txtTicketID").val() + "&PayCode=" + payCode + "&random=" + Math.random(),
            success: function (data) {
                if (data != "0" && data != null && data != "") {
                    ///选中了电子券
                    data = parseInt(data) - 0;
                    $("#TicketDenomination").html(" ￥" + data + " ");
                    $("#Use_pay_q").show();
                    $("#UsingTicketsH2").css("border-bottom", "");
                } else if (data == "0") {
                    ///选中了不使用代金券
                    $("#TicketDenomination").html(" ￥0 ");
                    $("#txtTicketID").val("0");
                    $("#UsingTicketsH2").css("border-bottom", "1px solid #BBBBBB");
                }
                ///以下代码：代金券列表隐藏，错误提示信息清空并隐藏，
                ///          实体券的编号和密码清空并且设置为不可用，按钮不可用，单选框value清空
                $("#Use_pay_q").show();
                $("#UsingTicketsH2").css("border-bottom", "");
            }
        });
    }

     ///初始化红包
    if ($("#txtPacketID").val() != "0" && $("#txtPacketID").val() != "" && $("#txtPacketID").val() != null) {
        $.ajax({
            type: "GET",
            url: "/payment/Ajax/AjaxPacket.aspx?",
            data: "type=GetPacketDenominationByPacketID&PacketID=" + $("#txtPacketID").val() + "&PayCode=" + payCode + "&random=" + Math.random(),
            success: function (data) {
                if (data != "0" && data != null && data != "") {
                    ///选中了红包
                    data = parseInt(data) - 0;
                    $("#PacketDenomination").html(" ￥" + data + " ");
                    $("#Use_Packets").show();
                    $("#UsingPacketsH2").css("border-bottom", "");
                } else if (data == "0") {
                    ///选中了不使用红包
                    $("#PacketDenomination").html(" ￥0 ");
                    $("#txtPacketID").val("0");
                    $("#UsingPacketsH2").css("border-bottom", "1px solid #BBBBBB");
                }
                ///以下代码：红包列表隐藏，错误提示信息清空并隐藏，
                ///          实体券的编号和密码清空并且设置为不可用，按钮不可用，单选框value清空
                $("#Use_Packets").show();
                $("#UsingPacketsH2").css("border-bottom", "");
            }
        });
    }


    $("#shangyinxin").click(function(){
        window.open("/payment/myexample/testajax.aspx?paycode=52283724","","");
    });
    $("#Tickets h2").click(function () { //点击使用代金券按钮触发
       
        var ticketsClass = $("#Tickets").attr("class");
        if (ticketsClass == "Use_pay") {   //点击使用代金券按钮触发，打开列表
            $("#Tickets").addClass("Use_payH2");
            $("#UsingTicketsH2").css("border-bottom", "");
            ///代金券的ID
            var ticketId = $("#txtTicketID").val();
            ///入住时间
            var useTime = $("#BeginTime").val();
            var ticketName2 = $("#TicketName2").val();
            if (ticketName2 != "" && ticketName2 != null) {
                ticketName2 = escape(ticketName2);
            }
            var ticketPassword2 = $("#TicketPassword2").val();
            if (ticketPassword2 != "" && ticketPassword2 != null) {
                ticketPassword2 = escape(ticketPassword2);
            }
            $.ajax({    //获取可用的代金券列表
                type: "GET",
                url: "/payment/Ajax/AjaxTicket.aspx?",
                data: "type=TicketListForNewBookingPay&IsUsed=0&TicketID=" + ticketId + "&UseTime=" + useTime + "&TicketName=" + ticketName2 + "&TicketPassword=" + ticketPassword2 + "&paycode=52283724"+ "&random=" + Math.random(),
                success: function (data) {
                    if (data != "" && data != null) {
                        $("#Use_pay_q").hide();
                        $("#Use_pay_Table").html(data);
                    } else {
                        $("#Tickets").removeClass("Use_payH2");
                        $("#UsingTicketsH2").css("border-bottom", "1px solid #BBBBBB");
                    }
                },
                error: function (err) {
                    $("#Tickets").removeClass("Use_payH2");
                    $("#UsingTicketsH2").css("border-bottom", "1px solid #BBBBBB");
                }
            });
        } //End 打开列表
        else if (ticketsClass == "Use_pay Use_payH2") {  //点击使用代金券按钮触发，收起列表
            $("#Tickets").removeClass("Use_payH2");
            $("#Use_pay_Table").html("");
            var txtTicketID = $("#txtTicketID").val();
            if (txtTicketID == "" || txtTicketID == null || txtTicketID == "0") {
                $("#Use_pay_q").hide();
                $("#TicketDenomination").html(" ￥0 ");
                $("#TicketsMessage").html("").hide();
                $("#UsingTicketsH2").css("border-bottom", "1px solid #BBBBBB");
            }
            else {
                $("#Use_pay_q").show();
                $("#UsingTicketsH2").css("border-bottom", "");
               
            }
        } //End 收起列表
    });

     $("#Packets h2").click(function () { //点击使用红包按钮触发
        var packetsClass = $("#Packets").attr("class");
        if (packetsClass == "Use_pay") {   //点击使用代金券按钮触发，打开列表
            $("#Packets").addClass("Use_payH2");
            $("#UsingPacketsH2").css("border-bottom", "");
            ///红包的ID
            var packetId = $("#txtPacketID").val();
            ///入住时间
            var useTime = $("#BeginTime").val();
            

            var packetCode = $("#PacketCode").val();
            if(packetCode !="" && packetCode != null)
            {
                packetCode = escape(packetCode);
            }
            var packetPassword = $("#PacketPassword").val();
            if(packetPassword != "" && packetPassword != null)
            {
                packetPassword = escape(packetPassword);
            }

            $.ajax({    //获取可用的代金券列表
                type: "GET",
                url: "/payment/Ajax/AjaxPacket.aspx?",
                data: "type=PacketListForNewBookingPay&IsUsed=0&PacketID=" + packetId + "&UseTime=" + useTime + "&PacketCode=" + packetCode + "&PacketPassword=" + packetPassword + "&paycode=52283724"+ "&random=" + Math.random(),
                success: function (data) {
                    if (data != "" && data != null) {
                        $("#Use_Packets").hide();
                        $("#Use_Packets_Table").html(data);
                        //隐藏还应该付款多少的展示
                        $(".Pay_deposit_new").hide();                        
                    } else {
                        $("#Packets").removeClass("Use_payH2");
                        $("#UsingPacketsH2").css("border-bottom", "1px solid #BBBBBB");
                    }
                },
                error: function (err) {
                    $("#Packets").removeClass("Use_payH2");
                    $("#UsingPacketsH2").css("border-bottom", "1px solid #BBBBBB");
                }
            });
        } //End 打开列表
        else if (packetsClass == "Use_pay Use_payH2") {  //点击使用红包按钮触发，收起列表
            $("#Packets").removeClass("Use_payH2");
            $("#Use_Packets_Table").html("");
            var txtPacketID = $("#txtPacketID").val();
            if (txtPacketID == "" || txtPacketID == null || txtPacketID == "0") {
                $("#Use_Packets").hide();
                $("#PacketDenomination").html(" ￥0 ");
                $("#PacketsMessage").html("").hide();
                $("#UsingPacketsH2").css("border-bottom", "1px solid #BBBBBB");
            }
            else {
                $("#Use_Packets").show();
                $("#UsingPacketsH2").css("border-bottom", "");
               
            }
        } //End 收起列表
    });

    //如果使用信用卡支付的话，刷新页面后使用
    if($("#txtLiIndex").val() == "0") {
        $("#Three").addClass("List_Current").siblings().removeClass("List_Current");
        $(".order_pay_U").css("display", "none").eq(0).css("display", "block");
        $("#txtPayMethod").val("directPay");
        $("#alipay").attr("checked", "checked");
        $("#txtPayType").val("2");
        $("#txtDefaultBank").val("");
    } 
    else if ($("#txtLiIndex").val() == "1") {
        $("#CreditCard").addClass("List_Current").siblings().removeClass("List_Current");
        $(".order_pay_U").css("display", "none").eq(1).css("display", "block");
        $('#zhaoshangkuaijie').attr("checked", "checked");
            $("#txtDefaultBank").val("CMB");
            $("#txtPayMethod").val("CNP");
            $("#txtPayType").val("22");
            $(".HuanXunMes").hide();
    } 
//    else if ($("#txtLiIndex").val() == "2") {
//        $("#ForCard").addClass("List_Current").siblings().removeClass("List_Current");
//        $(".order_pay_U").css("display", "none").eq(2).css("display", "block");
//        $("#Visa").attr("checked", "checked");
//            $("#txtPayType").val("17");
//            $("#txtPayMethod").val("jvm-3d");
//            $("#txtDefaultBank").val("cybs-visa");
//    }
    else if ($("#txtLiIndex").val() == "2") {
        $("#DaiFu").addClass("List_Current").siblings().removeClass("List_Current");
        $(".order_pay_U").css("display", "none").eq(3).css("display", "block");
        $("#alipayDaiFu").attr("checked", "checked");
            $("#txtPayType").val("16");
            $("#txtDefaultBank").val("");
            $("#txtPayMethod").val("");
    }
    ///切换支付方式 Start
    $(".Payment_List li").click(function () {
        $(this).addClass("List_Current").siblings().removeClass("List_Current");
        var i = $(".Payment_List li").index(this);
        $("#txtLiIndex").val(i);
        $('input[type="radio"]').removeAttr("checked");
        if (i == 0) {
            $("#txtPayMethod").val("directPay");
            $("#alipay").attr("checked", "checked");
            $("#txtPayType").val("2");
            $("#txtDefaultBank").val("");
        }else if(i==1)
        {
            $('#zhaoshangkuaijie').attr("checked", "checked");
            $("#txtDefaultBank").val("CMB");
            $("#txtPayMethod").val("CNP");
            $("#txtPayType").val("22");
            $(".HuanXunMes").hide();
        }
//        else if(i==2)
//        {
//            $("#Visa").attr("checked", "checked");
//            $("#txtPayType").val("17");
//            $("#txtPayMethod").val("jvm-3d");
//            $("#txtDefaultBank").val("cybs-visa");
//        }
        else if(i==2)
        {
            $("#alipayDaiFu").attr("checked", "checked");
            $("#txtPayType").val("16");
            $("#txtDefaultBank").val("");
            $("#txtPayMethod").val("");
        }
        $(".order_pay_U").css("display", "none").eq(i).css("display", "block");
    }); ///切换支付方式 End
    ///勾选资金账户前的复选框 Start
    $("#UseCashPay").click(function () {
        hongbaoclick("");
    }); ///勾选资金账户前的复选框 End
    $("#UseFxPay").click(function () {
        hongbaoclick("");
    }); ///勾选资金账户前的复选框 End
    ///如何计算的弹出层 Start
    var calculate=new PopupLayer(".calculate","#Calculate",".closeNew_btn,.closebtn,.SidebarBtnTxtClose,.SidebarGrayBtn",false,false);
    ///如何计算的弹出层 End

    ///关闭弹出层 Start
    var plpayment1=new PopupLayer("#plpayment","#Payment",".closeNew_btn,.closebtn,.SidebarBtnTxtClose,.SidebarGrayBtn",false,false);
    ///关闭弹出层 End

    ///选择其他银行 Start
    var otherbank=new PopupLayer(".ShowOtherBank","#OtherBanks",".closeNew_btn,.closebtn,.SidebarBtnTxtClose,.SidebarGrayBtn",false,false);
    ///选择其他银行 End

    ///选择银行的时候和支付方式的时候传递支付方式代码 Start
    $('input[name="type"]').bind("click", function () {
        $("#txtPayType").val($(this).val());
        var txtDefaultBank = $(this).attr("defaultbank");
        $("#txtDefaultBank").val(txtDefaultBank);
        var txtPayMethod = $(this).attr("paymethod");
        $("#txtPayMethod").val(txtPayMethod);
    }); ///选择银行的时候和支付方式的时候传递支付方式代码 End
    ///国际卡支付 start
    $(".CardsRadio").click(function(){
        var txtDefaultBank = $(this).attr("defaultbank");
        $("#txtDefaultBank").val(txtDefaultBank);
        var txtPayMethod = $(this).attr("paymethod");
        $("#txtPayMethod").val(txtPayMethod);
    });///国际卡支付 end
    ///快捷支付的银行选择 Start
    $('input[name="kjBank"]').bind("click", function () {
        $("#HuanXun").removeAttr("checked");
        $(".HuanXunMes").hide();
        $("#txtPayType").val($(this).val());
        var txtDefaultBank = $(this).attr("defaultbank");
        $("#txtDefaultBank").val(txtDefaultBank);
        var txtPayMethod = $(this).attr("paymethod");
        $("#txtPayMethod").val(txtPayMethod);
        //$(".NewOrderInfor_new").css("height", "350px");
    }); ///快捷支付的银行选择 End

    ///环迅支付选中事件 Start
    $("#HuanXun").click(function () {
        $('input[name="kjBank"]').removeAttr("checked");
        $("#txtPayType").val($(this).val());
        var txtDefaultBank = $(this).attr("defaultbank");
        //$(".NewOrderInfor_new").css("height", "550px");
        $(".HuanXunMes").show();
    }); ///环迅支付选中事件 End

    ///信用卡页面中持卡人姓名获得焦点事件
    $("#Name").focus(function () {
        if ($("#Name").val() == "请输入您的卡户姓名") {
            $("#Name").val("");
            $("#Name").css("color", "#000000");
        } else if ($("#Name").val() != "") {
            $("#Name").css("color", "#000000");
        } else {
            $("#Name").css("color", "#CFCFCF");
        }
    });
    ///信用卡页面中持卡人姓名失去焦点事件
    $("#Name").blur(function () {
        if ($("#Name").val() == "" || $("#Name").val() == "请输入您的卡户姓名") {
            $("#Name").val("请输入您的卡户姓名");
            $("#Name").css("color", "#CFCFCF");
        } else {
            $("#Name").css("color", "#000000");
        }
    });
    ///信用卡页面中证件号码获得焦点事件
    $("#IDNum").focus(function () {
        if ($("#IDNum").val() == "请输入您的证件号码") {
            $("#IDNum").val("");
            $("#IDNum").css("color", "#000000");
        } else if ($("#IDNum").val() != "") {
            $("#IDNum").css("color", "#000000");
        } else {
            $("#IDNum").css("color", "#CFCFCF");
        }
    });
    ///信用卡页面中证件号码失去焦点事件
    $("#IDNum").blur(function () {
        if ($("#IDNum").val() == "" || $("#IDNum").val() == "请输入您的证件号码") {
            $("#IDNum").val("请输入您的证件号码");
            $("#IDNum").css("color", "#CFCFCF");
        } else {
            $("#IDNum").css("color", "#000000");
            var iDType = $("#IDType").val();
            switch (iDType) {
                case "1":
                    result2 = VerifyID($("#IDNum").val()); break;
                case "3":
                    result2 = checkArmyID($("#IDNum").val()); break;
                default:
                    $("#IDError").hide(); break;
            }
        }
    });
    ///信用卡页面中手机号码获得焦点事件
    $("#TelNum").focus(function () {
        if ($("#TelNum").val() == "请输入您的手机号码") {
            $("#TelNum").val("");
            $("#TelNum").css("color", "#000000");
        } else if ($("#TelNum").val() != "") {
            $("#TelNum").css("color", "#000000");
        } else {
            $("#TelNum").css("color", "#CFCFCF");
        }
    });
    ///信用卡页面中手机号码失去焦点事件
    $("#TelNum").blur(function () {
        if ($("#TelNum").val() == "" || $("#TelNum").val() == "请输入您的手机号码") {
            $("#TelNum").val("请输入您的手机号码");
            $("#TelNum").css("color", "#CFCFCF");
        }
        else {
            VerifyMobile($("#TelNum").val());
            $("#TelNum").css("color", "#000000");
        }
    });
    $("#IDType").change(function () {
        var iDType = $("#IDType").val();
        if ($("#IDNum").val() != "" && $("#IDNum").val() != "请输入您的证件号码") {
            if (iDType == "1") {
                VerifyID($("#IDNum").val());
            } else if (iDType == "3") {
                checkArmyID($("#IDNum").val());
            } else {
                $("#IDError").hide();
            }
            $("#IDNum").css("color", "#000000");
        } else {
            $("#IDNum").css("color", "#CFCFCF");
        }
    });
            var punishment = "4";
            var paymentDayNum = "100";
            var liveDays = 2;
            if (punishment == "4") {
                $("#Punishment").html("<a target='_blank' href='http://www.youtx.com/CancelRule/#superhigh'>极严的交易规则</a>");
                $("#CashPledgeRule").html("(租客需在线支付全部房费作为订金)");
            } else if (punishment == "5") {
                $("#Punishment").html("<a target='_blank' href='http://www.youtx.com/CancelRule/#low'>灵活的交易规则</a>");
                if (liveDays == 1) {
                    $("#CashPledgeRule").html("(租客需在线支付全部房费作为订金)");
                } else {
                    if (paymentDayNum == "20") {
                        if (liveDays <= 5) { 
                            $("#CashPledgeRule").html("(租客需在线支付1天房费作为订金)");
                        }else{
                            $("#CashPledgeRule").html("(租客需在线支付20%房费作为订金)");
                        }
                    }else if(paymentDayNum == "50"){
                        if (liveDays == 2) { 
                            $("#CashPledgeRule").html("(租客需在线支付1天房费作为订金)");
                        }else{
                            $("#CashPledgeRule").html("(租客需在线支付50%房费作为订金)");
                        }
                    }else if(paymentDayNum == "100"){
                        $("#CashPledgeRule").html("(租客需在线支付全部房费作为订金)");
                    }
                }
            } else if (punishment == "6") {
                $("#Punishment").html("<a target='_blank' href='http://www.youtx.com/CancelRule/#middle'>中等的交易规则</a>");
                if (liveDays == 1) {
                    $("#CashPledgeRule").html("(租客需在线支付全部房费作为订金)");
                } else {
                    if(paymentDayNum == "50"){
                        if (liveDays == 2) { 
                            $("#CashPledgeRule").html("(租客需在线支付1天房费作为订金)");
                        }else{
                            $("#CashPledgeRule").html("(租客需在线支付50%房费作为订金)");
                        }
                    }else if(paymentDayNum == "100"){
                        $("#CashPledgeRule").html("(租客需在线支付全部房费作为订金)");
                    }
                }
            } else if (punishment == "7") {
                $("#Punishment").html("<a target='_blank' href='http://www.youtx.com/CancelRule/#high'>严格的交易规则</a>");
                $("#CashPledgeRule").html("(租客需在线支付全部房费作为订金)");
            } else if (punishment == "8" || punishment == "10") {
                $("#Punishment").html("灵活的交易规则");
                if (punishment == "8")
                {
                    $("#CashPledgeRule").html("(租客需在线支付100%房费作为订金)");
                }
                else if (punishment == "10")
                {
                    if (liveDays <= 5) { 
                        $("#CashPledgeRule").html("(租客需在线支付1天房费作为订金)");
                    }else{
                        $("#CashPledgeRule").html("(租客需在线支付20%房费作为订金)");
                    }
                }
            } else if (punishment == "9") {
                $("#Punishment").html("适中的交易规则");
                $("#CashPledgeRule").html("(租客需在线支付1天房费作为订金)");
            }
            else if (punishment == "11") {
                $("#Punishment").html("长租期的的交易规则");
                $("#CashPledgeRule").html("(租客需在线支付20%房费作为订金)");
            }
        });
       
function showPaypalAmount() {
    if ($("#txtLiIndex").val() == "2") {
        /* 2012-12-3 change by dln
        if (VerifyUrl() == true) {
        */
        if(true){
            $("#Paypal").addClass("List_Current").siblings().removeClass("List_Current");
            $(".order_pay_U").css("display", "none").eq(2).css("display", "block");
            window.scroll(0, 300);

            var rmb = "";
            var bizhong = "";
            if ($("#UseCashPay").attr("checked") == "checked" ||$("#UseFxPay").attr("checked") == "checked") {
                if(currency=="CNY" || currency=="RMB")
                {
                    rmb = difference;
                    bizhong = "CNY";
                }else if(currency=="USD")
                {
                    rmb = difference;
                    bizhong = currency;
                }
            }
            else {
                if(currency=="CNY" || currency=="RMB")
                {
                    rmb = cashPledge;
                    bizhong = "CNY";
                }else if(currency=="USD")
                {
                    rmb = cashPledge;
                    bizhong = currency;
                }
            }
            if(rmb>0)
            {
                $.ajax({    //汇率转换
                    type: "GET",
                    url: "/payment/Ajax/AjaxPaypal.aspx?",
                    data: "type=getUSD&rmb=" + rmb + "&currency="+bizhong+"&random=" + Math.random(),
                    success: function (data) {
                        if (data != "" && data != null) {
                            $(".payAmount").text("$" + data["PayAmount"]);
                            $(".handlingFee").text("$" + data["HandlingFee"]);
                            $(".payTotal").text("$" + data["PayTotal"]);
                        }
                    },
                    error: function (err) {
                        $(".payAmount").text("$");
                        $(".handlingFee").text("$");
                        $(".payTotal").text("$");
                    }
                });
            }else
            {
                $(".payAmount").text("$0");
                $(".handlingFee").text("$0");
                $(".payTotal").text("$0");
            }
        }
    }
}
///选中红包 start
function hongbaoclick(obj){
    if(obj!=""&&obj!=null)
    {
        $(".redpacket[type=radio]").removeAttr("checked");
        $(obj).attr("checked","checked");
        var id=$(obj).val();
        var checked=$(obj).attr("checked");
        if(id == 0)
        {
            redpacketval=0;
            redpacketids="";
        }
    }
    var checked2=$("#UseCashPay").attr("checked");   //我的钱
    var checked3=$("#UseFxPay").attr("checked");    //返现账户

    var difference=redpacketval-cashPledge   //红包-线上支付
    
    if(checked2=="checked" && checked3 !="checked") //只用我的钱，不用返现
    {
        //只用红包
        if(difference>=0)
        {
            cashtype=0;
            balance2=0;
            balancepay=0;
            balance5=balance4;
            balance6=0;
            balance1=balance3;
            otherbalance=0;
        }else  //要用资金账户
        {
             cashtype=2;
            if(difference+balance3>=0)
            {
                balance2=-difference;
                balancepay=-difference; 
                balance5=balance4;
                balance6=0;
                balance1=difference+balance3;
                otherbalance=0;
            }else
            {
                balance2=balance3;
                balancepay=balance3;
                balance5=balance4;
                balance6=0;
                balance1=0;
                otherbalance=0-difference-balance3;
            }
        }
    }
    else if(checked2!="checked" && checked3 =="checked")  //不用我的钱，只用返现
    {
       if(difference>=0)
        {
            cashtype=0;
            balance2=0;
            balancepay=0;
            balance1=balance3;
            balance5=balance4;
            balance6=0;
            otherbalance=0;
        }else
        {
            //要用返现
            cashtype=3;
            if(difference+balance4>=0)
            {
                balance2=0;
                balance1=balance3;
                balance6=-difference;
                balancepay=-difference; 
                balance5=difference+balance4;
                otherbalance=0;
            }else
            {
                balance2=0;
                balance1=balance3;
                balance6=balance4;
                balancepay=balance4;
                balance5=0;
                otherbalance=0-difference-balance4;
            }
        }
    }
    else if(checked2=="checked" && checked3 =="checked")  //用我的钱，也使用返现账户
    {
       if(difference>=0)
        {
            balance6=0;
            balance5=balance4;
            cashtype=0;
            balance2=0;
            balancepay=0;
            balance1=balance3;
            otherbalance=0;
        }else if(difference+balance>=0)
        {
            if(difference+balance4>=0)
            {
                cashtype=3;
                balance6=-difference;
                balancepay=-difference; 
                balance1=balance3;
                balance2=0;
                balance5=balance4+difference;
                otherbalance=0;
            }
            else
            {
                cashtype=1;
                balance2=-(difference+balance4);
                balancepay=-difference;
                balance1=balance3+difference+balance4;
                balance6=balance4;
                balance5=0;
                otherbalance=0;
            }
        }
        else
        {
            cashtype=1;
            balance2=balance3;
            balancepay=balance;
            balance6=balance4;
            balance1=0;
            balance5=0;
            otherbalance=0-difference-balance;
        }
    }
    else //不用我的钱也不用返现
    {
        if(difference>=0)
        {
            balance6=0;
            balance5=balance4;
            balance2=0;
            balancepay=0;
            balance1=balance3;
            otherbalance=0;
        }else
        {
            balance2=0;
            balancepay=0;
            balance6=0;
            balance1=balance3;
            balance5=balance4;
            otherbalance=0-difference;
        }
        cashtype=0;
    }
    $("#SpanOtherPay").html("￥ "+otherbalance);
    $("#Pay").html("￥ "+balance2);
    $("#Balance").html("￥ "+balance1);
    $("#fxPay").html("￥ "+balance6);
    $("#fxBalance").html("￥ "+balance5);
    $("#txtFanXian").val(balance6);
    if(otherbalance>0)
    {       
        $(".Pay_deposit_new").show();
        $("#BalancePay").hide();
                $.getJSON("/payment/ajax/PayAjaxEn.aspx?getType=11&from="+otherbalance, function(data){
                    var shouxufei = parseInt(data.sxf);
                    getCurrency($("#YingFuJinE"),"",otherbalance, "CNY");
                    getCurrency($("#ShouXuFei"),"",shouxufei, "CNY");
                    getCurrency($("#ZongJi"),"",otherbalance+shouxufei, "CNY");
                    getCurrency2((otherbalance+shouxufei), "CNY","USD",$("#MeiYuan"));
                });
    }else
    {
        $(".Pay_deposit_new").hide();
        $("#BalancePay").show();  
        $("#YingFuJinE").html("￥ 0");
        $("#ShouXuFei").html("￥ 0");
        $("#ZongJi").html("￥ 0");
        getCurrency2(0, "USD","USD",$("#MeiYuan"));  
    }
}///选中红包 end

///选中代金券的事件 Start
function tableRadioClick(obj) {
    $.ajax({
        type: "GET",
        url: "/payment/Ajax/AjaxTicket.aspx?",
        data: "type=GetTicketDenominationByTicketID&TicketID=" + obj.value +"&paycode=52283724"+ "&random=" + Math.random(),
        success: function (data) {
            if (data != "0" && data != null && data != "") {
                ///选中了电子券
                data = parseInt(data) - 0;
                $("#TicketDenomination").html(" ￥" + data + " ");
                $("#txtTicketID").val(obj.value);
                $("#Use_pay_q").show();
                $("#UsingTicketsH2").css("border-bottom", "");
            } else if (data == "0") {
                ///选中了不使用代金券
                $("#TicketDenomination").html(" ￥0 ");
                $("#txtTicketID").val("0");
                $("#UsingTicketsH2").css("border-bottom", "1px solid #BBBBBB");
            }
            ///以下代码：代金券列表隐藏，错误提示信息清空并隐藏，
            ///          实体券的编号和密码清空并且设置为不可用，按钮不可用，单选框value清空
            $("#Use_pay_Table").html("");
            $("#TicketsMessage").html("").hide();
            $("#TicketName").val("");
            $("#TicketPassword").val("");
            $("#TicketName2").val("");
            $("#TicketPassword2").val("");
            $("#TicketShiTiQuan").val("");
            $("#TicketName").attr("disabled", "disabled");
            $("#TicketPassword").attr("disabled", "disabled");
            $("#submit").attr("disabled", "disabled");
            $("#Tickets").removeClass("Use_payH2");
        }
    });
} ///选中代金券的事件 End

///选中红包的事件
function PacketRadioClick(obj)
{
    $.ajax({
        type: "GET",
        url: "/payment/Ajax/AjaxPacket.aspx?",
        data: "type=GetPacketDenominationByPacketID&PacketID=" + obj.value +"&paycode=52283724"+ "&random=" + Math.random(),
        success: function (data) {
            if (data != "0" && data != null && data != "") {
                ///选中了红包
                data = parseInt(data) - 0;
                $("#PacketDenomination").html(" ￥" + data + " ");
                $("#txtPacketID").val(obj.value);
                $("#Use_Packets").show();
               
                $("#UsingPacketsH2").css("border-bottom", "");
                redpacketval = data;
                redpacketids=obj.value+",";
                
            } else if (data == "0") {
                ///选中了不使用红包
                $("#TicketDenomination").html(" ￥0 ");
                $("#txtPacketID").val("0");
                $("#UsingPacketsH2").css("border-bottom", "1px solid #BBBBBB");
            }
            ///以下代码：红包列表隐藏，错误提示信息清空并隐藏，
            ///          实体券的编号和密码清空并且设置为不可用，按钮不可用，单选框value清空
            $("#Use_Packets_Table").html("");
            $("#PacketsMessage").html("").hide();
            $("#txtPacketCode").val("");
            $("#txtPacketPassword").val("");

            $("#PacketCode").val("");
            $("#PacketPassword").val("");
            $("#PacketShiTiQuan").val("");
            $("#PacketCode").attr("disabled", "disabled");
            $("#PacketPassword").attr("disabled", "disabled");
            $("#PacketSubmit").attr("disabled", "disabled");
            $("#Packets").removeClass("Use_payH2");

            hongbaoclick(obj);
        }
    });
}

///选中实体券的事件 Start
function TicketShiTiQuanClick(obj) {
    if ($("#TicketShiTiQuan").attr("checked") == "checked") {
        $("input[name=TableRadio]").removeAttr("checked");
        $("#txtTicketID").val("");
        $("#TicketName").val("");
        $("#TicketPassword").val("");
        $("#TicketName2").val("");
        $("#TicketPassword2").val("");
        $("#TicketName").css({color:"#000"});
        $("#TicketPassword").css({color:"#000"});
        $("#TicketName").removeAttr("disabled");
        $("#TicketPassword").removeAttr("disabled");
        $("#submit").removeAttr("disabled");
    } else {
        $("#TicketName").val("");
        $("#TicketPassword").val("");
        $("#TicketName2").val("");
        $("#TicketPassword2").val("");
        $("#TicketName").css({color:"#999"});
        $("#TicketPassword").css({color:"#999"});
        $("#TicketName").attr("disabled", "disabled");
        $("#TicketPassword").attr("disabled", "disabled");
        $("#submit").attr("disabled", "disabled");
    }
} ///选中实体券的事件 End

//选中实体红包的事件
function PacketShiTiQuanClick(obj)
{

 if ($("#PacketShiTiQuan").attr("checked") == "checked") {
        $("input[name=PacketTableRadio]").removeAttr("checked");
        $("#txtPacketID").val("");
        $("#txtPacketCode").val("");
        $("#txtPacketPassword").val("");
        $("#PacketCode").val("");
        $("#PacketPassword").val("");
        $("#PacketCode").removeAttr("disabled");
        $("#PacketPassword").removeAttr("disabled");
        $("#PacketSubmit").removeAttr("disabled");  
        $("#PacketCode").css({color:"#000"});
        $("#PacketPassword").css({color:"#000"});   
        $(".Pay_deposit_new").hide();        

    } else {
        
        $("#txtPacketCode").val("");
        $("#txtPacketPassword").val("");
        $("#PacketCode").val("");
        $("#PacketPassword").val("");
        $("#PacketCode").css({color:"#999"});
        $("#PacketPassword").css({color:"#999"});

        $("#PacketCode").attr("disabled", "disabled");
        $("#PacketPassword").attr("disabled", "disabled");
        $("#PacketSubmit").attr("disabled", "disabled");
    }
}

///验证实体券 Start
function VerifyShiTiQuanClick() {
    var ticketId = $("#txtTicketID").val();
    /** 点击确认使用实体券 Start **/
    var ticketName = $("#TicketName").val();
    var ticketPassword = $("#TicketPassword").val();
    if ((ticketName == null || ticketName == "")) {
        ///电子券也没有选择，则会提示没有没有选择代金券
        if (ticketId == "" || ticketId == null) {
            $("#TicketsMessage").show();
            $("#TicketsMessage").html("请先输入代金券编号和密码");
            $("#TicketPassword").val("");   ///清空密码文本框
            $("#TicketName2").val("");
            $("#TicketPassword2").val("");
            return false;
        }
    } else if ((ticketName != null && ticketName != "") && (ticketPassword == null || ticketPassword == "")) {///这种情况是 录入了编号但是没有录入密码
        $("#TicketsMessage").show();
        $("#TicketsMessage").html("请输入密码后重试");
        $("#TicketName2").val("");
        $("#TicketPassword2").val("");
        return false;
    }
    else if ((ticketName != null && ticketName != "") && (ticketPassword != null && ticketPassword != "")) {///这种情况是 编号和密码都录入了
        ticketName = $.trim($("#TicketName").val()); //去掉开头和结尾的空格
        ///这种情况一般是首次输入了实体券的编号和密码，需要激活，并使用
        ///使用后返回ticketID，赋值给元素txtTicketID
        var payCode = $("#txtPayCode").val();
        $.ajax({
            type: "GET",
            url: "/payment/Ajax/AjaxTicket.aspx?",
            data: "type=VerifyEntityTicket&TicketName=" + ticketName + "&TicketPassword=" + ticketPassword + "&PayCode=" + payCode + "&TicketID=" + ticketId + "&random=" + Math.random(),
            success: function (data) {
                if (data != null && data != "") {
                    if(data.result=="0")
                    {
                      if(data.flag=="1")
                      {
                          ///电子券也没有选择，则会提示没有没有选择代金券
                          if (ticketId == "" || ticketId == null) {
                              $("#TicketsMessage").show();
                              $("#TicketsMessage").html(data.msg);
                              $("#TicketPassword").val("");   ///清空密码文本框
                              $("#TicketName2").val("");
                              $("#TicketPassword2").val("");
                          }
                       }
                       else if(data.flag=="2"){
                          $("#TicketsMessage").show();
                          $("#TicketsMessage").html(data.msg);
                          $("#TicketName2").val("");
                          $("#TicketPassword2").val("");
                       }
                       else if(data.flag=="3"){
                          $("#TicketName").val("");
                          $("#TicketPassword").val("");
                          $("#TicketsMessage").show();
                          $("#TicketsMessage").html(data.msg);
                          $("#txtTicketID").val("");
                          $("#TicketName2").val("");
                          $("#TicketPassword2").val("");
                       }
                       else if(data.flag=="4" || data.flag=="5" || data.flag=="6" || data.flag=="7" || data.flag=="8" || data.flag=="9" ||data.flag == '10')
                        {//过期
                        //过期
                        //未到生效日期
                            //正使用
                          ///未使用
                          $("#TicketsMessage").show();
                          $("#TicketsMessage").html(data.msg);
                          $("#txtTicketID").val("");
                          $("#TicketName2").val("");
                          $("#TicketPassword2").val("");
                      }
                      return false;
                    }else if(data.result=="1")
                    {
                      if(data.flag=="1")
                      {
                          $("#txtTicketID").val(data.ticketID);
                          $("#TicketDenomination").html(data.msg);
                          $("#Tickets").removeClass("Use_payH2");
                          $("#TicketsTable").hide();
                          $("#Use_pay_q").show();
                          $("#TicketsMessage").hide();
                          $("#TicketsMessage").html("");
                          $("#TicketName2").val(ticketName);
                          $("#TicketPassword2").val(ticketPassword);
                          ticketId = $("#txtTicketID").val();
                          if (ticketId == "" || ticketId == null) {
                          } else {
                            $("#Tickets").removeClass("Use_payH2");
                            $("#TicketsTable").hide();
                            $("#Use_pay_q").show();
                            $("#TicketsMessage").hide();
                            $("#TicketsMessage").html("");
                          }
                      }
                      else if(data.flag == "2")
                      {
                          ///这种情况是已经激活并使用了，但是租客又打开了代金券图层
                          $("#TicketsMessage").hide();
                          $("#TicketsMessage").html("");
                          $("#Tickets").removeClass("Use_payH2");
                          $("#TicketsTable").hide();
                          $("#Use_pay_q").show();
                          return false;
                      }
                    }
                }else
                {
                    ///系统异常，没有进入异步
                    $("#TicketsMessage").show();
                    $("#TicketsMessage").html("代金券异常，请重试。");
                    $("#txtTicketID").val("");
                    $("#TicketName2").val("");
                    $("#TicketPassword2").val("");
                    return false;
                }
            },
            error: function (msg) {
                ///系统异常，没有进入异步
                $("#TicketsMessage").show();
                $("#TicketsMessage").html("代金券异常，请重试。");
                $("#txtTicketID").val("");
                $("#TicketName2").val("");
                $("#TicketPassword2").val("");
                return false;
            }
        });
    }
} ///验证实体券 End

function VerifyEntityPacketClick()
{
    var packetId = $("#txtPacketID").val();
    /** 点击确认使用实体红包 Start **/
    var packetCode = $("#PacketCode").val();
    var packetPassword = $("#PacketPassword").val();
    if ((packetCode == null || packetCode == "") && (packetPassword != null && packetPassword != "")) {
        ///红包也没有选择，则会提示没有没有选择红包
            $("#PacketsMessage").show();
            $("#PacketsMessage").html("请输入编号");
            $("#txtPacketPassword").val("");   ///清空密码文本框
            $("#PacketCode").val("");
            $("#PacketPassword").val("");
            return false;
    } 
    else if ((packetCode != null && packetCode != "") && (packetPassword == null || packetPassword == "")) {///这种情况是 录入了编号但是没有录入密码
        $("#PacketsMessage").show();
        $("#PacketsMessage").html("请输入密码");
        $("#PacketCode").val("");
        $("#PacketPassword").val("");
        return false;
    }
    else if ((packetCode == null || packetCode == "") && (packetPassword == null || packetPassword == "")) {
        $("#PacketsMessage").show();
        $("#PacketsMessage").html("请输入编号和密码");
        $("#PacketCode").val("");
        $("#PacketPassword").val("");
        return false;
    }
    else if ((packetCode != null && packetCode != "") && (packetPassword != null && packetPassword != "")) {///这种情况是 编号和密码都录入了        
        packetCode = $.trim($("#PacketCode").val());  //去掉开头和结尾的空格 
        var payCode = $("#txtPayCode").val();
        $.ajax({
            type: "GET",
            url: "/payment/Ajax/AjaxPacket.aspx?",
            data: "type=VerifyEntityPacket&PacketCode=" + packetCode + "&PacketPassword=" + packetPassword + "&PayCode=" + payCode + "&PacketID=" + packetId + "&random=" + Math.random(),
            success: function (data) {
                if (data != null && data != "") {
                    if(data.result=="0")
                    {
                      if(data.flag=="1")
                      {
                          ///电子券也没有选择，则会提示没有没有选择代金券
                          if (packetId == "" || packetId == null) {
                              $("#PacketsMessage").show();
                              $("#PacketsMessage").html(data.msg);
                              $("#txtPacketPassword").val("");   
                              $("#PacketCode").val("");
                              $("#PacketPassword").val("");
                          }
                       }
                       else if(data.flag=="2"){
                          $("#PacketsMessage").show();
                          $("#PacketsMessage").html(data.msg);
                          $("#PacketCode").val("");
                          $("#PacketPassword").val("");
                       }
                       else if(data.flag=="3"){
                          $("#txtPacketCode").val("");
                          $("#txtPacketPassword").val("");
                          $("#PacketsMessage").show();
                          $("#PacketsMessage").html(data.msg);
                          $("#txtPacketID").val("");
                          $("#PacketCode").val("");
                          $("#PacketPassword").val("");
                       }
                       else if(data.flag=="4" || data.flag=="5" || data.flag=="6" || data.flag=="7" || data.flag=="8" || data.flag=="9" ||data.flag == '10')
                        {                       
                          $("#PacketsMessage").show();
                          $("#PacketsMessage").html(data.msg);
                          $("#txtPacketID").val("");
                          $("#PacketCode").val("");
                          $("#PacketPassword").val("");
                      }
                      return false;
                    }else if(data.result=="1")
                    {
                      if(data.flag=="1")
                      {
                          $("#txtPacketID").val(data.PacketID);
                          $("#PacketDenomination").html(data.msg);
                          $("#Packets").removeClass("Use_payH2");
                          $("#PacketsTable").hide();
                          $("#Use_Packets").show();
                          $("#PacketsMessage").hide();
                          $("#PacketsMessage").html("");
                          $("#PacketCode").val(packetCode);
                          $("#PacketPassword").val(packetPassword);
                          packetId = $("#txtPacketID").val();
                          if (packetId == "" || packetId == null) {
                          } else {
                            $("#Packets").removeClass("Use_payH2");
                            $("#PacketsTable").hide();
                            $("#Use_Packets").show();
                            $("#PacketsMessage").hide();
                            $("#PacketsMessage").html("");
                          }
                          redpacketval = data.msg;
                          redpacketids=data.PacketID +",";
                          hongbaoclick("");
                      }
                      else if(data.flag == "2")
                      {
                          ///这种情况是已经激活并使用了，但是租客又打开了代金券图层
                          $("#PacketsMessage").hide();
                          $("#PacketsMessage").html("");
                          $("#Packets").removeClass("Use_payH2");
                          $("#PacketsTable").hide();
                          $("#Use_Packets").show();
                          return false;
                      }
                    }
                }else
                {
                    ///系统异常，没有进入异步
                    $("#PacketsMessage").show();
                    $("#PacketsMessage").html("红包异常，请重试。");
                    $("#txtPacketID").val("");
                    $("#PacketCode").val("");
                    $("#PacketPassword").val("");
                    return false;
                }
            },
            error: function (msg) {
                ///系统异常，没有进入异步
                $("#PacketsMessage").show();
                $("#PacketsMessage").html("红包异常，请重试。");
                $("#txtPacketID").val("");
                $("#PacketCode").val("");
                $("#PacketPassword").val("");
                return false;
            }
        });
    }
}

///验证手机号
function VerifyMobile(obj) {
    if (VerifyZhMobile(obj) || VerifyForeignMobile(obj)) {
        $("#TelInfo").hide();
        $("#TelError").hide()
        return true;
    } else {
        $("#TelInfo").hide();
        $("#TelError").show()
        return false;
    }
}

///验证大陆手机号
function VerifyZhMobile(obj) {
    if (obj.length != 11) {
        return false;
    } else {
        var reg = /^(18[0-9]|13[0-9]|15[0-9]|14[0-9])\d{8}$/;
        if (reg.test(obj)) {
            return true;
        } else {
            return false;
        }
    }
}
///验证国外手机号
function VerifyForeignMobile(obj) {
    if (obj.length > 0) {
        if (!isNaN(obj))
        {
            var reg2 = /^00/;
            if (reg.test(obj)) {
                return false;
            } else {
                return true;
            }
        }else
        {
            return false;
        }
    } else {
        return false;
    }
}
///验证身份证
function VerifyID(num) {
    num = num.toUpperCase();
    //身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X。   
    if (!(/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test(num))) {
        $("#IDError").show();
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
            $("#IDError").show();
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
            $("#IDError").hide();
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
            $("#IDError").show();
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
                $("#IDError").show();
                return false;
            }
            $("#IDError").hide();
            return true;
        }
    }
    $("#IDError").show();
    return false;
}

/**
* 校验军官证
* @param armyCard
* @returns
*/
function checkArmyID(armyCard) {
    var reg = new RegExp("^[0-9\u4e00-\u9fa5a-zA-Z]{6,25}$")
    if (reg.test(armyCard)) {
        $("#IDError").show();
        return false;
    } else {
        $("#IDError").hide();
        return true;
    }
}

/**
* 校验护照等
* @param passportCard
* @returns
*/
function checkPassportID(passportCard) {
    var reg = new RegExp("^[0-9a-zA-Z]{6,25}$").test(passportCard);  //字母数字格式6-25位
    if (reg.test(armyCard)) {
        $("#IDError").show();
        return false;
    } else {
        $("#IDError").hide();
        return true;
    }
}

//验证
function Verify() {
    var result1 = false;
    var result2 = false;
    var result3 = false;
    var result = false;
    ///姓名
    if ($("#Name").val() == "" || $("#Name").val() == "请输入您的卡户姓名") {
        $("#NameError").show();
        result1 = false;
    } else {
        result1 = true;
    }
    ///证件号
    var iDType = $("#IDType").val();
    if ($("#IDNum").val() != "" && $("#IDNum").val() != "请输入您的证件号码") {
        switch (iDType) {
            case "1":
                result2 = VerifyID($("#IDNum").val()); break;
            case "3":
                result2 = checkArmyID($("#IDNum").val()); break;
            default:
                $("#IDError").hide(); break;
        }
    } else {
        $("#IDError").show();
        result2 = false;
    }
    ///电话号码
    if ($("#TelNum").val() != "" && $("#TelNum").val() != "请输入您的手机号码") {
        result3 = VerifyMobile($("#TelNum").val());
    } else {
        $("#TelError").show();
        $("#TelInfo").hide();
        result3 = false;
    }
    result = result1 && result2 && result3;
    return result;
}
function isUseCash()
{
    var isusecash=0;
    $(".radio_n").each(function myfunction() {
        if ($(this).attr("checked")=="checked") {
            isusecash=1;
        }
    });
    return isusecash;
}

function IsUsePacket()
{
    var isUsePacket=0;
    if($("#Use_Packets").css("display") == "block")
    {
        isUsePacket = true;
    }
    return isUsePacket;

}

function IsFxPay()
{
    var isFxPay=0;
    if($("#UseFxPay").attr("checked"))
    {
        isFxPay=true;
    }
    return isFxPay;
}

///payCashClick用于资金账户余额足以支付订金的处理
function payCashClick() {
    if(isclicked==true) {isclicked=false;return false;}
    isclicked=true;
    //首先判断复选框是否勾选，如果勾选，那么向下执行，未勾选则跳转到第三方平台支付（当前页面选择的）
    var isusecash=isUseCash();
    var isUsePacket = IsUsePacket();
    var isFxPay = IsFxPay();
    if ((isusecash==1 || isUsePacket) &&otherbalance==0) {
        $("#plpayment").click();
        var payCode = $("#txtPayCode").val();
        //选中的代金券的id
        var ticketId = $("#txtTicketID").val();
        if (ticketId != "0" && ticketId != null && ticketId != "") {
            ticketId = "&ticketId=" + ticketId;
        } else {
            ticketId = "&ticketId="
        }
        //GA
        //if (_dctc.trackEvent) { _dctc.trackEvent({ c: 'pay2', a: 'button_cash', l: 'click' }); } 
        //Cash=1表示订金全部都用资金账户支付，Cash=2表示各占一部分，Cash=0或者为空表示第三方支付
        var fxPayVal = 0;
        if(isFxPay)
        {
            fxPayVal = $("#txtFanXian").val();

        }
        window.open('Pay.aspx?payCode=' + payCode + "&payType=6" + ticketId + "&Cash=1&rdids="+redpacketids+"&rdval="+redpacketval+ "&fanxian=" + fxPayVal +"&cashType="+cashtype, "", "");               
        setTimeout(function(){isclicked=false},1000);
    }
    else {
        //未勾选则跳转到第三方平台支付（当前页面选择的）
        payClick();
    }
}
///网银、银联在线、支付宝、财付通等确认支付按钮和信用卡支付的下一步按钮的单击事件
function payClick() {
    if(isclicked==true) {isclicked=false;return false;}
    isclicked=true;
    var liIndex = $("#txtLiIndex").val();
    if (liIndex == "" || liIndex == null) 
    {
        liIndex = 0;
    }
    var payType = 0;
    var defaultBank = "";
    var payMethod = "";
    var pCardInfo = "";
    var pBillEXP = "";
    if (liIndex == "0") {
        //GA
        //if (_dctc.trackEvent) { _dctc.trackEvent({ c: 'pay2', a: 'button_wangyin', l: 'click' }); } 
        ///银联，支付宝，财付通等
        payType = $("#txtPayType").val();
        defaultBank = "&defaultbank=" + $("#txtDefaultBank").val() + "&paymethod=" + $("#txtPayMethod").val();
    } else if (liIndex == "2") {
        //if (_dctc.trackEvent) { _dctc.trackEvent({ c: 'pay2', a: 'button_paypal', l: 'click' }); } 
        payType = 17;
        if($("#txtPayMethod").val()!="jvm-3d"||($("#txtDefaultBank").val()!="cybs-visa"&&$("#txtDefaultBank").val()!="cybs-master"&&$("#txtDefaultBank").val()!="cybs-jcb")||($("#Visa").attr("checked")!="checked"&&$("#Master").attr("checked")!="checked"&&$("#JCB").attr("checked")!="checked"))
        {
            alert("请先选择支付卡类别");
            return false;
        }
        var jsReturn=window["alipay-merchant-result"];//.replace(/\s/g,"");
        defaultBank = "&defaultbank=" + $("#txtDefaultBank").val() + "&paymethod=" + $("#txtPayMethod").val()+"&js_return="+jsReturn;
    } else {
        //if (_dctc.trackEvent) { _dctc.trackEvent({ c: 'pay2', a: 'button_xinyongka', l: 'click' }); }
        payType = 7;
        payType = $("#txtPayType").val();
        if (payType == 7) {
            var verifyResult = Verify();
            if (verifyResult == false) {
                return false;
            }
            pCardInfo = escape($("#Name").val()) + "|" + $("#IDType").val() + "|" + $("#IDNum").val() + "|" + $("#TelNum").val();
            pBillEXP = $("#BillExp").val();
        } 
        else {
            defaultBank = "&defaultbank=" + $("#txtDefaultBank").val() + "&paymethod=" + $("#txtPayMethod").val();
        }
    }
    var payCode = $("#txtPayCode").val();
    //选中的代金券的id
    var ticketId = $("#txtTicketID").val();
    var paytype=$("#txtPayType").val();
    if (ticketId != "0" && ticketId != null && ticketId != "") {
        ticketId = "&ticketId=" + ticketId;
    } else {
        ticketId = "&ticketId="
    }

    var packetID = $("#txtPacketID").val();
    if (packetID != "0" && packetID != null && packetID != "") {
        packetID = "&PacketID=" + packetID;
    } else {
        packetID = "&packetID="
    }

    var isusecash=isUseCash();
    var isFxPay = IsFxPay();
    var fxPayVal = 0;
    if(isFxPay)
    {
        fxPayVal = $("#fxPay").val();

    }
    if (isusecash==1) {
        var txtBalance = "";
        if (otherbalance==0) {
            isclicked=false;
            payCashClick();
        } else {
            if (balancepay >0 ) {
                txtBalance = "&balance=" + balancepay+"&cashType="+cashtype;
            }
             if(paytype==22)
            {
               window.location.href='/payment/Booking/CreditPayCardInfo.aspx?payCode=' + 52283724 + '&payType=' + payType + defaultBank + ticketId + txtBalance + '&Cash=2&rdids='+redpacketids+'&rdval='+redpacketval+"&fanxian=" + fxPayVal;
            }
            else
            {
              $("#plpayment").click();
              window.open('Pay.aspx?payCode=' + payCode + "&payType=" + payType + defaultBank + ticketId + txtBalance + "&Cash=2&pCardInfo=" + pCardInfo + "&pBillEXP=" + pBillEXP+"&rdids="+redpacketids+"&rdval="+redpacketval + "&fanxian=" + fxPayVal, "", "");
            }
        }
    } else {
          if(paytype==22)
            {
               if(redpacketval!=0 || redpacketval!="")
               { 
                    window.location.href='/payment/Booking/CreditPayCardInfo.aspx?payCode=' + 52283724 + '&payType=' + payType + defaultBank + ticketId  + '&Cash=2&rdids='+redpacketids+'&rdval='+redpacketval+"&fanxian=" + fxPayVal;
               }
               else
               {
                    window.location.href='/payment/Booking/CreditPayCardInfo.aspx?payCode=' + 52283724 + '&payType=' + payType +defaultBank + ticketId +"&fanxian=" + fxPayVal;
               }
            }
            else{
                $("#plpayment").click();
                if(redpacketval!=0 || redpacketval!="")
               { 
                    window.open('Pay.aspx?payCode=' + payCode + '&payType=' + payType + defaultBank + ticketId  + '&Cash=2&rdids='+redpacketids+'&rdval='+redpacketval+"&fanxian=" + fxPayVal + "&pCardInfo=" + pCardInfo + "&pBillEXP=" + pBillEXP,"", "");
               }
               else
               {
                    window.open('Pay.aspx?payCode='+ payCode +'&payType=' + payType +defaultBank + ticketId + "&pCardInfo=" + pCardInfo + "&pBillEXP=" + pBillEXP + "&fanxian=" + fxPayVal,"","");
               }
               //edit time:2015-08-14
               //window.open('Pay.aspx?payCode=' + payCode + "&payType=" + payType + defaultBank + ticketId + "&pCardInfo=" + pCardInfo + "&pBillEXP=" + pBillEXP, "", "");
           }
    }
    setTimeout(function(){isclicked=false},1000);
  }
///其他银行的单击事件
function payOtherClick() {
    if(isclicked==true) {isclicked=false;return false;}
    isclicked=true;
    var payType = 0;
    var defaultBank = "";
    var payMethod = "";
        //GA
        //if (_dctc.trackEvent) { _dctc.trackEvent({ c: 'pay12', a: 'button_wangyin', l: 'click' }); } 
        ///银联
        payType = 12;
        defaultBank = "&defaultbank=8607&paymethod=";
    var payCode = $("#txtPayCode").val();
    //选中的代金券的id
    var ticketId = $("#txtTicketID").val();
    if (ticketId != "0" && ticketId != null && ticketId != "") {
        ticketId = "&ticketId=" + ticketId;
    } else {
        ticketId = "&ticketId="
    }
    var isusecash=isUseCash();
    if (isusecash==1) {
        var txtBalance = "";
        if (otherbalance==0) {
            isclicked=false;
            payCashClick();
        } else {
            if (balancepay >0 ) {
                txtBalance = "&balance=" + balancepay+"&cashType="+cashtype;
            }
            $("#plpayment").click();
            window.open('Pay.aspx?payCode=' + payCode + "&payType=" + payType + defaultBank + ticketId + txtBalance +"&rdids="+redpacketids+"&rdval="+redpacketval, "", "");
        }
    } else {
        $("#plpayment").click();
        window.open('Pay.aspx?payCode=' + payCode + "&payType=" + payType + defaultBank + ticketId, "", "");
    }
    setTimeout(function(){isclicked=false},1000);
}
///找人代付
function payOnBehalfClick(){
    if(isclicked==true) {isclicked=false;return false;}
    isclicked=true;
    var payType = 0;
    var defaultBank = "";
    var payCode = $("#txtPayCode").val();
    var ticketId = $("#txtTicketID").val();
    if($("#alipayDaiFu").attr("checked")=="checked")
    {
        payType=16;
        defaultBank = "&defaultbank=&paymethod=peerpay";
        if (ticketId != "0" && ticketId != null && ticketId != "") {
            ticketId = "&ticketId=" + ticketId;
        } else {
            ticketId = "&ticketId="
        }
        if ($("#UseCashPay").attr("checked") == "checked" ||$("#UseFxPay").attr("checked") == "checked") {
            var txtBalance = "";
        if (otherbalance==0) {
            isclicked=false;
            payCashClick();
        } else {
            if (balancepay >0 ) {
                txtBalance = "&balance=" + balancepay+"&cashType="+cashtype;
            }
                $("#plpayment").click();
                window.open('Pay.aspx?payCode=' + payCode + "&payType=" + payType + defaultBank + ticketId + txtBalance + "&Cash=2&rdids="+redpacketids+"&rdval="+redpacketval, "", "");
            }
        } else {
            $("#plpayment").click();
            window.open('Pay.aspx?payCode=' + payCode + "&payType=" + payType + defaultBank + ticketId, "", "");
        }
    }
    setTimeout(function(){isclicked=false},1000);
}///end 找人代付

function getCurrency(obj,content,amount, currency1) {
    $.ajax({
        type: "GET",
        cache: false,
        async: false,
        dataType: "json",
        url: "/payment/Ajax/PayAjaxEn.aspx?",
        data: { "getType": 5, "amount": amount, "currency": currency1, "currencyrate": currencyrate },
        success: function (data) {
            if (null != data && data != "") {
                obj.text(content+data["msg"]);
            } 
        }
    });
}

function getCurrency2(amount, currency1, currency2,obj) {
    $.ajax({
        type: "GET",
        cache: false,
        async: false,
        dataType: "json",
        url: "/payment/Ajax/PayAjaxEn.aspx?",
        data: { "getType": 10, "amount": amount, "from": currency1, "to": currency2, "currencyrate": (obj==null?currencyrate:0) },
        success: function (data) {
            if (null != data && data != "") {
                if(data.result=="1")
                {
                    if(obj==null)
                    {
                        $("#txtInfo").val(data.msg);
                    }else
                    {
                        obj.text(data.currency+" "+data.msg);
                    }
                }
            } 
        }
    });
}
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
      <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="${base}/static/pay_money/at.jpg"> <span>youtx.com</span></li>
    </ul>   
    <ul class="footer_link02">
      <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/zhuanti/duanzufang/" target="_blank" rel="nofollow">短租房推荐</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | </li>
      <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
      <li class="footer_share" id="Li2"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx" class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun" target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a></li>
    </ul>

    <ul class="FooterNet" style="width:475px;"><li class="FontArial02">Copyright © <script type="text/javascript">document.write((new Date()).getFullYear());</script>2018 Youtx.com, All Rights Reserved<br><a href="https://passport.youtx.com/profile/images/icp.jpg" target="_blank" rel="nofollow">京ICP证041065号</a> 京公网安备11010602010093号-2</li>
    <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" rel="nofollow"><img src="${base}/static/pay_money/VerisignYoutx.gif" height="35" width="60"></a></li>
    <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank"><img src="${base}/static/pay_money/FooterNetPic.gif"></a></li>
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
    

<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="${base}/static/pay_money/FeedBackClose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="${base}/static/pay_money/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div></body></html>