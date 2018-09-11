<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
						<td>用户id:</td>
						<td><input type="text" name="userId" value="${user.userId}"/></td>
					</tr>
					<tr>
						<td>用户名称:</td>
						<td><input type="text" name="username" value="${user.username}"/></td>
						<td>密码:</td>
						<td><input type="text" name="password" value="${user.password}"/></td>
					</tr>
					<tr>
						<td>昵称:</td>
						<td><input type="text" name="nickname" value="${user.userInfo.nickname}"></td>
						<td>性别:</td>
						<td>
							<input type="radio" name="gender" value="男" <c:if test="${user.userInfo.gender == '男'}">checked="checked"</c:if>/>男
							<input type="radio" name="gender" value="女" <c:if test="${user.userInfo.gender == '女'}">checked="checked"</c:if>/>女
						</td>
					</tr>
					<tr>
						<td>积分:</td>
						<td><input type="text" name="score" value="${user.userInfo.score}"/></td>
						<td>vip:</td>
						<td>
							<input type="radio" name="vip" value="1" <c:if test="${user.userInfo.vip == 1}">checked="checked"</c:if>/>开通
							<input type="radio" name="vip" value="0" <c:if test="${user.userInfo.vip == 0}">checked="checked"</c:if>/>未开通
						</td>
					</tr>
					<tr>
						<td>状态:</td>
						<td>
							<input type="radio" name="state" value="1" <c:if test="${user.userInfo.state == 1}">checked="checked"</c:if>>已激活
							<input type="radio" name="state" value="0" <c:if test="${user.userInfo.state == 0}">checked="checked"</c:if>>未激活
						</td>
						<td>生日:</td>
						<td>
							<input type="date" name="birthday" 
							value="<fmt:formatDate value='${user.userInfo.birthday}' pattern='yyyy-MM-dd'/>" 
							onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/>
						</td>
					</tr>
					<tr>
						<td>邮箱:</td>
						<td><input type="text" name="email" value="${user.userInfo.email}"/></td>
						<td>所在地:</td>
						<td>
							<input type="text" name="city" value="${user.userInfo.city}">
						</td>
					</tr>
					<tr>
						<td>描述:</td>
						<td colspan="3">
							<textarea name="remarks" style="width:100%;height:80px">${user.userInfo.remarks}</textarea>
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