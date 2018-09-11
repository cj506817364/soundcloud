<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="scp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en" class="app">
<head>
	<meta charset="utf-8" />
	<title>流派</title>
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
	<style type="text/css">
		.col-lg-2 {
			width: 25%;
		}
	</style>
</head>
<body class="">
<section class="vbox">
	<!-- 静态引入头部 :在当前目录pages下面-->
	<%@include file="basepages/header.jsp"%>
	<section>
		<section class="hbox stretch">
			<%@include file="basepages/liftaside.jsp"%>
			<section id="content">
				<section class="vbox">
					<section class="w-f-md" id="bjax-target">
						<section class="hbox stretch">
							<!-- side content -->
							<aside class="aside bg-light dk" id="sidebar">
								<section class="vbox animated fadeInUp">
									<section class="scrollable hover">
										<div
												class="list-group no-radius no-border no-bg m-t-n-xxs m-b-none auto">
											<a href="${scp}/genres/getAllGenres" id="allGenres"
													<c:if test="${ '所有流派' == currentGenres }">
														class="list-group-item oneGenres active"
													</c:if>
													<c:if test="${ '所有流派' != currentGenres }">
														class="list-group-item oneGenres"
													</c:if>
											   data-genres="所有流派"> 所有流派 </a>
											<c:forEach items="${genresList}" var="genres">
												<a href="${scp}/genres/getGenres?genres=${genres}"
												   data-genres="${genres}"
														<c:if test="${genres == '未知' }">
															style="display:none;"
														</c:if>
														<c:if test="${genres == '其他' }">
															style="display:none;"
														</c:if>
														<c:if test="${ genres == currentGenres }">
															class="list-group-item oneGenres active"
														</c:if>
														<c:if test="${ genres != currentGenres }">
															class="list-group-item oneGenres"
														</c:if>>
														${genres} </a>
											</c:forEach>
											<a href="${scp}/genres/getOtherGenres" id="doKnowGenres"
											   data-genres="其他"
													<c:choose>
														<c:when test="${ '未知' == currentGenres }">
															class="list-group-item oneGenres active"
														</c:when>
														<c:when test="${ '其他' == currentGenres }">
															class="list-group-item oneGenres active"
														</c:when>
														<c:otherwise>
															class="list-group-item oneGenres"
														</c:otherwise>
													</c:choose>>
												其他 </a>
										</div>
									</section>
								</section>
							</aside>
							<!-- / side content -->
							<section>
								<section class="vbox">
									<section class="scrollable padder-lg">
										<h2 class="font-thin m-b">${currentGenres}</h2>
										<c:if test="${pageCount != 0}">
											<div class="row row-sm">
												<!-- 模板开始
                       -->
												<c:forEach items="${audioList}" var="audio">
													<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
														<div class="item">
															<div class="pos-rlt"
																 style="width: 200px; height: 200px;">
																<div class="item-overlay opacity r r-2x bg-black">
																	<div class="center text-center m-t-n">
																		<a href="javascript:toPlay('${audio.audioId}');"><i
																				class="fa fa-play-circle i-2x"></i></a>
																	</div>
																</div>
																<a href="track-detail.jsp"><img
																		src="${scp}/${audio.picUrl}" alt=""
																		class="r r-2x img-full"
																		style="width: 200px; height: 200px;"></a>
															</div>
															<div class="padder-v">
																<a href="track-detail.jsp" data-bjax
																   data-target="#bjax-target" data-el="#bjax-el"
																   data-replace="true" class="text-ellipsis">${audio.audioname}</a>
																<a href="track-detail.jsp" data-bjax
																   data-target="#bjax-target" data-el="#bjax-el"
																   data-replace="true"
																   class="text-ellipsis text-xs text-muted">${audio.singer}</a>
															</div>
														</div>
													</div>
												</c:forEach>
												<!-- 模板结束 -->
											</div>

											<!-- 分页样式 -->
											<ul class="pagination pagination">
												<c:if test="${pageNow != 1}">
													<li><c:choose>
														<c:when test="${'所有流派' == currentGenres}">
														<a
																href="${scp}/genres/getAllGenresPage?pageNow=${pageNow-1}">
															</c:when>
															<c:when test="${'其他' == currentGenres}">
															<a
																	href="${scp}/genres/getOtherGenresPage?pageNow=${pageNow-1}">
																</c:when>
																<c:otherwise>
																<a
																		href="${scp}/genres/getGenresPage?genres=${currentGenres}&pageNow=${pageNow-1}">
																	</c:otherwise>
																	</c:choose> <i class="fa fa-chevron-left"></i></a></li>
												</c:if>

												<!-- 分页处理 -->
												<c:forEach var="i" begin="${pageNow>2?pageNow-2:pageNow}"
														   end="${pageNow<=pageCount-2?pageNow+2:pageCount}">
													<li <c:if test="${pageNow==i}">class="active"</c:if>>
														<c:choose>
															<c:when test="${'所有流派' == currentGenres}">
																<a href="${scp}/genres/getAllGenresPage?pageNow=${i}">${i}</a>
															</c:when>
															<c:when test="${'其他' == currentGenres}">
																<a href="${scp}/genres/getOtherGenresPage?pageNow=${i}">${i}</a>
															</c:when>
															<c:otherwise>
																<a
																		href="${scp}/genres/getGenresPage?genres=${currentGenres}&pageNow=${i}">${i}</a>
															</c:otherwise>
														</c:choose>
													</li>
												</c:forEach>

												<c:if test="${pageNow < pageCount}">
													<li><c:choose>
														<c:when test="${'所有流派' == currentGenres}">
														<a
																href="${scp}/genres/getAllGenresPage?pageNow=${pageNow+1}">
															</c:when>
															<c:when test="${'其他' == currentGenres}">
															<a
																	href="${scp}/genres/getOtherGenresPage?pageNow=${pageNow+1}">
																</c:when>
																<c:otherwise>
																<a
																		href="${scp}/genres/getGenresPage?genres=${currentGenres}&pageNow=${pageNow+1}">
																	</c:otherwise>
																	</c:choose> <i class="fa fa-chevron-right"></i></a></li>
												</c:if>
											</ul>
										</c:if>
										<c:if test="${pageCount == 0}">
											<span>抱歉,我们的资源走丢了,我们会尽快喊它回来</span>
										</c:if>
									</section>
								</section>
							</section>
						</section>
					</section>
					<!-- 底部播放器 -->
					<%@include file="basepages/playfooter.jsp"%>

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
<!-- <script type="text/javascript" src="${scp}/js/jPlayer/demo.js"></script> -->
<script type="text/javascript">
    var liftaside = document.getElementsByTagName('aside')[0];
    liftaside.setAttribute("class", "bg-dark dk nav-xs aside hidden-print");
    /* footer样式修改 */
    var playfooter = document.getElementsByTagName('footer')[1];
    playfooter.setAttribute("class", "footer bg-info dker");

    function toPlay(audioId) {
        $.ajax({
            "url" : "${acp}/genres/addClickNum",
            "data" : {
                "audioId" : audioId
            },
            "async" : true,
            "type" : "POST",
            "success" : function(result) {
                if (result == 'success') {
                    window.location.href = "${scp}/listen/listen?audioId="
                        + audioId;
                } else {
                    /* 跳转404.jsp:页面丢失 */
                    window.location.href = "${scp}/pages/404.jsp";
                }
            }
        });
    }
</script>
</body>
</html>