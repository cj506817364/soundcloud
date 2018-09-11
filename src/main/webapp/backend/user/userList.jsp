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
					<a href="#" onclick="formSubmit('toview','_self');this.blur();">查看</a>&nbsp;&nbsp;
					<!-- <a href="#" onclick="formSubmit('tocreate','_self');this.blur();">新增</a>&nbsp;&nbsp; -->
					<a href="#" onclick="formSubmit('toupdate','_self');this.blur();">修改</a>&nbsp;&nbsp;
					<a href="#" onclick="formSubmit('delete','_self');this.blur();">删除</a>&nbsp;&nbsp;
					<a href="#" onclick="formSubmit('startvip','_self');this.blur();">开通vip</a>&nbsp;&nbsp;
					<a href="#" onclick="formSubmit('stopvip','_self');this.blur();">停用vip</a>&nbsp;&nbsp;
					<a href="#" onclick="formSubmit('startstate','_self');this.blur();">激活</a>&nbsp;&nbsp;
					<a href="#" onclick="formSubmit('stopstate','_self');this.blur();">禁用</a>&nbsp;&nbsp;
					<a href="${scp}/backend/user/poi">生成报表</a>
				</span>
				<table class="am-table">
					<thead>
						<tr>
							<td><input type="checkbox" name="selid" onclick="checkAll('userId',this)"></td>
							<td class="tableHeader">序号</td>
							<td class="tableHeader">用户名称</td>
							<td class="tableHeader">邮箱</td>
							<td class="tableHeader">vip</td>
							<td class="tableHeader">积分</td>
							<td class="tableHeader">注册时间</td>
							<td class="tableHeader">最近登录时间</td>
							<td class="tableHeader">状态</td>
						</tr>
					</thead>
					<tbody class="tableBody">

						<c:forEach items="${userList}" var="u" varStatus="status">
							<tr>
								<td><input type="checkbox" name="userId" value="${u.userId}" /></td>
								<td>${status.index+1}</td>
								<td>${u.username}</td>
								<td>${u.userInfo.email}</td>
								<td>
									<c:if test="${u.userInfo.vip == 1}">
										<a href="stopvip?userId=${u.userId}"> 
										<font style="font-weight:bold;color: red">Vip</font></a>
									</c:if> 
									<c:if test="${u.userInfo.vip == 0}">
										<a href="startvip?userId=${u.userId}"> <font color="gray">未开通</font></a>
									</c:if>
								</td>
								<td>${u.userInfo.score}</td>
								<td><fmt:formatDate value="${u.userInfo.createTime}" pattern="yyyy-MM-dd"/></td>
								<td><fmt:formatDate value="${u.userInfo.lastLoginTime}" pattern="yyyy-MM-dd" /></td>
								<td>
									<c:if test="${u.userInfo.state == 1}">
										<a href="stopstate?userId=${u.userId}"> <font color="green">己激活</font></a>
									</c:if> 
									<c:if test="${u.userInfo.state == 0}">
										<a href="startstate?userId=${u.userId}"> <font color="red">未激活</font></a>
									</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
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