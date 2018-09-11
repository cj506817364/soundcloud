<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<c:set var="scp" value="${pageContext.request.contextPath}" />
<!-- .aside -->
<!-- 需要根据具体界面切换背景颜色样式
	index.jsp ->  bg-black
	genres.jsp -> bg-dark
 -->
<aside class="bg-black dk nav-xs aside hidden-print" id="nav">
	<section class="vbox">
		<section class="w-f-md scrollable">
			<div class="slim-scroll" data-height="auto"
				data-disable-fade-out="true" data-distance="0" data-size="10px"
				data-railOpacity="0.2">
				<!-- nav -->
				<nav class="nav-primary hidden-xs">
					<ul class="nav bg clearfix">
						<li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
							发现</li>
						<li><a href="${scp}/goHome"> <i
								class="icon-disc icon text-success"></i> <span class="font-bold">主页</span>
						</a></li>
						<li><a href="${scp}/genres/getAllGenres"> <i
								class="icon-music-tone-alt icon text-info"></i> <span
								class="font-bold">流派</span>
						</a></li>
						<%-- 					<li><a href="${scp}/pages/events.jsp"> <i
								class="icon-drawer icon text-primary-lter"></i> <b
								class="badge bg-primary pull-right">6</b> <span
								class="font-bold">音乐大事件</span>
						</a></li> --%>
						<li><a href="/listen/listen"> <i
								class="icon-list icon  text-info-dker"></i> <span
								class="font-bold">聆听</span>
						</a></li>
						<li><a href="${scp}/video/getVideos?pageNow=1" data-target="#content"
							data-el="#bjax-el" data-replace="true"> <i
								class="icon-social-youtube icon  text-primary"></i> <span
								class="font-bold">视频</span>
						</a></li>
						<li class="m-b hidden-nav-xs"></li>
					</ul>
					<ul class="nav" data-ride="collapse">
						<li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
							新世界</li>
						<li><a href="#" class="auto"> <span
								class="pull-right text-muted"> <i
									class="fa fa-angle-left text"></i> <i
									class="fa fa-angle-down text-active"></i>
							</span> <i class="icon-screen-desktop icon"> </i> <span>设计</span>
						</a>
							<ul class="nav dk text-sm">
								<li><a href="layout-color.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>颜色选择</span>
								</a></li>
								<li><a href="layout-boxed.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>盒式布局</span>
								</a></li>
								<li><a href="layout-fluid.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>流式布局</span>
								</a></li>
							</ul></li>
						<%-- <li><a href="#" class="auto"> <span
								class="pull-right text-muted"> <i
									class="fa fa-angle-left text"></i> <i
									class="fa fa-angle-down text-active"></i>
							</span> <i class="icon-chemistry icon"> </i> <span>UI工具</span>
						</a>
							<ul class="nav dk text-sm">
								<li><a href="${scp}/pages/buttons.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>按钮</span>
								</a></li>
								<li><a href="${scp}/pages/icons.jsp" class="auto"> <b
										class="badge bg-info pull-right">369</b> <i
										class="fa fa-angle-right text-xs"></i> <span>图标设计</span>
								</a></li>
								<li><a href="http://www.weidea.net" class="auto"> <b
										class="badge bg-info pull-right">369</b> <i
										class="fa fa-angle-right text-xs"></i> <span>更多</span>
								</a></li>
								<li><a href="${scp}/pages/grid.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>网格</span>
								</a></li>
								<li><a href="${scp}/pages/widgets.jsp" class="auto"> <b
										class="badge bg-dark pull-right">8</b> <i
										class="fa fa-angle-right text-xs"></i> <span>小工具</span>
								</a></li>
								<li><a href="${scp}/pages/components.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>部件</span>
								</a></li>
								<li><a href="${scp}/pages/list.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>清单</span>
								</a></li>
								<li><a href="#table" class="auto"> <span
										class="pull-right text-muted"> <i
											class="fa fa-angle-left text"></i> <i
											class="fa fa-angle-down text-active"></i>
									</span> <i class="fa fa-angle-right text-xs"></i> <span>表
											表格</span>
								</a>
									<ul class="nav dker">
										<li><a href="table-static.jsp"> <i
												class="fa fa-angle-right"></i> <span>静态表 静态表格</span>
										</a></li>
										<li><a href="table-datatable.jsp"> <i
												class="fa fa-angle-right"></i> <span>数据表 数据表格</span>
										</a></li>
									</ul></li>
								<li><a href="#form" class="auto"> <span
										class="pull-right text-muted"> <i
											class="fa fa-angle-left text"></i> <i
											class="fa fa-angle-down text-active"></i>
									</span> <i class="fa fa-angle-right text-xs"></i> <span>表单(歌单)表单</span>
								</a>
									<ul class="nav dker">
										<li><a href="${scp}/pages/form-elements.jsp"> <i
												class="fa fa-angle-right"></i> <span>表单元素</span>
										</a></li>
										<li><a href="${scp}/pages/form-validation.jsp"> <i
												class="fa fa-angle-right"></i> <span>表单校验</span>
										</a></li>
										<li><a href="${scp}/pages/form-wizard.jsp"> <i
												class="fa fa-angle-right"></i> <span>表单向导</span>
										</a></li>
									</ul></li>
								<li><a href="${scp}/pages/chart.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>图表</span>
								</a></li>
								<li><a href="${scp}/pages/portlet.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>门户</span>
								</a></li>
								<li><a href="${scp}/pages/timeline.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>时光轴</span>
								</a></li>
							</ul></li> --%>
						<li><a href="#" class="auto"> <span
								class="pull-right text-muted"> <i
									class="fa fa-angle-left text"></i> <i
									class="fa fa-angle-down text-active"></i>
							</span> <i class="icon-grid icon"> </i> <span>网页</span>
						</a>
							<ul class="nav dk text-sm">
								<%-- 								<li><a href="${scp}/pages/profile.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>简介</span>
								</a></li> --%>
								<li><a href="${scp}/news/tonews.action" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>新闻</span>
								</a></li>
								<%-- 								<li><a href="i${scp}/pages/nvoice.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>清单</span>
								</a></li> --%>
								<li><a href="${scp}/pages/gmap.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>百度地图</span>
								</a></li>
								<li><a href="${scp}/pages/jfriendmap" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>好友地图</span>
								</a></li>
								<li><a href="${scp}/pages/jvectormap" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>矢量地图</span>
								</a></li>
								<c:if test="${empty userSession}">
									<li><a href="${scp}/login/toLogin" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>登入</span>
									</a></li>
									<li><a href="${scp}/regist/toRegist" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>注册</span>
									</a></li>
								</c:if>

								<shiro:hasPermission name="后台管理">
									<li><a href="${scp}/backend/index" class="auto"> <i
											class="fa fa-angle-right text-xs"></i> <span>后台</span>
									</a></li>
								</shiro:hasPermission>
								<%-- 								<li><a href="${scp}/pages/404.jsp" class="auto"> <i
										class="fa fa-angle-right text-xs"></i> <span>音消云散</span>
								</a></li> --%>
							</ul></li>
					</ul>
					<ul class="nav text-sm">
						<li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
							<span class="pull-right"><a href="#"><i
									class="icon-plus i-lg"></i></a></span> 乐友
						</li>
						<!-- 模板开始 -->
						<li><a href="${scp}/Tip/addFriendsView"> <i
								class="icon-music-tone icon"></i> <span>添加好友</span>
						</a></li>
						<li><a href="${scp}/search.action"> <i
								class="icon-playlist icon text-success-lter"></i> <b
								class="badge bg-success dker pull-right">9</b> <span>搜索</span>
						</a></li>
						<!-- 模板结束 -->
					</ul>
				</nav>
				<!-- / nav -->
			</div>
		</section>
		<%@include file="notifooter.jsp"%>
	</section>
</aside>
<!-- /.aside -->