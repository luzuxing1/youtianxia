<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<#assign base=request.contextPath />
    <base id="base" href="${base}">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style type="text/css">
	*{margin:0;top:0;us-select:none;}
	a{text-decoration: none;}
	a:hover{text-decoration: none}
	.add{font-size:20px;}
	.table{margin-top:10px;font-size:14px;text-align:center;}
	.page_link{display:inline-block;width:20px;height:20px;background:#f1f1f1;color:#ff5384;line-height:20px;text-align:center;}
	.page_link_select{display:inline-block;width:20px;height:20px;background:#ff5384;color:#f1f1f1;line-height:20px;text-align:center;}
	.page{position:absolute;top:220px;right:15px;}
	.table-bordered>tbody>tr>td{vertical-align:middle;}
	.table-bordered>thead>tr>th{text-align:center;}
</style>
</head>
<body>
		<a href="${base}/user/add" class="add">添加用户</a>
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
			<#if userPage.currentPage==1>
                	<a>上一页</a>
			    <#else >
                    <a href="${base}/user/userPage?page=${userPage.currentPage-1}">上一页</a>
			</#if>
			<#list 1..userPage.totalPages as i>
				<#if i == userPage.currentPage>
					<span class=" page_link_select ">${i}</span>
					<#else>
						<a href="${base}/user/userPage?page=${i}" class="page_link" >${i}</a>
				</#if>
			</#list>
			<#if userPage.currentPage == userPage.totalPages >
                <span class="page_link_select" style="width: 50px">下一页</span>
			<#else>
                <a href="${base}/user/userPage?page=${userPage.currentPage+1}" class="page_link" style="width: 50px">下一页</a>
			</#if>
        </div>
	<table width="50%" class="table table-bordered table-hover table-condensed">
		<thead>
			<tr>
				<th>编号</th>
				<th>头像</th>
				<th>手机号</th>
				<th>密码</th>
				<th>邮件</th>
                <th>身份证</th>
				<th>真实姓名</th>
				<th>角色</th>
                <th>功能</th>
			</tr>
		</thead>
		<tbody>
		<#list userList as us>
			<tr>
				<td>${us.userId}</td>
				<td>
					<img style="width:30px;height:30px" src="${base}/static/${us.userHeadimg}">
				</td>
				<td>${us.userPhone}</td>
				<td>${us.userPassword}</td>
				<td>${us.userEmail}</td>
				<td>${us.userPid}</td>
				<td>${us.userRealname}</td>
				<td>${us.userRole}</td>
				<td>
					<a href="${base}/searchus?us_id=${us.us_id }">修改</a>
					<a href="javascript:if(confirm('确认删除？'))location.href='deleteus.do?us_id=${us.us_id }&currentPage=${usPage.currentPage}'">删除</a>
				</td>
			</tr>
		</#list>


		</tbody>
	</table>
</body>
</html>