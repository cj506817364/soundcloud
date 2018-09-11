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
<body class="">
	<section class="vbox">
		<!-- 静态引入头部 :在当前目录pages下面-->
		<%@include file="basepages/header.jsp"%>
		<section>
			<section class="hbox stretch">
				<!-- index的左旁边(其中包含了右旁边) -->
				<%@include file="basepages/liftaside.jsp"%>
				<!-- /.aside -->
				<section id="content">
					<section class="vbox">
						<section class="scrollable wrapper">
							<p>
								<strong>门户</strong> (support on touch screen)
							</p>
							<div class="row">
								<div class="col-sm-6 portlet">
									<section class="panel panel-info portlet-item">
										<header class="panel-heading"> Quick link </header>
										<div class="list-group bg-white">
											<a href="#" class="list-group-item"> <i
												class="fa fa-fw fa-envelope"></i> Inbox
											</a> <a href="#" class="list-group-item"> <i
												class="fa fa-fw fa-eye"></i> 简介 visits
											</a> <a href="#" class="list-group-item"> <i
												class="fa fa-fw fa-phone"></i> Call
											</a> <a href="#" class="list-group-item"> <i
												class="fa fa-fw fa-comments-o"></i> Messages
											</a> <a href="#" class="list-group-item"> <i
												class="fa fa-fw fa-bookmark"></i> Bookmarks
											</a> <a href="#" class="list-group-item"> <i
												class="fa fa-fw fa-bell"></i> 通知
											</a>
										</div>
									</section>
									<section class="panel panel-default portlet-item">
										<header class="panel-heading">
											<ul class="nav nav-pills pull-right">
												<li><a href="#" class="panel-toggle text-muted"><i
														class="fa fa-caret-down text-active"></i><i
														class="fa fa-caret-up text"></i></a></li>
											</ul>
											News <span class="badge bg-info">32</span>
										</header>
										<section class="panel-body">
											<article class="media">
												<div class="pull-left">
													<span class="fa-stack fa-lg"> <i
														class="fa fa-circle fa-stack-2x"></i> <i
														class="fa fa-bold fa-stack-1x text-white"></i>
													</span>
												</div>
												<div class="media-body">
													<a href="#" class="h4">Bootstrap 3: What you need to
														know</a> <small class="block m-t-xs">Sleek, intuitive,
														and powerful mobile-first front-end framework for faster
														and easier web development.</small> <em class="text-xs">Posted
														on <span class="text-danger">Feb 23, 2013</span>
													</em>
												</div>
											</article>
											<div class="line pull-in"></div>
											<article class="media">
												<div class="pull-left">
													<span class="fa-stack fa-lg"> <i
														class="fa fa-circle fa-stack-2x text-info"></i> <i
														class="fa fa-file-o fa-stack-1x text-white"></i>
													</span>
												</div>
												<div class="media-body">
													<a href="#" class="h4">Bootstrap documents</a> <small
														class="block m-t-xs">There are a few easy ways to
														quickly get started with Bootstrap, each one appealing to
														a different skill level and use case. Read through to see
														what suits your particular needs.</small> <em class="text-xs">Posted
														on <span class="text-danger">Feb 12, 2013</span>
													</em>
												</div>
											</article>
											<div class="line pull-in"></div>
											<article class="media">
												<div class="pull-left">
													<span class="fa-stack fa-lg"> <i
														class="fa fa-circle fa-stack-2x icon-muted"></i> <i
														class="fa fa-mobile fa-stack-1x text-white"></i>
													</span>
												</div>
												<div class="media-body">
													<a href="#" class="h4 text-success">Mobile first
														html/css framework</a> <small class="block m-t-xs">Bootstrap,
														Ratchet</small> <em class="text-xs">Posted on <span
														class="text-danger">Feb 05, 2013</span></em>
												</div>
											</article>
										</section>
									</section>
								</div>
								<div class="col-sm-6 portlet">
									<section class="panel panel-success portlet-item">
										<header class="panel-heading"> Connection </header>
										<ul class="list-group alt">
											<li class="list-group-item">
												<div class="media">
													<span class="pull-left thumb-sm"><img
														src="${scp}/images/a1.png" alt="..." class="img-circle"></span>
													<div class="pull-right text-success m-t-sm">
														<i class="fa fa-circle"></i>
													</div>
													<div class="media-body">
														<div>
															<a href="#">Chris Fox</a>
														</div>
														<small class="text-muted">about 2 minutes ago</small>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media">
													<span class="pull-left thumb-sm"><img
														src="${scp}/images/a2.png" alt="..." class="img-circle"></span>
													<div class="pull-right text-muted m-t-sm">
														<i class="fa fa-circle"></i>
													</div>
													<div class="media-body">
														<div>
															<a href="#">Amanda Conlan</a>
														</div>
														<small class="text-muted">about 2 hours ago</small>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media">
													<span class="pull-left thumb-sm"><img
														src="${scp}/images/a3.png" alt="..." class="img-circle"></span>
													<div class="pull-right text-warning m-t-sm">
														<i class="fa fa-circle"></i>
													</div>
													<div class="media-body">
														<div>
															<a href="#">Dan Doorack</a>
														</div>
														<small class="text-muted">3 days ago</small>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media">
													<span class="pull-left thumb-sm"><img
														src="${scp}/images/a4.png" alt="..." class="img-circle"></span>
													<div class="pull-right text-danger m-t-sm">
														<i class="fa fa-circle"></i>
													</div>
													<div class="media-body">
														<div>
															<a href="#">Lauren Taylor</a>
														</div>
														<small class="text-muted">about 2 minutes ago</small>
													</div>
												</div>
											</li>
										</ul>
									</section>
									<section class="panel panel-default portlet-item">
										<header class="panel-heading">
											<span class="label bg-dark">15</span> Inbox
										</header>
										<section class="panel-body">
											<article class="media">
												<span class="pull-left thumb-sm"><img
													src="${scp}/images/a1.png" alt="..." class="img-circle"></span>
												<div class="media-body">
													<div class="pull-right media-xs text-center text-muted">
														<strong class="h4">12:18</strong><br> <small
															class="label bg-light">pm</small>
													</div>
													<a href="#" class="h4">Bootstrap 3 released</a> <small
														class="block"><a href="#" class="">John Smith</a>
														<span class="label label-success">Circle</span></small> <small
														class="block m-t-sm">Sleek, intuitive, and
														powerful mobile-first front-end framework for faster and
														easier web development.</small>
												</div>
											</article>
											<div class="line pull-in"></div>
											<article class="media">
												<span class="pull-left thumb-sm"><i
													class="fa fa-file-o fa-3x icon-muted"></i></span>
												<div class="media-body">
													<div class="pull-right media-xs text-center text-muted">
														<strong class="h4">17</strong><br> <small
															class="label bg-light">feb</small>
													</div>
													<a href="#" class="h4">Bootstrap documents</a> <small
														class="block"><a href="#" class="">John Smith</a>
														<span class="label label-info">Friends</span></small> <small
														class="block m-t-sm">There are a few easy ways to
														quickly get started with Bootstrap, each one appealing to
														a different skill level and use case. Read through to see
														what suits your particular needs.</small>
												</div>
											</article>
											<div class="line pull-in"></div>
											<article class="media">
												<div class="media-body">
													<div class="pull-right media-xs text-center text-muted">
														<strong class="h4">09</strong><br> <small
															class="label bg-light">jan</small>
													</div>
													<a href="#" class="h4 text-success">Mobile first
														html/css framework</a> <small class="block m-t-sm">Bootstrap,
														Ratchet</small>
												</div>
											</article>
										</section>
									</section>
								</div>
							</div>
						</section>
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
	<script src="${scp}/js/jquery.ui.touch-punch.min.js"></script>
	<script src="${scp}/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="${scp}/js/app.plugin.js"></script>
	<script type="text/javascript"
		src="${scp}/js/jPlayer/jquery.jplayer.min.js"></script>
	<script type="text/javascript"
		src="${scp}/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
	<script type="text/javascript" src="${scp}/js/jPlayer/demo.js"></script>

</body>
</html>