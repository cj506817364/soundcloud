<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><c:set var="scp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>音云 | Web Application</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="${scp}/js/jPlayer/jplayer.flat.css" type="text/css" />
  <link rel="stylesheet" href="${scp}/css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="${scp}/css/animate.css" type="text/css" />
  <link rel="stylesheet" href="${scp}/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="${scp}/css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="${scp}/css/font.css" type="text/css" />
  <link rel="stylesheet" href="${scp}/css/app.css" type="text/css" />  
  
  <!--[if lt IE 9]>
    <script src="${scp}/js/ie/html5shiv.js"></script>
    <script src="${scp}/js/ie/respond.min.js"></script>
    <script src="${scp}/js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body class="">
  
	<section class="vbox">
		<!-- 静态引入头部 :在当前目录pages下面-->
		<%@include file="basepages/header.jsp"%>
		<section>
			<section class="hbox stretch">
				<!-- index的左旁边(其中包含了右旁边) -->
				<%@include file="basepages/liftaside.jsp"%>
				<!-- 主题部分 -->
				<section id="content">
					<section class="hbox stretch">


						
<!-- 						<aside class="bg-light dk" id="sidebar"> -->
						<section class="vbox animated">
							<section class="w-f-md scrollable hover">
								<c:if test="${newFriendNum!=0}">
								<h4 class="font-thin m-l-md m-t">新伙伴</h4>
								<ul class="list-group no-bg no-borders auto m-t-n-xxs">
									<!-- 模板开始 -->
									<c:forEach items="${newFriendList}" var="newFriend">
									<li class="list-group-item">
										<span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm"> <img
												src="${scp}/images/a1.png" alt="..." class="img-circle"> <i
												class="on b-light right sm"></i>
										</span>
										<div class="clear">
											<div>
												<a href="#">${newFriend.nickname}</a>
											</div>
											<small class="text-muted">${newFriend.city}</small>
											<a href="${scp}/Tip/addFriends?userInfoId=${newFriend.userInfoId}"> <i class="fa fa-plus-circle" ></i></a>
										</div>
									</li>
									</c:forEach>
									<!-- 模板结束 -->
								</ul>
								</c:if>
								<c:if test="${newFriendNum==0}">
									<h4 class="font-thin m-l-md m-t">还没有找到新伙伴,快去喊他来听音乐吧!</h4>
								</c:if>
							</section>
						</section>
		<!-- 				</aside> -->
<%-- 		
						<section>
							<section class="vbox">
							<!-- 底部播放器 -->
								<%@include file="basepages/playfooter.jsp"%>
							</section>
						</section> --%>
					</section>
					<a href="#" class="hide nav-off-screen-block"
						data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
				</section>
			</section>
		</section>
	</section>
	
  <script src="${scp}/js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="${scp}/js/bootstrap.js"></script>
  <!-- App -->
  <script src="${scp}/js/app.js"></script>  
  <script src="${scp}/js/slimscroll/jquery.slimscroll.min.js"></script>
  
  <script src="${scp}/js/app.plugin.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/demo.js"></script>

</body>
</html>