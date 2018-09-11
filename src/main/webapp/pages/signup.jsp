<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="scp" value="${pageContext.request.contextPath}" />
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

<script type="text/javascript" src="${scp}/js/jsAddress.js"></script>
<script type="text/javascript" src="${scp}/js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="${scp}/js/jquery.validate.1.17.0.js"></script>
<script type="text/javascript" src="${scp}/js/additional-methods.js"></script>
<script type="text/javascript" src="${scp}/js/messages/messages_zh.js"></script>

<script type="text/javascript">
	$(function() {
		//让当前表单调用validate方法，实现表单验证功能
		$("#form").validate({
			debug : false, //调试模式，即使验证成功也不会跳转到目标页面
			onfocusout : function(element) {
				$(element).valid();
			},
			onkeyup : function(element) {
				$(element).valid();
			},
			rules : { //配置验证规则，key就是被验证的dom对象，value就是调用验证的方法(也是json格式)

				username : {
					required : true, //必填。如果验证方法不需要参数，则配置为true
					rangelength : [ 2, 12 ],
					//异步验证 开始					
					remote : {
						url : "${scp}/ajax_check.action", //发送请求的url地址
						type : "post",//请求方式
						dataType : "json",//接收的数据类型
						data : {
							username : function() {
								return $("#username").val();
							}
						}
					},
				//异步验证 结束
					isSpace : true //验证是否含有空格
				},

				password : {
					required : true,
					rangelength : [ 2, 12 ],
					isSpace : true
				},

				password2 : {
					required : true,
					equalTo : '#password' ,//表示和id="password"的值相同
					isSpace : true
				},
				email : {
					required : true,
					email : true ,
				},
				nickname : {
					required : true,
					isSpace : true
				},
				city : {
					required : true,
				},
				birthday : {
					date : true,
				},
			},
			
	
			messages : {
				username : {
					required : "请输入用户名",
					rangelength : $.validator.format("用户名长度在必须为:{0}-{1}之间"),
					remote : "用户名已经被注册",
					
				},
				password : {
					required : "请输入密码",
					rangelength : $.validator.format("字段长度必须为:{0}-{1}之间"),
					isSpace : "不能含有空格!"
				},
				password2 : {
					required : "请再次输入密码",
					equalTo : "两次密码必须一致", //表示和id="password"的值相同
				},
				email : {
					required : "请填写正确的邮件",
					email : "邮箱格式不正确",
				},
				nickname : {
					required : "请填写正确的昵称",
				},
				city : {
					required : "请填写正确的城市",
				},
				birthday : {
					date : "请填写正确的生日",
				}
			}
		
		});
		
		//检测数据否有空格
		jQuery.validator.addMethod("isSpace", function(value, element) { 
		    if(value.indexOf(" ") == -1){
		    	return true;
		    }else{
		    	return false;
		    }
		}, "不能含有空格!");
		
	});


</script>


<!--[if lt IE 9]>
    <script src="${scp}/js/ie/html5shiv.js"></script>
    <script src="${scp}/js/ie/respond.min.js"></script>
    <script src="${scp}/js/ie/excanvas.js"></script>
  <![endif]-->

</head>
<body class="bg-info dker">
	<section id="content" class="m-t-lg wrapper-md animated fadeInDown">
		<div class="container aside-xl">
			<a class="navbar-brand block" href="index.jsp"><span
				class="h1 font-bold">音云</span></a>
			<section class="m-b-lg">
				<header class="wrapper text-center">
					<strong>Sign up to find interesting thing</strong>
				</header>
				<form id="form" method="post" action="${scp}/regist/regist.action">
					<div class="form-group">
						<td><input id="username" type="text" name="username"
							placeholder="用户名"
							class="form-control rounded input-lg text-center no-border"/></td>
						<span id="username_msg">${name}</span>
					</div>

					<div class="form-group">
						<input type="password"  name="password" id="password"
							placeholder="Password"
							class="form-control rounded input-lg text-center no-border"/>
							<span>${pw}</span>
					</div>

					<div class="form-group">
						<input type="password" name="password2" id="password2" placeholder="Password"
							class="form-control rounded input-lg text-center no-border"/>
							<span>${pw2}</span>
					</div>
					<div class="form-group">
						<input type="text" id="nickname" name="nickname" placeholder="昵称"
							class="form-control rounded input-lg text-center no-border"/>
							<span>${nickname}</span>
					</div>
					<div class="form-group">
						<input type="Date" id="birthday" name="birthday" placeholder="生日"
							style="padding-right: 40px; padding-left: 100px;"
							class="form-control rounded input-lg text-center no-border"/>
							<span>${birthday}</span>
					</div>
					<div class="form-group">

					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						省：<select id="select1" name="citys" style="color: black; width: 80px"></select> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						市： <select name="city" id="city" style="color: black;  width: 80px"></select>
						<select id="Select3" style="color: black;  width: 60px ;" hidden="hidden"></select>
						<span>${city}</span>

					</div>

					<div class="form-group">
						<input type="email" name="email" id="email" placeholder="邮箱"
							class="form-control rounded input-lg text-center no-border"/>
						<span>${email}</span>
					</div>



					<!-- <div class="form-group">
						<input value="获取邮箱验证码" type="button" id="emailButton"
							class="form-control rounded input-lg text-center no-border">
						<span id="username_msg"></span>
					</div>
										<div class="form-group">
						<input id="checkcode" type="text" name="checkcode"
							placeholder="请输入验证码"
							class="form-control rounded input-lg text-center no-border">
						<span id="username_msg"></span>
					</div> 



					<div class="form-group">
						<input type="text" name="emailVali" placeholder="邮箱验证码"
							class="form-control rounded input-lg text-center no-border">
					</div> -->
					<!-- <div class="checkbox i-checks m-b">
						<label class="m-l"> <input type="checkbox" checked=""><i></i>
							Agree the <a href="#">terms and policy</a>
						</label>
					</div> -->
					<!--           <button type="submit" class="btn btn-lg btn-warning lt b-white b-2x btn-block btn-rounded"><i class="icon-arrow-right pull-right"></i><span class="m-r-n-lg">Sign up</span></button> -->
					<div class="line line-dashed"></div>
					<p class="text-muted text-center">
						<small>Already have an account?</small>
					</p>
					<input type="submit"
						class="btn btn-lg btn-info btn-block btn-rounded" value="注册" />
				</form>
			</section>
		</div>
	</section>
	<!-- footer -->
	<footer id="footer">
		<div class="text-center padder clearfix">
			<p>
				<small>Web app framework base on Bootstrap<br>&copy;
					2017
				</small>
			</p>
		</div>
	</footer>

	<!-- Bootstrap -->
	<script src="${scp}/js/bootstrap.js"></script>
	<script type="text/javascript">addressInit('select1', 'city', 'Select3');</script>

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