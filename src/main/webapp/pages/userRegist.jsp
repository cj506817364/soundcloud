<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><c:set
	var="scp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>音云 | Web Application</title>
<meta name="description"
	content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="${scp}/js/jPlayer/jplayer.flat.css"
	type="text/css" />
<link rel="stylesheet" href="${scp}/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="${scp}/css/animate.css" type="text/css" />
<link rel="stylesheet" href="${scp}/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="${scp}/css/simple-line-icons.css"
	type="text/css" />
<link rel="stylesheet" href="${scp}/css/font.css" type="text/css" />
<link rel="stylesheet" href="${scp}/css/app.css" type="text/css" />
<!--[if lt IE 9]>
    <script src="${scp}/js/ie/html5shiv.js"></script>
    <script src="${scp}/js/ie/respond.min.js"></script>
    <script src="${scp}/js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body class="bg-info dker">
	<section id="content" class="m-t-lg wrapper-md animated fadeInUp">
		<div class="container aside-xl">
			<section class="m-b-lg">
				<div class="form-group">
					<h2 style="text-align:center">${ regist_msg }</h2>
				</div>
				<a href="${scp }/login/toLogin.action">
					<button 
						class="btn btn-lg btn-warning lt b-white b-2x btn-block btn-rounded">
						<i class="icon-arrow-right pull-right"></i><span class="m-r-n-lg">请
							点击进入登入页面</span>
					</button>

				</a>
			</section>
		</div>
	</section>
	<!-- footer -->
	<footer id="footer">
		<div class="text-center padder">
			<p>
				<small>Web app framework base on Bootstrap<br>&copy;
					2017
				</small>
			</p>
		</div>
	</footer>
	<!-- / footer -->
	<script src="${scp}/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="${scp}/js/bootstrap.js"></script>
	<!-- App -->
	<script src="${scp}/js/app.js"></script>
	<script src="${scp}/js/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${scp}/js/app.plugin.js"></script>
	<script type="text/javascript"
		src="${scp}/js/jPlayer/jquery.jplayer.min.js"></script>
	<script type="text/javascript"
		src="${scp}/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
	<script type="text/javascript" src="${scp}/js/jPlayer/demo.js"></script>

</body>
</html>