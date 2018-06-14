
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<#assign base=request.contextPath />
    <base id="base" href="${base}">
<title>修改房间信息</title>
<head>
	<style type="text/css">
		.ri{text-align: right;width: 100px;}
		.cn{width: 165px;}
	</style>
</head>
<body>
	<form action="${base}/rooms/updateroom" method="post">
		<table width="50%">
				<input type="hidden" value="${currentRoom.roomId }" type="text" name="roomId">
			<tr>
				<td class="ri">城市：</td>
				<td class="cn"><input value="${currentRoom.roomCity }" type="text" name="roomCity" ></td>
				<td><span id="phone_span"></span></td>
			</tr>
			<tr>
				<td class="ri">房间的名字：</td>
				<td class="cn"><input value="${currentRoom.roomName }" type="text" name="roomName" id="password" onblur="checkpassword(this)"></td>
				<td><span id="password_span"></span></td>
			</tr>
			<tr>
				<td class="ri">价格：</td>
				<td class="cn"><input value="${currentRoom.roomPrice }" type="text" name="roomPrice"></td>
			</tr>
			<tr>
				<td class="ri">房间可选数：</td>
				<td class="cn"><input value="${currentRoom.roomOpinionNum }" type="text" name="roomOpinionNum"></td>
			</tr>
			<#setting datetime_format ="yyyy-MM-dd">
			<tr>
				<td class="ri" style="display: none">创建时间：</td>
				<td class="cn">
					<input type="hidden" name="roomTime" value="${currentRoom.roomTime?date }">
				</td>
			</tr>
            <tr>
                <td class="ri">用户：</td>
                <td>
                    <select name="userId" id="sort">
                        <option selected="selected">${currentRoom.user.userRealname }</option>
					<#list allUsers as user>
                        <option  value="${user.userId}"> ${user.userRealname} </option>
					</#list>
                    </select>
                </td>
                <td>
            </tr>
			<tr>
				<td cospan="" class="ri">
					<input type="submit" value="确定修改">
				</td>
			</tr>
		</table>
		<script type="text/javascript">
			var phoneRegex = /^1[3578]\d{9}$/;
			var passwordRegex = /^\w{6}/;
			function validateForm(){
				//检验手机号
				var phone = document.getElementById("phone");
				if(!phoneRegex.test(phone.value)){
					phone_span.style.display = "inline-block";
					phone_span.style.color = "red";
					phone_span.innerHTML = "请输入正确手机号";
					return false;
				}
				//检验密码
				var password = document.getElementById("password");
				if(!passwordRegex.test(password.value)){
					password_span.style.display = "inline-block";
					password_span.style.color = "red";
					password_span.innerHTML = "由a-z、0-9和下划线组成,至少为6位";
					return false;
				}

				//确认密码
				var repassword = document.getElementById("repassword");
				if(!password.value == repassword.value){
					repassword_span.style.display = "inline-block";
					repassword_span.style.color = "red";
					repassword_span.innerHTML = "密码不一致";
					return false;
				}

				//验证性别
				var obj = document.getElementsByName("user_sex");
				if((obj[0].value=="")||(obj[1].value=="")){
					alert("性别不能为空");
					return false;
				}
			}

			function checkphone(node){
				var phone = node.value;
				var phone_span = document.getElementById("phone_span");
				if(!phoneRegex.test(phone)){
					phone_span.style.display = "inline-block";
					phone_span.style.color = "red";
					phone_span.innerHTML = "请输入正确手机号";
				}else{
					phone_span.style.display = "inline-block";
					phone_span.style.color = "green";
					phone_span.innerHTML = "√";
				}
			}

			function checkpassword(node){
				var password = node.value;
				var password_span = document.getElementById("password_span")
				if(!passwordRegex.test(password)){
					password_span.style.display = "inline-block";
					password_span.style.color = "red";
					password_span.innerHTML = "由a-z、0-9和下划线组成,至少为6位";
				}else{
					password_span.style.display = "inline-block";
					password_span.style.color = "green";
					password_span.innerHTML = "√";
				}
			}

			function checkrepassword(node){
				var repassword = node.value;
				var password = document.getElementById("password")
				var repassword_span = document.getElementById("repassword_span")
				if((password.value != repassword)||(repassword == "")){
					repassword_span.style.display = "inline-block";
					repassword_span.style.color = "red";
					repassword_span.innerHTML = "密码不一致";
				}else{
					repassword_span.style.display = "inline-block";
					repassword_span.style.color = "green";
					repassword_span.innerHTML = "√";
				}
			}
		</script>
	</form>	
</body>
</html>