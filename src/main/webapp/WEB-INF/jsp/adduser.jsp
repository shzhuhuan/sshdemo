<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/user/addUser"
		method="post">
		用户名： <input type="text" name="name" ><br>
		密码： <input type="text" name="password" ><br>
		生日： <input type="text" name="birthday" >
		<br>邮箱： <input type="text" name="email">
		<br>角色： <input type="text" name="role"><br>
		其他： <input type="text" name="othertitle"><br>
		<input type="reset" value="重置"> <input type="submit"
			value="添加">
	</form>
</body>
</html>