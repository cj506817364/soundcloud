<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:set var="scp" value="${pageContext.request.contextPath}" /> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>新鲜事</title>
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
  <script src="${scp}/js/jquery.min.js"></script>
  <script type="text/javascript">
	$(function() {
		$(".haha").click(function(){
					
			var audioId=$(this).attr('id')
				$.post("${scp}/add_ajax",{"audioId":audioId},function(result){
					if(result=="true"){
						alert("添加成功");
					}
					else{
						window.location.href="${scp}/login/unLogin.action";
					}
				})
					
				/* 	$.post("${scp}/listen/ajax_audio",{"audioname":audioname} ,function(result){					
						$("#audioname").html(result.audioname);
						var strs= new Array(); //定义一数组 
						strs=result.picName.split(",");
						$("#audiopic").attr('src',"${scp}"+"/"+result.picUrl+"/"+strs[1]);
						
						$("#special").html(result.special);
						$("#writeWords").html(result.writeWords);
						$("#compose").html(result.compose);
						$("#genre").html(result.genre);
						
					} );  */
		});
	});
	</script>
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
						<section>
							<section class="vbox">
								<section class="scrollable padder-lg w-f-md" id="bjax-target">
									<a href="#" class="pull-right text-muted m-t-lg"
										data-toggle="class:fa-spin"><i
										class="icon-refresh i-lg  inline" id="refresh"></i></a>
									<h2 class="font-thin m-b">
										发现 <span class="musicbar animate inline m-l-sm"
											style="width: 20px; height: 20px"> <span
											class="bar1 a1 bg-primary lter"></span> <span
											class="bar2 a2 bg-info lt"></span> <span
											class="bar3 a3 bg-success"></span> <span
											class="bar4 a4 bg-warning dk"></span> <span
											class="bar5 a5 bg-danger dker"></span>
										</span>
									</h2>
									<div class="row row-sm">
										<!-- 模板开始
												显示要求:最多12个,每行6个--具体情况具体分析
										 -->
										 <c:forEach items="${result.audioList }" var="r">
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="bottom">
														<span class="badge bg-info m-l-sm m-b-sm">03:20</span>
													</div>
													<div class="item-overlay opacity r r-2x bg-black">
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="/listen/listen.action?audioId=${r.audioId }"><i class="icon-control-play i-2x"></i></a>
														</div>
														<div class="bottom padder m-b-sm">
															<a href="#" class="pull-right"> <i
																class="fa fa-heart-o"></i>
															</a> <a href="#" id="${r.audioId }" class="haha"> <i class="fa fa-plus-circle"></i>
															</a>
														</div>
													</div>
													<a href="#"><img src="${scp}/${r.picUrl}" alt=""
														class="r r-2x img-full"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">${r.audioname }</a> <a
														href="#" class="text-ellipsis text-xs text-muted">${r.singer}</a>
												</div>
											</div>
										</div>
										</c:forEach>
										
									
								
							</section>
							<!-- 底部播放器 -->
								<%@include file="basepages/playfooter.jsp"%>
						</section>
				
						
					</section>
					<a href="#" class="hide nav-off-screen-block"
						data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
				</section>
			</section>
			
		</section>
	</section>
	
	<script src="${scp}/js/jquery.min.js"></script>
	<!-- Bootstrap 引导程序-->
	<script src="${scp}/js/bootstrap.js"></script>
	<!-- App -->
	<script src="${scp}/js/app.js"></script>
	<script src="${scp}/js/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${scp}/js/app.plugin.js"></script>
	<script type="text/javascript"
		src="${scp}/js/jPlayer/jquery.jplayer.min.js"></script>
	<script type="text/javascript"
		src="${scp}/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
	<!-- <script type="text/javascript" src="${scp}/js/jPlayer/demo.js"></script> -->

</body>
</html>