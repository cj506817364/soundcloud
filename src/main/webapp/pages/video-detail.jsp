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
						<section class="scrollable wrapper-lg">
							<div class="row">
								<div class="col-sm-8">
									<div class="panel">
									
										<!-- video player -->
										<div id="jp_container_1">
											<div class="jp-type-single pos-rlt">
												<div id="jplayer_1" class="jp-jplayer jp-video"></div>
												<div class="jp-gui">
													<div class="jp-video-play">
														<a class="fa fa-5x text-white fa-play-circle"></a>
													</div>
													<div class="jp-interface bg-info padder">
														<div class="jp-controls">
															<div>
																<a class="jp-play"><i class="icon-control-play i-2x"></i></a>
																<a class="jp-pause hid"><i
																	class="icon-control-pause i-2x"></i></a>
															</div>
															<div class="jp-progress">
																<div class="jp-seek-bar dker">
																	<div class="jp-play-bar dk"></div>
																	<div class="jp-title text-lt">
																		<ul>
																			<li></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div
																class="hidden-xs hidden-sm jp-current-time text-xs text-muted"></div>
															<div
																class="hidden-xs hidden-sm jp-duration text-xs text-muted"></div>
															<div class="hidden-xs hidden-sm">
																<a class="jp-mute" title="mute"><i
																	class="icon-volume-2"></i></a> <a class="jp-unmute hid"
																	title="unmute"><i class="icon-volume-off"></i></a>
															</div>
															<div class="hidden-xs hidden-sm jp-volume">
																<div class="jp-volume-bar dk">
																	<div class="jp-volume-bar-value lter"></div>
																</div>
															</div>
															<div>
																<a class="jp-full-screen" title="full screen"><i
																	class="fa fa-expand"></i></a> <a class="jp-restore-screen"
																	title="restore screen"><i
																	class="fa fa-compress text-lt"></i></a>
															</div>
														</div>
													</div>
												</div>
												<!-- 被隐藏了 -->
												<div class="jp-no-solution hide">
													<span>Update Required</span> To play the media you will
													need to either update your browser to a recent version or
													update your <a href="http://get.adobe.com/flashplayer/"
														target="_blank">Flash plugin</a>.
												</div>
											
											</div>
										</div>
										<!-- / video player -->
										<div class="wrapper-lg">
											<h2 class="m-t-none text-black">${jsonVideo.videoname}</h2>
											<div class="post-sum">
												<p>${jsonVideo.brief}</p>
											</div>
										</div>
									</div>
								
								</div>
								<div class="col-sm-4">
									<div class="panel panel-default">
										<div class="panel-heading">推荐</div>
										<div class="panel-body">
											<!-- 推荐5个 -->
											<c:forEach items="${videoList}" var="video" varStatus="state">
											<article class="media">
											<c:set value="${state.index%6}" var="num"/>
												<a href="#" class="pull-left thumb-lg m-t-xs"> <img
													src="${scp}/images/m4${num%6}.jpg">
												</a>
												<div class="media-body">
													<a href="${scp}/video/toPlayVideo?videoId=${video.videoId}&num=${num}" class="font-semibold">点击播放</a>
													<div class="text-xs block m-t-xs">
														<a href="#">${video.videoname}</a> ${video.videotime}
													</div>
												</div>
											</article>
											</c:forEach>
										</div>
									</div>
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

	<script src="${scp}/js/app.plugin.js"></script>
	<script type="text/javascript"
		src="${scp}/js/jPlayer/jquery.jplayer.min.js"></script>
	<script type="text/javascript"
		src="${scp}/js/jPlayer/add-on/jplayer.playlist.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  // video
	var jsVideo = ${jsVideo};
  $("#jplayer_1").jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", jsVideo );
    },
    swfPath: "js",
    supplied: "webmv, ogv, mp4",
    size: {
      width: "100%",
      height: "auto",
      cssClass: "jp-video-360p"
    },
    globalVolume: true,
    smoothPlayBar: true,
    keyEnabled: true
  });

});
</script>
</body>
</html>