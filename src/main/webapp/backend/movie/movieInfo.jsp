<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<div class="admin">
				<div class="xinxitj">信息概况</div>
				<hr />
				<div id="status"></div>
				<table class="am-table">
					<tr>
						<td>视频名称</td>
						<td>${movie.videoname}</td>
						<td>视频时长</td>
						<td>${movie.videotime}</td>
					</tr>
					<tr>
						<td>视频简介</td>
						<td>${movie.brief}</td>
						<td>视频路径</td>
						<td>${movie.videoUrl}</td>
					</tr>
					<tr>
						<td>扩展名</td>
						<td>${movie.expandedName}</td>
						<td>视频状态</td>
						<td><c:if test="${movie.state == 0}">停用</c:if> <c:if
								test="${movie.state == 1}">起用</c:if></td>
					</tr>
					<tr>
						<td>创建时间</td>
						<td><fmt:formatDate value="${movie.createTime}"
								pattern="yyyy-MM-dd HH:mm:ss" /></td>
						<td>最后时间</td>
						<td><fmt:formatDate value="${movie.updateTime}"
								pattern="yyyy-MM-dd HH:mm:ss" /></td>
					</tr>
					
				</table>
				<div class="admin-index"></div>
				<div class="admin-biaoge"></div>
			</div>
		</div>
	</div>
	</script>
</body>
</html>