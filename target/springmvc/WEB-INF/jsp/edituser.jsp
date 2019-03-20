<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑用户</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/user/updateUser" method="post">
		<table border="1" cellpadding="1" cellspacing="1">
			<input type="hidden" name="id" value="${user.id }">
			<br> 用户名：
			<input type="text" name="name" value="${user.name}">
			<br> 密码：
			<input type="text" name="password" value="${user.password}">
			<br> 生日：
			<input type="text" name="birthday" value="${user.birthday}">
			<br>邮箱：
			<input type="text" name="email" value="${user.email}">
			<br>角色：
			<input type="text" name="role" value="${user.role}">
			<br> 其他：
			<inputtype ="text" name="othertitle" value="${user.othertitle}">
			<br>
			<input type="reset" value="重置"> <input type="submit"
				value="编辑">
		</table>
	</form>
</body>
</html>