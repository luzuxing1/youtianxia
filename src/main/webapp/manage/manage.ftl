<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<#assign base=request.contextPath />
    <base id="base" href="${base}">
<title>后台管理</title>
<style type="text/css">
	*{padding: 0;margin: 0;}
	a{text-decoration: none}
	.container{width: 1250px;height: 600px;background: #fff;margin: auto;}
	.top{width: 100%;height: 100px;overflow: hidden;background:#fff;}
	.logo{height: 100%;float: left;}
	.logo img{width: 160px;height:90px;}
	.title{height: 100%;float: left;line-height: 100px;font-size: 30px;margin-left: 300px;}
	.content{width: 100%;height: 500px;}
	li{list-style: none;}
	.nav{margin-top: 40px;padding-left: 30px;float: left;width:135px;padding-right:30px;}
	.nav li{margin-top: 30px;font-size: 17px;border-bottom: 1px dashed #aaa;}
	#data{margin-top:28px;margin-left:0;width:1055px;height:446px;float: left;}
	.add{font-size:20px;}
	.table{margin-top:20px;font-size:14px;text-align:center;}
	.nav img{width: 20px;height: 20px;vertical-align: bottom;margin-right: 5px;}
	</style>
</head>
<body>
	<#if user = null>
		<p>请登录,否则无访问权限</p>
		<a href="${base}/user/lo">返回登录</a>
	<#else >
    <div class="container">
        <div class="top">
            <div class="logo" onclick="search()">
                <img src="${base}/static/images/logo.jpg" alt="">
            </div>
            <div class="title">游天下后台管理系统</div>
        </div>
        <div class="content">
            <ul class="nav">
                <li><img src="${base}/static/images/user.png"><a href="${base}/user/userPage?page=1" target="data">用户管理</a></li>
                <li><img src="${base}/static/images/hotel.png"><a href="${base}/rooms/roomPage?page=1" target="data">房间管理</a></li>
                <li><img src="${base}/static/images/coll.png"><a href="" target="data">酒店详情管理</a></li>
                <li><img src="${base}/static/images/home.png"><a href="" target="data">场地管理</a></li>
                <li><img src="${base}/static/images/meal.png"><a href="" target="data">套餐管理</a></li>
                <li><img src="${base}/static/images/buy.png"><a href="" target="data">购物车管理</a></li>
                <li><img src="${base}/static/images/order.png"><a href="" target="data">订单管理</a></li>
            </ul>
            <iframe id="data" name="data" src="${base}/user/userPage?page=1" frameborder="no" border="0" scrolling=”no”></iframe>
        </div>
    </div>
	</#if>

</body>
</html>