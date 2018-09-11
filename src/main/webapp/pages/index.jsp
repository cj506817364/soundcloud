<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:set var="scp" value="${pageContext.request.contextPath}" /> 
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
										<c:forEach items="${randomAudioList}" var="randomAudio" varStatus="state">
										 
										<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
											<div class="item">
												<div class="pos-rlt">
													<div class="bottom">
														<span class="badge bg-info m-l-sm m-b-sm">
														<c:choose>
															<c:when test="${state.count<4}">
																0${state.count}:23
															</c:when>
															<c:when test="${state.count<6}">
																04:${state.count}7
															</c:when>
															<c:otherwise>
																05:1${state.count}
															</c:otherwise>
														</c:choose>
														</span>
													</div>
												
													
													<div class="item-overlay opacity r r-2x bg-black ">
							                            <div class="text-info padder m-t-sm text-sm">
							                              <i class="fa fa-star"></i>
							                              <i class="fa fa-star"></i>
							                              <i class="fa fa-star"></i>
							                              <i class="fa fa-star-o text-muted"></i>
							                              <i class="fa fa-star-o text-muted"></i>
							                            </div>
							                            <div class="center text-center m-t-n">
							                              <a href="#" data-toggle="class">
							                                <i class="icon-control-play i-2x text"></i>
							                                <i class="icon-control-pause i-2x text-active"></i>
							                              </a>
							                            </div>
							                            
														<div class="text-info padder m-t-sm text-sm">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o text-muted"></i>
														</div>
														<div class="center text-center m-t-n">
															<a href="javascript:toPlayAndModifyUi('${randomAudio.audioId}',this);" >
															<i class="icon-control-play i-2x" ></i></a>
														</div>
														<div class="bottom padder m-b-sm">
<%-- 															<a href="javascript:addAudio('${randomAudio.audioId}',this);" class="pull-right" data-toggle="class"> --%>
															<a href="#" class="pull-right haha" id="${randomAudio.audioId }" data-toggle="class">
								                                <i class="fa fa-heart-o text"></i>
								                                <i class="fa fa-heart text-active text-danger"></i>
															</a> 
<%-- 															<a href="javascript:addAudio('${randomAudio.audioId}',this);" data-toggle="class">  --%>
															<a href="#" id="${randomAudio.audioId }" class="haha" data-toggle="class"> 
								                                <i class="fa fa-plus-circle text"></i>
								                                <i class="fa fa-check-circle text-active text-info"></i>
															</a>
														</div>
													</div>
													<a href="#" >
													<img src="${scp}/${randomAudio.picUrl}" alt="" class="r r-2x img-full" style="with:230px;height: 260px"></a>
												</div>
												<div class="padder-v">
													<a href="#" class="text-ellipsis">${randomAudio.audioname}</a> <a
														href="#" class="text-ellipsis text-xs text-muted">${randomAudio.singer}</a>
												</div>
											</div>
										</div> 
										 
					                    <%-- <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
					                      <div class="item">
					                        <div class="pos-rlt">
					                        	<!-- active -->
					                          <div class="item-overlay opacity r r-2x bg-black ">
													<div class="bottom">
														<span class="badge bg-info m-l-sm m-b-sm">
														<c:choose>
															<c:when test="${state.count<4}">
																0${state.count}:23
															</c:when>
															<c:when test="${state.count<6}">
																04:${state.count}7
															</c:when>
															<c:otherwise>
																05:1${state.count}
															</c:otherwise>
														</c:choose>
														</span>
													</div>
					                            <div class="center text-center m-t-n">
					                              <a href="javascript:toPlayAndModifyUi('${randomAudio.audioId}',this);" data-toggle="class">
					                                <i class="icon-control-play i-2x text"></i>
					                                <i class="icon-control-pause i-2x text-active"></i>
					                              </a>
					                            </div>
					                            <div class="bottom padder m-b-sm">
					                              <a href="javascript:addAudio('${randomAudio.audioId}',this);" class="pull-right active" data-toggle="class">
					                                <i class="fa fa-heart-o text"></i>
					                                <i class="fa fa-heart text-active text-danger"></i>
					                              </a>
					                              <a href="javascript:addAudio('${randomAudio.audioId}',this);" data-toggle="class">
					                                <i class="fa fa-plus-circle text"></i>
					                                <i class="fa fa-check-circle text-active text-info"></i>
					                              </a>
					                            </div>
					                          </div>
					                          <a href="#"><img src="${scp}/${randomAudio.picUrl}" alt="" class="r r-2x img-full"></a>
					                        </div>
					                        <div class="padder-v">
					                          <a href="#" class="text-ellipsis">${randomAudio.audioname}</a>
					                          <a href="#" class="text-ellipsis text-xs text-muted">${randomAudio.singer}</a>
					                        </div>
					                      </div>
					                    </div> --%>
										</c:forEach>
										<!-- 模板结束 -->
									</div>
									<div class="row">
										<div class="col-md-7">
											<h3 class="font-thin">新歌</h3>
											<div class="row row-sm">
												<!-- 模板开始
														显示要求:最多8个,每行4个 -- 具体问题,看情况分析
												 -->
												<c:forEach items="${newSongList}" var="newSong">
												<div class="col-xs-6 col-sm-3">
													<div class="item">
														<div class="pos-rlt">
															<div class="item-overlay opacity r r-2x bg-black">
																<div class="center text-center m-t-n">
																	<a href="javascript:toPlayAndModifyUi('${newSong.audioId}',this);"><i class="fa fa-play-circle i-2x"></i></a>
																</div>
															</div>
															<a href="#"><img src="${scp}/${newSong.picUrl}" alt="" style="with:225px;height: 200px;"
																class="r r-2x img-full"></a>
														</div>
														<div class="padder-v">
															<a href="#" class="text-ellipsis">${newSong.audioname}</a> <a
																href="#" class="text-ellipsis text-xs text-muted">${newSong.singer}</a>
														</div>
													</div>
												</div>
												</c:forEach>
												<!-- 模板结束 -->
											</div>
										</div>
										<div class="col-md-5">
											<h3 class="font-thin">榜单</h3>
											<div class="list-group bg-white list-group-lg no-bg auto">
												<!-- 模板开始
												显示要求:最多显示6行
											 	-->
											<c:forEach items="${topList}" var="top" varStatus="state">
											 	<a href="javascript:toPlayAndModifyUi('${top.audioId}',this);" class="list-group-item clearfix" > 
												 	<span class="pull-right h2 text-muted m-l">${state.count}</span> 
													<span class="pull-left thumb-sm avatar m-r"> 
														<img src="${scp}/${top.picUrl}" alt="..."/>
													</span> 
													<span class="clear"> 
														<span>${top.audioname}</span> 
														<small class="text-muted clear text-ellipsis">${top.singer}</small>
													</span>
												</a>
											</c:forEach>
											</div>
										</div>
									</div>
									<!--  -->
									<c:if test="${empty userSession}">
									<div class="row m-t-lg m-b-lg">
										<div class="col-sm-6">
											<div class="bg-primary wrapper-md r">
												<a href="${scp }/regist/toRegist"> <span
													class="h4 m-b-xs block"><i
														class="icon-user-follow i-lg"></i>注册</span> <span
													class="text-muted">注册,和世界一起聆听音乐</span>
												</a>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="bg-black wrapper-md r">
												<!-- 
													具体如何实现,笔者位置,待开发者自己想办法
												 -->
												<a href="${scp}/login/toLogin"> <span
													class="h4 m-b-xs block"><i
														class="icon-user-follow i-lg"></i>登录</span> <span
													class="text-muted">登录,和世界一起聆听音乐</span>
												</a>
