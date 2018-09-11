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
<script src="${scp}/backend/assets/js/common.js"></script>	
</style>
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
				<span>
					<a href="#" onclick="window.history.go(-1);this.blur();">返回</a>
				</span>
				<table class="am-table">
					<tr>
						<td>音频名称:</td>
						<td>${audio.audioname}</td>
						<td>音频文件名称:</td>
						<td>${audio.uuidName}</td>
					</tr>
					<tr>
						<td>流派</td>
						<td>${audio.genre}</td>
						<td>专辑</td>
						<td>${audio.special}</td>
					</tr>
					<tr>
						<td>歌手</td>
						<td>${audio.singer}</td>
						<td>作词</td>
						<td>${audio.writeWords}</td>
					</tr>
					<tr>
						<td>作曲</td>
						<td>${audio.compose}</td>
						<td>播放次数</td>
						<td>${audio.playNum}</td>
					</tr>
					<tr>
						<td>发布时间:</td>
						<td><fmt:formatDate value="${audio.createTime}" pattern="yyyy-MM-dd"/></td>
						<td>状态:</td>
						<td>
							<c:if test="${audio.state == 1}">已激活</c:if>
							<c:if test="${audio.state == 0}">未激活</c:if>
						</td>
					</tr>
					<tr>
						<td>音频链接:</td>
						<td>${audio.audioUrl}</td>
						<td>描述:</td>
						<td>${audio.remarks}</td>
					</tr>
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
	<script type="text/javascript">
	function toDelete(othis){
		var id = $(othis).data('id');
		window.location.href = "${scp}/backend/movie/movieDelete?videoId="+id;
	}
	</script>
</body>
</html>