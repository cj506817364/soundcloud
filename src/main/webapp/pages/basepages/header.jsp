<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="scp" value="${pageContext.request.contextPath}" />

<header class="bg-white-only header header-md navbar navbar-fixed-top-xs">
	<div class="navbar-header aside bg-info nav-xs">
		<a class="btn btn-link visible-xs"
			data-toggle="class:nav-off-screen,open" data-target="#nav,html">
			<i class="icon-list"></i>
		</a> <a  class="navbar-brand text-lt"> <i
			class="icon-earphones"></i> <img src="${scp}/images/logo.png" alt="."
			class="hide"> <span class="hidden-nav-xs m-l-sm">音云</span>
		</a> <a class="btn btn-link visible-xs" data-toggle="dropdown"
			data-target=".user"> <i class="icon-settings"></i>
		</a>
	</div>
	<ul class="nav navbar-nav hidden-xs">
		<li><a href="#nav,.navbar-header"
			data-toggle="class:nav-xs,nav-xs" class="text-muted"> <i
				class="fa fa-indent text"></i> <i class="fa fa-dedent text-active"></i>
		</a></li>
	</ul>
	<form action="${scp}/search.action" method="post"
		class="navbar-form navbar-left input-s-lg m-t m-l-n-xs hidden-xs"
		role="search">
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-btn">
					<button type="submit"
						class="btn btn-sm bg-white btn-icon rounded">
						<i class="fa fa-search"></i>
					</button>
				</span> <input type="text" name="search"
					class="form-control input-sm no-border rounded"
					placeholder="搜索歌曲、专辑...">
			</div>
		</div>
	</form>


		<div class="navbar-right ">
			<ul class="nav navbar-nav m-n hidden-xs nav-user user">

				<li class="hidden-xs">
					<a href="#" class="dropdown-toggle lt" data-toggle="dropdown"> 
					<i class="icon-bell"></i> 
					<span class="badge badge-sm up bg-danger count">0
					</span>
					</a>
					<c:if test="${!empty userSession }">
						<section class="dropdown-menu aside-xl animated fadeInUp">
							<section class="panel bg-white">
								<div class="panel-heading b-light bg-light">
									<strong>你有 <!-- 这儿的2是动态改变的 --> <span class="count">0</span>
										条通知
									</strong>
								</div>
								<div class="list-group list-group-alt">
									<a href="#" class="media list-group-item"> <span
										class="pull-left thumb-sm"> <img src="${scp}/images/a0.png"
											alt="..." class="img-circle">
									</span> <span class="media-body block m-b-none"> 使用具有活力的样式<br>
											<!-- 10 分钟前:整体动态修改 --> <small class="text-muted">10
												分钟前</small>
									</span>
									</a> <a href="#" class="media list-group-item"> <span
										class="media-body block m-b-none"> 1.0 首次发行<br> <!-- 整体动态修改 -->
											<small class="text-muted">1 小时前</small>
									</span>
									</a>
								</div>
								<div class="panel-footer text-sm">
									<a href="#" class="pull-right"><i class="fa fa-cog"></i></a> <a
										href="#notes" data-toggle="class:show animated fadeInRight">查看所有的通知</a>
								</div>
							</section>
						</section>
					</c:if>
				</li>

				
				<li class="dropdown">
				<a href="#" class="dropdown-toggle bg clear" data-toggle="dropdown"> 
					<span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
						<img 
							<c:if test="${!empty userSession }">
								src="${scp}/images/a0.png" 
							</c:if>
							<c:if test="${empty userSession }">
								src="${scp}/logo/logo.jpg" 
							</c:if>
							alt="..."
						/>
					</span> 
					<c:if test="${!empty userSession }">
						${ userSession.username } 
					</c:if>
					<c:if test="${empty userSession }">
						登录或注册
					</c:if>
					<b class="caret"></b>
				</a>
					<ul class="dropdown-menu animated fadeInRight">
						<li><span class="arrow top"></span> <a href="#">设置</a></li>
						<c:if test="${!empty userSession }">
							<li><a href="#" class="show_good_friend" data-show-status="hidde">显示好友列表</a></li>
						</c:if>
						<li><a href="#"> <span class="badge bg-danger pull-right">0</span>通知
						</a></li>
						<li><a href="docs.jsp">帮助</a></li>
						<li class="divider"></li>
						<c:if test="${!empty userSession }">
						<li><a href="${scp}/login/logout.action"
							data-toggle="ajaxModal">登出</a></li>
						</c:if>
						<c:if test="${empty userSession }">
						<li><a href="${scp }/login/toLogin"
							data-toggle="ajaxModal">登录</a></li>
						<li><a href="${scp }/regist/toRegist"
							data-toggle="ajaxModal">注册</a></li>
						</c:if>
					</ul></li>
			</ul>
		</div>

<%-- 	<c:if test="${ empty userSession }">
		<div style="margin-left: 1300px; margin-top: 20px; font-size: 20px;">
			<a href="${scp }/login/toLogin">登录</a> &nbsp;&nbsp;|&nbsp;&nbsp; <a
				href="${scp }/regist/toRegist">注册</a>
		</div>
	</c:if>
 --%>
</header>