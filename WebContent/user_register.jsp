<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<title>注册页面</title>
<link rel="stylesheet" href="<%=basePath%>css/register.css">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script type="text/javascript">
	function test() {
		var managerName = document.getElementById("managerName").value;
		var managerPassword = document.getElementById("managerPassword").value;
		var reManagerPassword = document.getElementById("reManagerPassword").value;
		if (managerName == "") {
			alert("用户名不能为空！");
			document.form1.managerName.focus();
			return false;
		}
		if (managerPassword == "") {
			alert("密码不能为空！");
			document.form1.managerPassword.focus();
			return false;
		}
		if (reManagerPassword != managerPassword) {
			alert("两次密码不一致！");
			document.form1.reManagerPassword.focus();
			return false;
		}
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					if (xhr.responseText == "0") {
						//alert("注册成功！");
						document.form1.action = "user_login.jsp";
						document.form1.submit();
					} else {
						alert("注册失败！");
					}
				}
			}
		}
		xhr.open("post", "user_register.action?managerName=" + managerName
				+ "&managerPassword=" + managerPassword);
		xhr.send(null);
	}
</script>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
	%>


	<div id="main">
		<div id="title">用户注册</div>
		<form role="form" name="form1">
			<div class="form-group">
				<label for="InputUsername ">用户名：</label> <input type="text"
					class="form-control input-lg" id="managerName" name="managerName"
					maxlength="15" placeholder="请输入您的用户名">
			</div>
			<div class="form-group">
				<label for="InputPassword">密码：</label> <input type="password"
					class="form-control input-lg" id="managerPassword"
					name="managerPassword" maxlength="20" placeholder="请输入您的密码">
			</div>
			<div class="form-group">
				<label for="InputRePassword">确认密码：</label> <input type="password"
					class="form-control input-lg" id="reManagerPassword"
					name="reManagerPassword" placeholder="请再次输入您的密码">
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input class="btn btn-default btn-lg " type="button" value="确定注册"
						onclick="test()" /> <input class="btn btn-default  btn-lg "
						type="reset" value="重置" />
				</div>
			</div>
		</form>
	</div>


</body>
</html>