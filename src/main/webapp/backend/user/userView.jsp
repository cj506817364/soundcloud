<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="scp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
<meta name="description" content="这是一个音乐列表界面">
<meta name="keywords" content="index">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png"
	href="${scp}/backend/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="${scp}/backend/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="${scp}/backend/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="${scp}/backend/assets/css/admin.css">
<script src="${scp}/backend/assets/js/jquery.min.js"></script>
<script src="${scp}/backend/assets/js/app.js"></script>
</head>
<body>
	<!-- 包含头部 -->
	<%@include file="../basepages/headbase.jsp"%>

	<div class="am-cf admin-main">

		<!-- 包含左侧 -->
		<%@include file="../basepages/leftbase.jsp"%>
		<div class=" admin-content">
			<!-- 包含title -->
			<%@include file="../basepages/titlebase.jsp"%>
			<form action="" method="post">
			<div class="admin">
				<div class="xinxitj" style="font-weight: blod;font-size:30px;">信息概况</div><hr/>
				<a href="#" onclick="window.history.go(-1);this.blur();">返回</a>
				<table class="am-table">
					<tr>
						<td>用户id:</td>
						<td>${user.userId}</td>
						<td>用户名称:</td>
						<td>${user.username}</td>
					</tr>
					<tr>
						<td>昵称:</td>
						<td>${user.userInfo.nickname}</td>
						<td>邮箱:</td>
						<td>${user.userInfo.email}</td>
					</tr>
					<tr>
						<td>性别:</td>
						<td>${user.userInfo.gender}</td>
						<td>生日:</td>
						<td><fmt:formatDate value="${user.userInfo.birthday}" pattern="yyyy-MM-dd"/></td>
					</tr>
					<tr>
						<td>积分:</td>
						<td>${user.userInfo.score}</td>
						<td>vip:</td>
						<td>
							<c:if test="${user.userInfo.vip == 1}">vip开通</c:if>
							<c:if test="${user.userInfo.vip == 0}">vip未开通</c:if>
						</td>
					</tr>
					<tr>
						<td>状态:</td>
						<td>
							<c:if test="${user.userInfo.state == 1}">已激活</c:if>
							<c:if test="${user.userInfo.state == 0}">未激活</c:if>
						</td>
						<td>最近登录时间:</td>
						<td><fmt:formatDate value="${user.userInfo.lastLoginTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					</tr>
					<tr>
						<td>所在地:</td>
						<td>${user.userInfo.city}</td>
						<td>描述:</td>
						<td>${user.userInfo.remarks}</td>
					</tr>
				</table>
			</div>
			</form>
			<div class="foods">
				<ul>top
				</ul>
				<dl>
					<a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
				</dl>
			</div>
		</div>
	</div>
	<script src="${scp}/backend/assets/js/amazeui.min.js"></script>
</body>
</html>