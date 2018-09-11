<%@page import="cn.ppj.springBoot.pojo.Audio"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><c:set var="scp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>音乐 | 网站应用</title>
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
          <section class="vbox">
          <section class="w-f-md">
            <section class="hbox stretch bg-black dker">
              <!-- side content -->
              <aside class="col-sm-5 no-padder" id="sidebar">
                <section class="vbox animated fadeInUp">
                  <section class="scrollable">
                  <div>                 	
                  </div>
                    <div id="audioInfo" class="m-t-n-xxs item pos-rlt">
                      <div class="top text-right">
                        <span class="musicbar animate bg-success bg-empty inline m-r-lg m-t" style="width:25px;height:30px">
                          <span class="bar1 a3 lter"></span>
                          <span class="bar2 a5 lt"></span>
                          <span class="bar3 a1 bg"></span>
                          <span class="bar4 a4 dk"></span>
                          <span class="bar5 a2 dker"></span>
                        </span>
                      </div>
                      <div class="bottom gd bg-info wrapper-lg">
                        <!-- <span class="pull-right text-sm">101,400 <br>Followers</span> -->
                        <span id="audioname" class="h2 font-thin">
                        <c:if test="${empty audio}">还未选中任何歌曲 </c:if>
                        <c:if test="${!(empty audio)}"> ${audio.audioname }</c:if>
                       </span>
                      </div>
                      <%Audio audio=(Audio)request.getAttribute("audio");
                      String str="images/havenotchoose.png";
                      if(audio!=null){
                          str = audio.getPicName().split(",")[1];
                      }%>
                      <img id="audiopic" class="img-full" src="
                       <c:if test="${empty audio}">${scp}/images/havenotchoose.png</c:if>
                       <c:if test="${!(empty audio)}">                       
                       ${scp}/${audio.picUrl}/<%=str%></c:if>
                      " alt="...">
                    </div>
                    <ul  class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">                    
                      <li class="list-group-item">                                          
                        <div class="clear text-ellipsis">
                          <span>专辑:</span>
                          <span id="special" class="text-muted">                       
                          ${audio.special}</span>
                        </div>                                      
                      </li>

                    </ul>
                    <ul class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                      <li class="list-group-item">                                          
                         <div class="clear text-ellipsis">
                          <span>作词:</span>
                          <span  id="writeWords" class="text-muted">${audio.writeWords}</span>
                        </div>                                                           
                      </li>
                    </ul>
                    <ul class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                      <li class="list-group-item">                                          
                         <div class="clear text-ellipsis">
                          <span>作曲:</span>
                          <span  id="compose" class="text-muted">${audio.compose}</span>
                        </div>                                      
                      </li>
                    </ul>
                    <ul  class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                      <li class="list-group-item">                                          
                        <div class="clear text-ellipsis">
                          <span>流派:</span>
                          <span id="genre" class="text-muted">${audio.genre}</span>
                        </div>                                         
                      </li>
                    </ul>

                  </section>
                </section>
              </aside>        
              <!-- / side content -->
              <section class="col-sm-4 no-padder bg">
                <section class="vbox">
                  <section class="scrollable hover">
                    <ul class="list-group list-group-lg no-bg auto m-b-none m-t-n-xxs">
                      <!-- 模板开始 -->
                    	<c:if test="${empty userAudioList }">
                   			<h4 style="text-align:center">===您还未添加歌曲===</h4>
                   		</c:if>
                   		
                      <c:forEach items="${userAudioList }" var="l" varStatus="state">
                   		<c:if test="${empty userAudioList }">
                   			<h2 style="text-align:center">您的播放列表空空如也，赶快添加歌曲吧~</h2>
                   		</c:if>
                       <li  class="list-group-item">
                        <!-- <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md ">
                          <i class="icon-control-play text"></i>
                          <i class="icon-control-pause text-active"></i>
                        </a> -->
                        <!-- 该标签添加ajax获取歌曲信息，刷新左面歌曲详情页面 -->
                        
                        <li href="#" class="pull-left thumb-sm m-r" >
                          <img src="${l.poster}" alt="...">
                        </li>
                        
                        <a  class="clear jp-play-me" href="#" data-index="${state.index}">                       		
                            
                          <span  class="block text-ellipsis" id="${l.title}" >${l.title}
                          	<span class="text-muted"> -- 04:35</span>
                          </span>
                          <a href="/listen/delete?audioname=${l.title}" class="icon-close pull-right"></a>
                          <small class="text-muted">${l.artist }</small>     
                        </a>
                       
                      </li>
                      </c:forEach>
                   
                      <!-- 模板结束 --> 
                    </ul>
                  </section>
                </section>
              </section>
              
              
              
             <section class="col-sm-3 no-padder lt">
                <section class="vbox">
                  <section class="scrollable hover">
                  <!-- 	模板开始
                  			不易显示过多
                  			以下两个div应该出现在foreach中的两个if判断相反的if标签中	
                  	 -->
                    <div class="m-t-n-xxs">
                      <div class="item pos-rlt">
                        <a href="#" class="item-overlay active opacity wrapper-md font-xs">
                          <span class="block h3 font-bold text-info">Find</span>
                          <span class="text-muted">Search the music you like</span>
                          <span class="bottom wrapper-md block">- <i class="icon-arrow-right i-lg pull-right"></i></span>
                        </a>
                        <a href="#">
                          <img class="img-full" src="${scp}/images/m40.jpg" alt="...">
                        </a>
                      </div>
                      <div class="item pos-rlt">
                        <a href="#" class="item-overlay active opacity wrapper-md font-xs text-right">
                          <span class="block h3 font-bold text-warning text-u-c">聆听</span>
                          <span class="text-muted">Find the peace in your heart</span>
                          <span class="bottom wrapper-md block"><i class="icon-arrow-right i-lg pull-left"></i> -</span>
                        </a>
                        <a href="#">
                          <img class="img-full" src="${scp}/images/m41.jpg" alt="...">
                        </a>
                      </div>
                       <div class="item pos-rlt">
                        <a href="#" class="item-overlay active opacity wrapper-md font-xs">
                          <span class="block h3 font-bold text-success text-u-c">Share</span>
                          <span class="text-muted">Share the good songs with your loves</span>
                          <span class="bottom wrapper-md block">- <i class="icon-arrow-right i-lg pull-right"></i></span>
                        </a>
                        <a href="#">
                          <img class="img-full" src="${scp}/images/m42.jpg" alt="...">
                        </a>
                      </div>
                      <div class="item pos-rlt">
                        <a href="#" class="item-overlay active opacity wrapper-md font-xs text-right">
                          <span class="block h3 font-bold text-white text-u-c">2014</span>
                          <span class="text-muted">Find, Listen & Share</span>
                          <span class="bottom wrapper-md block"><i class="icon-arrow-right i-lg pull-left"></i> -</span>
                        </a>
                        <a href="#">
                          <img class="img-full" src="${scp}/images/m44.jpg" alt="...">
                        </a>
                      </div>
                      <div class="item pos-rlt">
                        <a href="#" class="item-overlay active opacity wrapper-md font-xs">
                          <span class="block h3 font-bold text-danger-lter text-u-c">Top10</span>
                          <span class="text-muted">Selected songs</span>
                          <span class="bottom wrapper-md block">- <i class="icon-arrow-right i-lg pull-right"></i></span>
                        </a>
                        <a href="#">
                          <img class="img-full" src="${scp}/images/m45.jpg" alt="...">
                        </a>
                      </div>
                       
                   <!--    模板结束 -->
                    </div>
                  </section>
                </section>
              </section> 
            </section>
          </section>
		<!-- 底部播放器 -->
		<%@include file="basepages/playfooter.jsp"%> 
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

