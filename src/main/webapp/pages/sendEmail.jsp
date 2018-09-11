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
<script type="text/javascript" src="${scp}/js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	$(function() {

		$("#emailButton").click(function() {

			var username = $("#username").val();
			var password = $("#password").val();
			$.post("/login/sendMail", {
				"username" : username,
				"password" : password
			}, function(result) {
				if("true" == result){
					$("#mail_msg").html("邮件已发送到注册邮箱，请登录邮箱激活账号");
				}
			})

		})

	});
</script>
</head>
<body class="bg-info dker">
	<section id="content" class="m-t-lg wrapper-md animated fadeInUp">
		<div class="container aside-xl">
			<a class="navbar-brand block" href="index.jsp"><span
				class="h1 font-bold">音云</span></a>
			<section class="m-b-lg">
				<header class="wrapper text-center">
					<strong>Sign in to get in touch</strong>
				</header>

				<input id="emailButton" type="button"
					class="btn btn-lg btn-info btn-block rounded" style="color: black" value="此账号未激活，请点击此按钮发送邮件"></input>
				<span id="mail_msg" style="color: red;font-size:20px ;text-align: center;padding-left: 30px"></span> <input
					id="username" value="${ user.username }" 
					style="color: red; text-align: center" hidden="hidden"></input> 
					<input id="password" value="${ user.password }"
					style="color: red; text-align: center;color: black;" hidden="hidden" ></input>
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