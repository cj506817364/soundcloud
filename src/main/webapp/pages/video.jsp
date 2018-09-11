<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><c:set var="scp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>视频</title>
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
		<%@include file="basepages/liftaside.jsp" %>
		
        <section id="content">
          <section class="vbox" id="bjax-el">
            <section class="scrollable padder-lg">
              <h2 class="font-thin m-b">视频</h2>
              
              <div class="row row-sm">
	            <!-- 模板开始
	            	显示要求:3行4列 可以少,多了使用分页
	            -->
	            <c:forEach items="${videoList}" var="video" varStatus="state">
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
						  <!-- 取了固定的几张 -->
                      	  <c:set value="${state.index%6}" var="num"/>
                          <a href="${scp}/video/toPlayVideo?videoId=${video.videoId}&num=${num}"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>

                      <a href="#"><img src="${scp}/images/m4${num}.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="#" class="text-ellipsis">${video.videoname}</a>
                      <a href="#" class="text-ellipsis text-xs text-muted">${video.brief}</a>
                    </div>
                  </div>
                </div>
                </c:forEach>
                <!-- 模板结束 -->
              </div>
              <!-- 分页列表样式 -->
              <ul class="pagination pagination">
              	<c:if test="${pageNow > 1}">
                <li><a href="${scp}/video/getVideos?pageNow=${pageNow-1}"><i class="fa fa-chevron-left"></i></a></li>
                </c:if>
				<!-- 分页处理 -->
                <c:forEach var="i" begin="${pageNow>2?pageNow-2:pageNow}" end="${pageNow<=pageCount-2?pageNow+2:pageCount}">
                	<li 
                		<c:if test="${pageNow==i}">class="active"</c:if>
                	>
                	<a href="${scp}/video/getVideos?pageNow=${i}">${i}</a>
                	</li>
                </c:forEach>
                <c:if test="${pageNow < pageCount}">
                <li><a href="${scp}/video/getVideos?pageNow=${pageNow+1}"><i class="fa fa-chevron-right"></i></a></li>
                </c:if>
              </ul>
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
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