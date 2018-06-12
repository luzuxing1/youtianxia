<!DOCTYPE html>
<!-- saved from url=(0099)https://pcashier.jd.com/weixin/weixinPage?orderId=76309347806&sign=089d953b95455e080acf9964fffa2528 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script type="text/javascript" async="" src="${base}/static/payments/wl.js.下载"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <#assign base=request.contextPath />
    <base id="base" href="${base}">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>订单支付</title>
    <link rel="stylesheet" type="text/css" href="${base}/static/payments/main.css">
    <script type="text/javascript" src="${base}/static/payments/jquery-1.6.4-min.js.下载"></script>
    <script type="text/javascript" src="${base}/static/payments/common.js.下载"></script>
    <script type="text/javascript" src="${base}/static/payments/weixin.js.下载"></script>
<script>
</script></head>

<script>
    $(function(){
        var id = $("#orderId").val();
        setInterval(function(){check()} , 5000);
        function check(){
            $.post(
                "${base}/payment/ifSuccess",{"id":id},function (data) {
                    if(data==true){
                        $("#weixinImageURL").attr("src","${base}/static/payments/success.gif");
                        $("#words").empty();
                        $("#words").append("<p>即将跳转     ...</p>");
                        setTimeout(function(){
                            window.location.href = '${base}/userCenter/jumpLodgerPage';
                        },3000);
                    }
                }
            );
        }
    })
</script>
<body>
<!-- shortcut -->
    
<div class="main">
    <div class="w">
        <!-- order 订单信息 -->
                <div class="order clearfix order-init order-init-oldUser-noQrcode">
    <!-- 订单信息 -->
    <div class="o-left"><h3 class="o-title">订单提交成功，请尽快付款！订单号：${oid}</h3>

        <p class="o-tips">
                        <span class="o-tips-time" id="deleteOrderTip"></span>

        </p>
    </div>
    <!-- 订单信息 end --><!-- 订单金额 -->
    <div class="o-right">
        <div class="o-price"><em>应付金额</em><strong>${prices}</strong><em>元</em></div>
            </div>
    <!-- 订单金额 end -->
    <div class="o-list j_orderList" id="listPayOrderInfo"><!-- 单笔订单 -->

        <!-- 多笔订单 end -->
    </div>
</div>
        <!-- payment 支付方式选择 -->
        <div class="payment">
            <!-- 微信支付 -->
            <div class="pay-weixin">
                <div class="p-w-hd">微信支付</div>
                <div class="p-w-bd" style="position:relative">
                    <div class="j_weixinInfo" style="position:absolute; top: -36px; left: 130px;"><span class="j_qrCodeCountdown font-bold font-red"></span></div>
                    <div class="p-w-box">
                        <input id="orderId" type="hidden" value="${orderId}">
                        <div class="pw-box-hd">
                            <img id="weixinImageURL" src="${base}/payment/image" width="298" height="298">
                        </div>
                        <div class="pw-retry j_weixiRetry" style="display: none;">
                            <a class="ui-button ui-button-gray j_weixiRetryButton" href="javascript:getWeixinImage2();">获取失败 点击重新获取二维码  </a>
                        </div>
                        <div class="pw-box-ft" id="words">
                            <p>请使用微信扫一扫</p>
                            <p>扫描二维码支付</p>
                        </div>
                    </div>
                    <div class="p-w-sidebar"></div>
                </div>
            </div>
            <!-- 微信支付 end -->
            <!-- payment-change 变更支付方式 -->
            <div class="payment-change">
                <a class="pc-wrap" onclick="window.history.go(-1)">
                    <i class="pc-w-arrow-left">&lt;</i>
                    <strong>选择其他支付方式</strong>
                </a>
            </div>
            <!-- payment-change 变更支付方式 end -->
        </div>
        <!-- payment 支付方式选择 end -->
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        getWeixinImage2();
    });
</script>

<!-- 收银台 footer -->
            <div class="p-footer">
    <!-- <div class="pf-wrap w">
        <div class="pf-line">
            <span class="pf-l-copyright">Copyright © 2004-2018  京东JD.com 版权所有</span>
            <img width="185" height="20" src="${base}/static/payments/footer-auth.png">
            <span class="ml40">由网银在线（北京）科技有限公司提供技术支持</span>
        </div>
    </div> -->
</div>
<!-- 搜索统计 -->
<script type="text/javascript">
    function getQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]);
        return 0;
    }
    jQuery.getScript('https://sstat.jd.com/scslog?args=2^' + getQueryString('suc_orderid') + '^' + getQueryString('suc_sku'));
</script>
<!-- 搜索统计 -->

<!-- Google Tag Manager -->
<noscript>
    &lt;iframe src="//www.googletagmanager.com/ns.html?id=GTM-T947SH"
            height="0" width="0" style="display:none;visibility:hidden"&gt;&lt;/iframe&gt;
</noscript>
<!-- End Google Tag Manager -->


    <script src="${base}/static/payments/tdpay.js.下载"></script><script src="${base}/static/payments/y.html"></script>
</body></html>