<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="scp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="assets/css/amazeui.min.css" />
<link rel="stylesheet" href="assets/css/admin.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/app.js"></script>

<link rel="stylesheet" href="${scp}/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="${scp}/css/animate.css" type="text/css" />

<script type="text/javascript">
function queryAllPerson(pageNum, pageSize) {
	
	window.location.href ="/backend/index.action?pageNum=" + pageNum + "&pageSize=" + pageSize;
}

	
</script>
</head>

<body>
	<!-- 包含头部 -->
	<%@include file="basepages/headbase.jsp"%>
	<div class="am-cf admin-main">
		<!-- 包含左侧 -->
		<%@include file="basepages/leftbase.jsp"%>
		<div class=" admin-content">
			<!-- 包含title -->
			<%@include file="basepages/titlebase.jsp"%>
			<div class="admin">
				<div class="admin-index">
					<dl data-am-scrollspy="{animation: 'slide-right', delay: 100}">
						<dt class="qs">
							<i class="am-icon-users"></i>
						</dt>
						<dd>${allUser}</dd>
						<dd class="f12">注册人数</dd>
					</dl>
					<dl data-am-scrollspy="{animation: 'slide-right', delay: 300}">
						<dt class="cs">
							<i class="am-icon-area-chart"></i>
						</dt>
						<dd>${allNews}</dd>
						<dd class="f12">新闻数量</dd>
					</dl>
					<dl data-am-scrollspy="{animation: 'slide-right', delay: 600}">
						<dt class="hs">
							<i class="am-icon-shopping-cart"></i>
						</dt>
						<dd>${allMusic}</dd>
						<dd class="f12">歌曲数量</dd>
					</dl>
					<dl data-am-scrollspy="{animation: 'slide-right', delay: 900}">
						<dt class="ls">
							<i class="am-icon-cny"></i>
						</dt>
						<dd>${allVideo}</dd>
						<dd class="f12">视频数量</dd>
					</dl>
				</div>
				<div class="admin-biaoge">
					<div class="xinxitj">信息概况</div>
					<table class="am-table">
						<thead>
							<tr>
								<th>用户名</th>
								<th>昵称</th>
								<th>邮箱</th>
								<th>vip</th>
								<th>城市</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pagehelper.list}" var="user" >
								<tr>
									<td>${user.username}</td>
									<td>${user.nickname}</td>
									<td>${user.email}</a></td>
									<td><a href="#"> <c:if test="${user.vip == 1}">vip</c:if>
											<c:if test="${user.vip != 1}">未开通</c:if>
									</a></td>
									<td>${user.city}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				<div class="text-center m-t-lg m-b-lg">
											<ul class="pagination pagination-md">
												<!-- <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
												 -->

												<c:if test="${!pagehelper.isFirstPage}">
													<li><a
														href="javascript:queryAllPerson(${pagehelper.firstPage}, ${pagehelper.pageSize});">&lt;&lt;</a></li>
													<li><a
														href="javascript:queryAllPerson(${pagehelper.prePage}, ${pagehelper.pageSize});">&lt;</a></li>
												</c:if>
												<c:forEach items="${pagehelper.navigatepageNums}"
													var="navigatepageNum">

													<c:if test="${navigatepageNum==pagehelper.pageNum}">
														<li class="active"><a
															href="javascript:queryAllPerson(${navigatepageNum}, ${pagehelper.pageSize});">${navigatepageNum}</a></li>
													</c:if>
													<c:if test="${navigatepageNum!=pagehelper.pageNum}">
														<li><a
															href="javascript:queryAllPerson(${navigatepageNum}, ${pagehelper.pageSize});">${navigatepageNum}</a></li>
													</c:if>
												</c:forEach>
												<c:if test="${!pagehelper.isLastPage}">
													<li><a
													href="javascript:queryAllPerson(${pagehelper.nextPage}, ${pagehelper.pageSize});">&gt;</a></li>
													<li><a
														href="javascript:queryAllPerson(${pagehelper.lastPage}, ${pagehelper.pageSize});">&gt;&gt;</a></li>
												</c:if>
											</ul>
										</div>
										
				</div>
				<div class="shuju">
					<div class="shujuone">
						<dl>
							<dt></dt>
							<dt></dt>
							<dt></dt>
						</dl>
						<ul>
							<h2>VIP:${VIP}</h2>
							<li></li>
						</ul>
					</div>
					<div class="shujutow">
						<dl>
							<dt></dt>
							<dt></dt>
							<dt></dt>
						</dl>
						<ul>
							<h2></h2>
							<li></li>
						</ul>
					</div>
					<div class="slideTxtBox">
						<div class="hd">
							<ul>
								<li>其他信息</li>
								<li>这里没有数据</li>
							</ul>
						</div>
						<div class="bd">
							<ul>
								<table width="100%" class="am-table">
									<tbody>
										<tr>
											<td width="7%" align="center">1</td>
											<td width="83%">工作进度名称</td>
											<td width="10%" align="center"><a href="#">10%</a></td>
										</tr>
										<tr>
											<td align="center">1</td>
											<td>工作进度名称</td>
											<td align="center"><a href="#">10%</a></td>
										</tr>
										<tr>
											<td align="center">1</td>
											<td>工作进度名称</td>
											<td align="center"><a href="#">10%</a></td>
										</tr>
										<tr>
											<td align="center">1</td>
											<td>工作进度名称</td>
											<td align="center"><a href="#">10%</a></td>
										</tr>

										<tr>
											<td align="center">1</td>
											<td>工作进度名称</td>
											<td align="center"><a href="#">10%</a></td>
										</tr>

										<tr>
											<td align="center">1</td>
											<td>工作进度名称</td>
											<td align="center"><a href="#">10%</a></td>
										</tr>

										<tr>
											<td align="center">1</td>
											<td>工作进度名称</td>
											<td align="center"><a href="#">10%</a></td>
										</tr>
									</tbody>
								</table>
							</ul>
							
						</div>
					</div>
					<script type="text/javascript">
						jQuery(".slideTxtBox").slide();
					</script>
				</div>
				<div class="foods">
					<ul>好好学习天天向上
					</ul>
					<dl>
						<a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
					</dl>
				</div>
			</div>
		</div>
	</div>

</body>
</html>