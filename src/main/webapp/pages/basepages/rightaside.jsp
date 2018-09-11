<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<c:set var="scp" value="${pageContext.request.contextPath}" />

<!-- side content -->
<!-- 整个aside需要登录后才能显示 -->


<aside class="aside-md bg-light dk" id="sidebar_friend" style="display: none;">
	<section class="vbox animated fadeInRight">
		<section class="w-f-md scrollable hover">
			<c:if test="${friendNum!=0}">
			<h4 class="font-thin m-l-md m-t">乐友列表</h4>
			<ul class="list-group no-bg no-borders auto m-t-n-xxs">
				<!-- 模板开始 -->
				<c:forEach items="${friendList}" var="friend">
				<li class="list-group-item"><span
					class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm"> <img
						src="${scp}/images/a1.png" alt="..." class="img-circle"> <i
						class="on b-light right sm"></i>
				</span>
					<div class="clear">
						<div>
							<a href="${scp}/Tip/search/${friend.userInfoId}">${friend.nickname}</a>
						</div>
						<small class="text-muted">${friend.city}</small>
					</div></li>
				</c:forEach>
				<!-- 模板结束 -->
			</ul>
			</c:if>
			<c:if test="${friendNum==0}">
			<h4 class="font-thin m-l-md m-t">您还没有好友</h4>
			</c:if>
		</section>
		<footer class="footer footer-md bg-black">
			<form class="" role="search">
				<div class="form-group clearfix m-b-none">
					<div class="input-group m-t m-b">
						<span class="input-group-btn">
							<button type="submit"
								class="btn btn-sm bg-empty text-muted btn-icon">
								<i class="fa fa-search"></i>
							</button>
						</span> <input type="text" style="width:80px"
							class="form-control input-sm text-white bg-empty b-b b-dark no-border"
							placeholder="好友搜索"/>
						<a href="${scp}/Tip/addFriendsView"
							class="form-control input-sm text-white bg-empty b-b b-dark no-border"
							style="width:80px;float: right;">+ 添加好友</a>
					</div>
				</div>
			</form>
		</footer>
	</section>
</aside>
<!-- / side content -->