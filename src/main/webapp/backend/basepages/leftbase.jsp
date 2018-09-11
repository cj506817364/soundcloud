<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="nav-navicon admin-main admin-sidebar">

	<div class="sideMenu am-icon-dashboard"
		style="color: #aeb2b7; margin: 10px 0 0 0;">欢迎系统管理员</div>
	<div class="sideMenu">
		<h3 class="am-icon-users">
			<em></em> <a href="#">用户管理</a>
		</h3>
		<ul>
			<li><a href="${scp}/backend/user/userList">用户列表</a></li>
			<li><a href="">用户详情</li>
			<li><a href="">用户新增</li>
			<li><a href="">用户删除</li>
			<li><a href="">用户修改</li>
		</ul>
		<h3 class="am-icon-volume-up"><em></em> <a href="#">音乐管理</a></h3>
		<ul>
			<li><a href="${scp}/backend/music/musicList">音乐列表</li>
			<li><a href="">音乐详情</li>
			<li><a href="">音乐新增</li>
			<li><a href="">音乐删除</li>
			<li><a href="">音乐修改</li>
		</ul>
		<h3 class="am-icon-gears"><em></em> <a href="#">视频管理</a></h3>
		<ul>
			<li><a href="${scp}/backend/movie/movieList">视频列表</li>
			<li><a href="${scp}/backend/movie/movieView">视频详情</li>
			<li><a href="${scp}/backend/movie/movieCreate">视频新增</li>
			<li><a href="${scp}/backend/movie/movieDelete">视频删除</li>
			<li><a href="${scp}/backend/movie/movieToUpdate">视频修改</li>
		</ul>
	</div>
	<!-- sideMenu End -->

	<script type="text/javascript">
		jQuery(".sideMenu").slide({
			titCell : "h3", //鼠标触发对象
			targetCell : "ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
			effect : "slideDown", //targetCell下拉效果
			delayTime : 300, //效果时间
			triggerTime : 150, //鼠标延迟触发时间（默认150）
			defaultPlay : true,//默认是否执行效果（默认true）
			returnDefault : false
		//鼠标从.sideMen移走后返回默认状态（默认false）
		});
	</script>

</div>
