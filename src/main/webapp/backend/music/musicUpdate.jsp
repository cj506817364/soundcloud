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
<script type="text/javascript" src="${scp}/backend/assets/js/WdatePicker.js"></script>
<script src="${scp}/backend/assets/js/jquery.min.js"></script>
<script src="${scp}/backend/assets/js/app.js"></script>
<script src="${scp}/backend/assets/js/common.js"></script>	
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
					<a href="#" onclick="formSubmit('update','_self');this.blur();">修改</a>&nbsp;&nbsp;
					<a href="#" onclick="window.history.go(-1);this.blur();">返回</a>
				</span>
				<table class="am-table">
					<tr hidden="hidden">
						<td>音频id:</td>
						<td><input type="text" name="audioId" value="${audio.audioId}"/></td>
					</tr>
					<tr>
						<td>音频名称:</td>
						<td><input type="text" name=audioname value="${audio.audioname}"/></td>
						<td>流派:</td>
						<td><input type="text" name="genre" value="${audio.genre}"></td>
					</tr>
					<tr>
						<td>专辑:</td>
						<td>
							<input type="text" name="special" value="${audio.special}"/>
						</td>
						<td>歌手:</td>
						<td>
							<input type="text" name="singer" value="${audio.singer}"/>
						</td>
					</tr>
					<tr>
						<td>作词:</td>
						<td>
							<input type="text" name="writeWords" value="${audio.writeWords}"/>
						</td>
						<td>作曲:</td>
						<td>
							<input type="text" name="compose" value="${audio.compose}"/>
						</td>
					</tr>
					<tr>
						<td>播放次数:</td>
						<td>
							<input type="text" name="playNum" value="${audio.playNum}"/>
						</td>
						<td>状态:</td>
						<td>
							<input type="radio" name="state" value="1" <c:if test="${audio.state == 1}">checked="checked"</c:if>>启用
							<input type="radio" name="state" value="0" <c:if test="${audio.state == 0}">checked="checked"</c:if>>禁用
						</td>
					</tr>
					<tr>
						<td>描述:</td>
						<td colspan="3">
							<textarea name="remarks" style="width:100%;height:80px">${audio.remarks}</textarea>
						</td>
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