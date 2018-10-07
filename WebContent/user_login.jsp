<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>登录页面</title>
<link rel="stylesheet" href="<%=basePath%>css/login.css">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<script type="text/javascript">
	function userLog() {
		var managerName = document.getElementById("managerName").value;
		var managerPassword = document.getElementById("managerPassword").value;
		var yzm = document.getElementById("yzm").value;
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
		if (yzm == "") {
			alert("验证码不能为空！");
			document.form1.yzm.focus();
			return false;
		}
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					if (xhr.responseText == "1") {
					//	alert("登录成功！");
						document.form1.action = "index.jsp";
						document.form1.submit();
					} else if (xhr.responseText == "2") {
						alert("登录失败！验证码错误!");
					} else {
						alert("登录失败！用户名或密码错误!");
					}
				}
			}
		}
		xhr.open("post","user_login.action?managerName=" + managerName
				+ "&managerPassword=" + managerPassword + "&yzm="
				+ yzm);
		xhr.send(null);
	}
</script>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>

	<div id="log">
		<div id="title">用户登录</div>
		<form class="form-horizontal" role="form" name="form1">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label  ">用户名：</label>
				<div class="col-sm-10">
					<input type="text" class="form-control input-lg" id="managerName"
						name="managerName" placeholder="请输入您的用户名">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">密码：</label>
				<div class="col-sm-10">
					<input type="password" class="form-control input-lg"
						id="managerPassword" name="managerPassword" placeholder="请输入您的密码">
				</div>
			</div>

			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">验证码：</label>
				<div class="col-sm-10">
					<input type="yzm" class="form-control input-lg" id="yzm"
						name="yzm" placeholder="请输入验证码"
						style="width: 200px; float: left;"> <img id="yzmImg"
						alt="middle"
						src="${pageContext.request.contextPath}/validateCode.action?time="
						+new Date().getTime();
						width="100px" height="45px"
						style="float: left; margin: 0 0 0 20px" onclick="changeImg(this)">
				</div>
			</div>

			<button id="user" type="button" value="用户登录"
				class="btn btn-default btn-lg" onclick="userLog()">用户登录</button>
			<input type="reset" class="btn btn-default btn-lg " value="重置" />

		</form>
	</div>

	<script type="text/javascript">
		function changeImg() {
			var yzmImg = document.getElementById("yzmImg");
			yzmImg.src = "${pageContext.request.contextPath}/validateCode.action?time="
					+ new Date().getTime();
			//alert("1"); 
			//img.src="${pageContext.request.contextPath}/validateCode.action?time="+new Date().getTime(); 
		}
	</script>
</body>
</html>
