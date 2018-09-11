<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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

<!--[if lt IE 9]>
    <script src="${scp}/js/ie/html5shiv.js"></script>
    <script src="${scp}/js/ie/respond.min.js"></script>
    <script src="${scp}/js/ie/excanvas.js"></script>
  <![endif]-->

<script src="${scp}/js/jquery.min.js"></script>
<script type="text/javascript">


function queryAllPerson(pageNum, pageSize) {
	
	window.location.href ="/news/tonews.action?pageNum=" + pageNum + "&pageSize=" + pageSize;
}

	
</script>
</head>

<body class="">
	<section class="vbox">
		   <%@include file="basepages/header.jsp"%>
		<section>
			<section class="hbox stretch">
				<!-- .aside -->
				<%@include file="basepages/liftaside.jsp" %>
        
				<!-- /.aside -->
				
				
				<section id="content">
					<section class="vbox">
						<section class="scrollable wrapper-lg">
							<div class="row">
								 <a href="${ scp }/news/poi" style="font-size: 25px;color: red">点击生成POI报表</a>
								 <br/>
								 <span>${ msg_poi }</span>
								<div class="col-sm-9" style="margin-left: 220px;">
									<div class="blog-post">

										<c:forEach items="${ pagehelper.list }" var="n">
											<div class="post-item">
												<div class="post-media" style="padding: 0px;">
													<img src="${ n.imgLink }" class="img-full" style="margin: 0px auto; width: 500px; height: 500px;">
												</div>
												<div class="post-item">
													<div class="caption wrapper-lg">
														<h2 class="post-title">
															<a href="${ n.redirectUrl }">${ n.title }</a>
														</h2>
														<div class="post-sum">
															<p>${ n.content }.</p>

														</div>
														<div class="line line-lg"></div>
														<div class="text-muted">
															<i class="fa fa-user icon-muted"></i> by <a href="#"
																class="m-r-sm">Admin</a> <i
																class="fa fa-clock-o icon-muted"></i><fmt:formatDate value="${ n.pupdate }" pattern="yy-MM-dd"/> <a
																href="#" class="m-l-sm"><i
																class="fa fa-comment-o icon-muted"></i> 4 comments</a>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>

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
										<h4 class="m-t-lg m-b">3 Comments</h4>
										<section class="comment-list block">
											<article id="comment-id-1" class="comment-item">
												<a class="pull-left thumb-sm"> <img
													src="${scp}/images/a0.png" class="img-circle">
												</a>
												<section class="comment-body m-b">
													<header>
														<a href="#"><strong>John smith</strong></a> <label
															class="label bg-info m-l-xs">Editor</label> <span
															class="text-muted text-xs block m-t-xs"> 24
															minutes ago </span>
													</header>
													<div class="m-t-sm">Lorem ipsum dolor sit amet,
														consectetur adipiscing elit. Morbi id neque quam. Aliquam
														sollicitudin venenatis ipsum ac feugiat. Vestibulum.</div>
												</section>
											</article>
											<!-- .comment-reply -->
											<article id="comment-id-2" class="comment-item comment-reply">
												<a class="pull-left thumb-sm"> <img
													src="${scp}/images/a1.png" class="img-circle">
												</a>
												<section class="comment-body m-b">
													<header>
														<a href="#"><strong>John smith</strong></a> <label
															class="label bg-dark m-l-xs">Admin</label> <span
															class="text-muted text-xs block m-t-xs"> 26
															minutes ago </span>
													</header>
													<div class="m-t-sm">Lorem ipsum dolor sit amet,
														consecteter adipiscing elit, sed diam nonummy nibh euismod
														tincidunt ut laoreet.</div>
												</section>
											</article>
											<!-- / .comment-reply -->
											<article id="comment-id-2" class="comment-item">
												<a class="pull-left thumb-sm"> <img
													src="${scp}/images/a2.png" class="img-circle">
												</a>
												<section class="comment-body m-b">
													<header>
														<a href="#"><strong>John smith</strong></a> <label
															class="label bg-dark m-l-xs">Admin</label> <span
															class="text-muted text-xs block m-t-xs"> 26
															minutes ago </span>
													</header>
													<blockquote class="m-t">
														<p>Lorem ipsum dolor sit amet, consectetur adipiscing
															elit. Integer posuere erat a ante.</p>
														<small>Someone famous in <cite
															title="Source Title">Source Title</cite></small>
													</blockquote>
													<div class="m-t-sm">Lorem ipsum dolor sit amet,
														consecteter adipiscing elit, sed diam nonummy nibh euismod
														tincidunt ut laoreet.</div>
												</section>
											</article>
										</section>
										<h4 class="m-t-lg m-b">Leave a comment</h4>
										<form>
											<div class="form-group pull-in clearfix">
												<div class="col-sm-6">
													<label>Your name</label> <input type="text"
														class="form-control" placeholder="Name">
												</div>
												<div class="col-sm-6">
													<label>Email</label> <input type="email"
														class="form-control" placeholder="Enter email">
												</div>
											</div>
											<div class="form-group">
												<label>Comment</label>
												<textarea class="form-control" rows="5"
													placeholder="Type your comment"></textarea>
											</div>
											<div class="form-group">
												<button type="submit" class="btn btn-success">Submit
													comment</button>
											</div>
										</form>
									</div>
									<div class="col-sm-3">
										<h5 class="font-bold">Categories</h5>
										<ul class="list-group">
											<li class="list-group-item"><a href="#"> <span
													class="badge pull-right">15</span> Photograph
											</a></li>
											<li class="list-group-item"><a href="#"> <span
													class="badge pull-right">30</span> Life style
											</a></li>
											<li class="list-group-item"><a href="#"> <span
													class="badge pull-right">9</span> Food
											</a></li>
											<li class="list-group-item"><a href="#"> <span
													class="badge pull-right">4</span> Travel world
											</a></li>
										</ul>
										<div class="tags m-b-lg l-h-2x">
											<a href="#" class="label bg-primary">Bootstrap</a> <a
												href="#" class="label bg-primary">Application</a> <a
												href="#" class="label bg-primary">Apple</a> <a href="#"
												class="label bg-primary">Less</a> <a href="#"
												class="label bg-primary">Theme</a> <a href="#"
												class="label bg-primary">Wordpress</a>
										</div>
										<h5 class="font-bold">Recent Posts</h5>
										<div>
											<article class="media">
												<a class="pull-left thumb thumb-wrapper m-t-xs"> <img
													src="${scp}/images/m1.jpg">
												</a>
												<div class="media-body">
													<a href="#" class="font-semibold">Bootstrap 3: What you
														need to know</a>
													<div class="text-xs block m-t-xs">
														<a href="#">Travel</a> 2 minutes ago
													</div>
												</div>
											</article>
											<div class="line"></div>
											<article class="media m-t-none">
												<a class="pull-left thumb thumb-wrapper m-t-xs"> <img
													src="${scp}/images/m2.jpg">
												</a>
												<div class="media-body">
													<a href="#" class="font-semibold">Lorem ipsum dolor sit
														amet, consectetur adipiscing elit.</a>
													<div class="text-xs block m-t-xs">
														<a href="#">Design</a> 2 hours ago
													</div>
												</div>
											</article>
											<div class="line"></div>
											<article class="media m-t-none">
												<a class="pull-left thumb thumb-wrapper m-t-xs"> <img
													src="${scp}/images/m3.jpg">
												</a>
												<div class="media-body">
													<a href="#" class="font-semibold">Sed diam nonummy nibh
														euismod tincidunt ut laoreet</a>
													<div class="text-xs block m-t-xs">
														<a href="#">MFC</a> 1 week ago
													</div>
												</div>
											</article>
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
	<script type="text/javascript" src="${scp}/js/jPlayer/demo.js"></script>

</body>
</html>