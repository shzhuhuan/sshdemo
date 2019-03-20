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

	<table border="1">
		<tr>
			<th>用户名</th>
			<th>密码</th>
			<th>生日</th>
			<th>邮箱</th>
			<th>角色</th>
			<th>其他</th>
			<th>操作</th>
		</tr>
		<c:if test="${!empty users }">
				<c:forEach items="${users }" var="user">
					<tr>
						<td>${user.name }</td>
						<td>${user.password }</td>
						<td>${user.birthday }</td>
						<td>${user.email }</td>
						<td>${user.role }</td>
						<td>${user.othertitle }</td>
						<td><a href="<%=request.getContextPath()%>/user/getUser?id=${user.id }">编辑</a>
							<a href="<%=request.getContextPath()%>/user/delUser?id=${user.id }">删除</a>
						</td>
					</tr>
				</c:forEach>
			</c:if>
	</table>
	<h3><a href="<%=request.getContextPath()%>/user/toaddUser">添加用户</a></h3>
</body>
</html>