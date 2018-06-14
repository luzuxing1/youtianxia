
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<#assign base=request.contextPath />
    <base id="base" href="${base}">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style type="text/css">
	*{margin:0;top:0;roomer-select:none;}
	a{text-decoration: none;}
	a:hover{text-decoration: none}
	.add{font-size:20px;}
	.table{margin-top:10px;font-size:14px;text-align:center;}
	.page_link{display:inline-block;width:20px;height:20px;background:#f1f1f1;color:#ff5384;line-height:20px;text-align:center;}
	.page_link_select{display:inline-block;width:20px;height:20px;background:#ff5384;color:#f1f1f1;line-height:20px;text-align:center;}
	.page{position:absolute;top:330px;right:15px;}
	.table-bordered>tbody>tr>td{vertical-align:middle;}
	.table-bordered>thead>tr>th{text-align:center;}
	#show_img{width:188px;height:116px;}
	.current{background-color:rgb(245,245,245);}
</style>
</head>
<body>
		<a href="${base}/rooms/add" class="add">添加房间</a>
	<script type="text/javascript">
		function search(){
			var a = document.getElementById("s_num");
			if((a.value =="")){
				a.style.placeholder="{color:'#f00'}";
				a.placeholder = "编号不能为空";
				return false;
			}
			return true;
		}
	</script>
	<!-- 分页标签 -->
	<div class="page">
		<#if roomPage.currentPage==1>
				<a>上一页</a>
			<#else >
				<a href="${base}/rooms/roomPage?page=${roomPage.currentPage-1}">上一页</a>
		</#if>
		<#list 1..roomPage.totalPages as i>
			<#if i == roomPage.currentPage>
				<span class=" page_link_select ">${i}</span>
			<#else>
				<a href="${base}/rooms/roomPage?page=${i}" class="page_link" >${i}</a>
			</#if>
		</#list>
		<#if roomPage.currentPage == roomPage.totalPages >
				<span class="page_link_select" style="width: 50px">下一页</span>
			<#else>
				<a href="${base}/rooms/roomPage?page=${roomPage.currentPage+1}" class="page_link" style="width: 50px">下一页</a>
		</#if>
	</div>
	<table width="50%" class="table table-bordered table-hover table-condensed">
		<thead>
		<tr>
			<th>编号</th>
			<th>城市</th>
            <th>房间的名字</th>
			<th>价格</th>
			<th>房间评论数</th>
			<th>房间可选数量</th>
			<th>发布房间时间</th>
			<th>用户</th>
            <th>状态</th>
            <th>功能</th>
		</tr>
		</thead>
		<tbody>
		<#setting datetime_format ="yyyy-MM-dd">

			<#list roomList as room>
				<tr class="each">
					<td>${room.roomId}</td>
					<td>${room.roomCity}</td>
					<td>${room.roomName}</td>
					<td>${room.roomPrice}</td>
					<td>${room.roomSale}</td>
					<td>${room.roomOpinionNum}</td>
					<td>
					${room.roomTime?datetime}</td>
					<td>${room.user.userRealname}</td>
                    <td class="roomState">${room.roomState}</td>
					<td>
						<input onclick="searchs(this)" class="check" type="button" value="审核">
                        <a href="${base}/rooms/preupdate?roomId=${room.roomId }&currentPage=${roomPage.currentPage}">修改</a>
						<#--<a href="javascript:if(confirm('确认删除？'))location.href='${base}/rooms/delete?id=${room.roomerId }&currentPage=${roomerPage.currentPage}'">删除</a>-->
					</td>
				</tr>
			</#list>
		</tbody>
	</table>
</body>
<script type="text/javascript">
		$(function () {
			$(".each").each(function () {
                var asd = $(this).find(".roomState").text();
                var abc = $(this).find(".roomState");
                if(asd == "0"){
                    abc.text("未通过");
                }else if(asd == "1"){
                    abc.text("通过");
				}
            });
        });
        function searchs(obj) {
            var sss = $(obj).parent().prev().text();
            var id = $(obj).parent().prev().prev().prev().prev().prev().prev().prev().prev().prev().text();
            var aaa = $(obj).parent().prev();
//            var sss = $("#roomState").text();
			if(sss == "未通过"){
			    var roomSt = "1";
			    $.post(
			        	"${base}/rooms/updateState",
						{"roomId":id,"roomState":roomSt},
						function (data) {
                            alert(data.code);
							if(data.code == "0"){
                                aaa.text("通过");
							    window.location.href = "${base}/rooms/roomPage?page=${roomPage.currentPage}";
							}
                        }
				);


			}
        }



//	$("#check").click(function () {
//        var sss = $("#roomState").text();
////		alert(sss);
//		if(sss == "0"){
//            $("#roomState").text("1");
//		}
//    });


	$(function(){
		$(".hotellist").click(function(){
			var srcimg = $(this).find("#imgnone").text();
			var src = "http://localhost/upload/hotel/";
			$("#show_img").prop("src",src+srcimg);
			$(this).addClass("current");
			$(".hotellist").not(this).removeClass("current");
			/* $(this).css("background-color","rgb(245,245,245)");
			$(".hotellist").not(this).css("background-color","#fff"); */
		});
	});
</script>
</html>