<!-- 使用js来动态改变主题样式 -->
<script type="text/javascript">
$(function() {
	$(".ajaxAudio").click(function() {
		
		var audioname=$(this).next().find('span:first').attr('id');
		
		$.post("${scp}/listen/ajax_audio",{"audioname":audioname} ,function(result){					
			$("#audioname").html(result.audioname);
			var strs= new Array(); //定义一数组 
			strs=result.picName.split(",");
			$("#audiopic").attr('src',"${scp}"+"/"+result.picUrl+"/"+strs[1]);
			
			$("#special").html(result.special);
			$("#writeWords").html(result.writeWords);
			$("#compose").html(result.compose);
			$("#genre").html(result.genre);
			
		} ); 
	});
});	


	/* 放在最后就不用加文档就绪事件,界面样式切换的闪屏会好很多 */
	/* 修改header样式 */
	var header = document.getElementsByTagName('header')[0];
	header.setAttribute("class","bg-black lter header header-md navbar navbar-fixed-top-xs");
 	var div = document.getElementsByTagName('div')[0];
	div.setAttribute("class","navbar-header aside bg-success nav-xs"); 
	/* liftaside引入样式相同 */
	/* footer样式修改,中间还有个通知footer,所以是第二个 */
 	var playfooter = document.getElementsByTagName('footer')[1];
	playfooter.setAttribute("class","footer bg-success dker"); 
</script>
</body>
</html>