<!-- 												<a href="???"> <span class="h4 m-b-xs block"><i
														class="icon-cloud-download i-lg"></i>发送快捷方式到桌面</span> <span
													class="text-muted">音乐,一键可得</span>
												</a> -->
											</div>
										</div>
									</div>
									</c:if>
								</section>
								<!-- 底部播放器 -->
								<%@include file="basepages/playfooter.jsp"%>
							</section>
						</section>
						<!-- 右旁边:只有index.jsp中有它 -->
						<c:if test="${!empty userSession }">
							<%@include file="basepages/rightaside.jsp"%>
						</c:if>
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
<script type="text/javascript">
$(function(){
	$("#sidebar_friend").css("display","none");
	//显示隐藏好友列表
	$(".show_good_friend").click(function(){
		if($(this).attr("data-show-status") == 'hidde'){
			$(this).attr("data-show-status","show");
			$(this).html("隐藏好友列表");
			$("#sidebar_friend").css("display","");
		}else if($(this).attr("data-show-status") == 'show'){
			$(this).attr("data-show-status","hidde");
			$(this).html("显示好友列表");
			$("#sidebar_friend").css("display","none");
		}
	});
});
function toPlayAndModifyUi(audioId,_this){
	$.ajax({
		"url":"${acp}/genres/addClickNum",
		"data":{"audioId":audioId},
		"async": true,
		"type":"POST",
		"success":function(result){
			if(result == 'success'){
				window.location.href = "${scp}/listen/listen?audioId="+audioId;
			}else{
				/* 跳转404.jsp:页面丢失 */
				window.location.href = "${scp}/pages/404.jsp";
			}
		}		
	});
	//修改界面按钮状态
	//...
	
}

function toPlay(audioId){
	$.ajax({
		"url":"${acp}/genres/addClickNum",
		"data":{"audioId":audioId},
		"async": true,
		"type":"POST",
		"success":function(result){
			if(result == 'success'){
				window.location.href = "${scp}/listen/listen?audioId="+audioId;
			}else{
				/* 跳转404.jsp:页面丢失 */
				window.location.href = "${scp}/pages/404.jsp";
			}
		}		
	});
}

/*入库前一定要先删除一次数据,避免重复 */
function addAudio(audioId,_this){
	$.ajax({
		"url":"${acp}/add_ajax",
		"data":{"audioId":audioId},
		"async": true,
		"type":"POST",
		"success":function(result){
			if(result == 'success'){
				//
			}else{
			}
		}		
	});
	//修改界面状态
	//...
}


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
</body>
</html>