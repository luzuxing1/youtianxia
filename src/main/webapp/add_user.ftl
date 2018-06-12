<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="UTF-8">
<#assign base=request.contextPath />
<base id="base" href="${base}">
<title>添加用户</title>
<style type="text/css">
	.ri{text-align: right;width: 100px;}
	.cn{width: 165px;}
</style>
</head>
<body>
	<form action="${base}/user/addUser?page=${userPage.currentPage}" method="post" onsubmit="return validateForm()" >
		<table width="50%">
			<tr>
				<td class="ri">手机号：</td>
				<td class="cn"><input type="text" name="userPhone" id="phone" onblur="checkphone(this)"></td>
				<td><span id="phone_span"></span></td>
			</tr>
			<tr>
				<td class="ri">密码：</td>
				<td class="cn"><input type="password" name="userPassword" id="password" onblur="checkpassword(this)"></td>
				<td><span id="password_span"></span></td>
			</tr>
			<tr>
				<td class="ri">确认密码：</td>
				<td class="cn"><input type="password"  id="repassword" onblur="checkrepassword(this)"></td>
				<td><span id="repassword_span"></span></td>
			</tr>
			<tr>
				<td class="ri">邮箱：</td>
				<td class="cn"><input type="text" name="userEmail"></td>
			</tr>
			<tr>
				<td class="ri">昵称：</td>
				<td class="cn"><input type="text" name="userNickname"></td>
			</tr>
			<tr>
				<td class="ri">头像：</td>
				<td class="cn"><input type="file" name="userHeadimg"></td>
			</tr>
			<tr>
				<td class="ri">身份证：</td>
				<td class="cn"><input type="text" name="userPid"></td>
			</tr>
			<tr>
				<td class="ri">真实姓名：</td>
				<td class="cn"><input type="text" name="userRealname"></td>
			</tr>
			<tr>
				<td class="ri">角色：</td>
				<td class="cn"><input type="text" name="userRole"></td>
			</tr>
			<tr>
				<td cospan="" class="ri">
					<input type="submit" value="添加">
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