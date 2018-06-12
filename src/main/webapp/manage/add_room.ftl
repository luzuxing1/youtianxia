<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加房间</title>
	<#assign base=request.contextPath />
    <base id="base" href="${base}">
<style type="text/css">
	.a{text-align: right;}
</style>
</head>
<body>
	<form action="${base}/rooms/addRoom" method="post">
		<table width="50%">
			<tr>
				<td class="a">城市：</td>
				<td><input type="text" name="roomCity"></td>
			</tr>
			<tr>
				<td class="a">房间名字：</td>
				<td><input type="text" name="roomName"></td>
			</tr>
			<tr>
				<td class="a">房间价格：</td>
				<td><input type="text" name="roomPrice"></td>
			</tr>
			<tr>
				<td class="a">房间可选数：</td>
				<td><input type="text" name="roomOpinionNum"></td>
			</tr>

			<tr>
				<td class="a">用户：</td>
                	<td>
						<select name="userId" id="sort">
							<#list allUsers as user>
								<option  value="${user.userId}"> ${user.userRealname} </option>
							</#list>
						</select>
               		 </td>
				<td>
			</tr>

			<tr>
				<td cospan="2" class="a">
					<input type="submit" value="添加" style="width: 60px">
				</td>
			</tr>
		</table>
	</form>	
</body>
</html>
