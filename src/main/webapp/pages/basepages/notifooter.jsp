<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="scp" value="${pageContext.request.contextPath}" />
<footer class="footer hidden-xs no-padder text-center-nav-xs">
	<div class="bg hidden-xs ">
		<div class="dropdown dropup wrapper-sm clearfix">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span
				class="thumb-sm avatar pull-left m-l-xs"> 
				<img
					<c:if test="${!empty userSession }">
						src="${scp}/images/a0.png" 
					</c:if>
					<c:if test="${empty userSession }">
						src="${scp}/logo/logo.jpg" 
					</c:if>
				class="dker" alt="..."> <i class="on b-black"></i>
			</span> <span class="hidden-nav-xs clear"> <span class="block m-l">
						<strong class="font-bold text-lt">
							<c:if test="${!empty userSession }">
								${ userSession.username } 
							</c:if>
							<c:if test="${empty userSession }">
								登录或注册
							</c:if>
						</strong> <b
						class="caret"></b>
				</span> <span class="text-muted text-xs block m-l">
					听音乐,用音云!
				</span>
			</span>
			</a>
			<ul class="dropdown-menu animated fadeInRight aside text-left">
				<li><span class="arrow bottom hidden-nav-xs"></span> <a
					href="#">设置</a></li>
				<li><a href="profile.jsp">简介</a></li>
				<li><a href="#"> <span class="badge bg-danger pull-right">3</span>
						通知
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
			</ul>
		</div>
	</div>
</footer>