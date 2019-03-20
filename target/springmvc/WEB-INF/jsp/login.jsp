<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆页面</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/user/login" method="post">
		<font color="red">${msg}</font><br>
		用户名：<input type="text" name="name"> <br>
		 密码：<input type="text" name="password">  <br>
		 <input type="reset" value="重置">
		  <input type="submit" value="确认">
	</form>
</body>
</html>