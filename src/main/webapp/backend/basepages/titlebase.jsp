<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="scp" value="${pageContext.request.contextPath}" />
<!-- title -->
<div class="daohang">
	<ul>
		<li>
			<button type="button" class="am-btn am-btn-default am-radius am-btn-xs" href="#">
				后台首页
				<a href="${scp}/backend/index" class="am-close am-close-spin" data-am-modal-close="">Go</a>
			</button>
		</li>
		<li>
			<button type="button" class="am-btn am-btn-default am-radius am-btn-xs" >
				用户列表
				<a href="${scp}/backend/user/userList" class="am-close am-close-spin" data-am-modal-close="">Go</a>
			</button>
		</li>
		<li><button type="button"class="am-btn am-btn-default am-radius am-btn-xs">
				音乐列表
				<a href="${scp}/backend/music/musicList" class="am-close am-close-spin" data-am-modal-close="">Go</a>
			</button></li>
		<li>
			<button type="button" class="am-btn am-btn-default am-radius am-btn-xs">
				视频列表
				<a href="${scp}/backend/movie/movieList" class="am-close am-close-spin"
					data-am-modal-close="">Go</a>
			</button></li>
		<li><button type="button"
				class="am-btn am-btn-default am-radius am-btn-xs">
				前台首页<a href="${scp}/goHome" class="am-close am-close-spin"
					data-am-modal-close="">Go</a>
			</button></li>
	</ul>
</div>

