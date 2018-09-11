<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="scp" value="${pageContext.request.contextPath}"/>
<!-- 底部的播放器控件 -->
<!-- 需要动态修改背景样式bg-dark
	index.jsp ->  bg-dark
	genres.jsp -> bg-info
 -->

<footer class="footer bg-dark">
	
	<div id="jp_container_N">
		<div class="jp-type-playlist">
			<div id="jplayer_N" class="jp-jplayer hide"></div>
			<div class="jp-gui">
				<div class="jp-video-play hide">
					<a class="jp-video-play-icon">播放</a>
				</div>
				<div class="jp-interface">
				
					<div class="jp-controls">
						<div>
							<a class="jp-previous"><i
								class="icon-control-rewind i-lg"></i></a>
						</div>
						<div>
							<a class="jp-play"><i class="icon-control-play i-2x"></i></a>
							<a class="jp-pause hid"><i
								class="icon-control-pause i-2x"></i></a>
						</div>
						
						<div>
							<a class="jp-next"><i
								class="icon-control-forward i-lg"></i></a>
						</div>
						<div class="hide">
							<a class="jp-stop"><i class="fa fa-stop"></i></a>
						</div>
						<div>
							<a class="" data-toggle="dropdown"
								data-target="#playlist"><i class="icon-list"></i></a>
						</div>
						<div class="jp-progress hidden-xs">
							<div class="jp-seek-bar dk">
								<div class="jp-play-bar bg-info"></div>
								<div class="jp-title text-lt">
									<ul>
										<li></li>
									</ul>
								</div>
							</div>
						</div>
						<div
							class="hidden-xs hidden-sm jp-current-time text-xs text-muted"></div>
						<div
							class="hidden-xs hidden-sm jp-duration text-xs text-muted"></div>
						<div class="hidden-xs hidden-sm">
							<a class="jp-mute" title="mute"><i
								class="icon-volume-2"></i></a> <a class="jp-unmute hid"
								title="unmute"><i class="icon-volume-off"></i></a>
						</div>
						<div class="hidden-xs hidden-sm jp-volume">
							<div class="jp-volume-bar dk">
								<div class="jp-volume-bar-value lter"></div>
							</div>
						</div>
						<!-- 随机播放 -->
						<div><a class="jp-shuffle" title="shuffle"><i
								class="icon-shuffle text-muted"></i></a> <a
								class="jp-shuffle-off hid" title="shuffle off"><i class="icon-shuffle text-lt"></i></a>
						</div>
						<!-- 循环播放/重复播放 -->
						<div><a class="jp-repeat" title="repeat"><i
								class="icon-loop text-muted"></i></a> <a
								class="jp-repeat-off hid" title="repeat off"><i class="icon-loop text-lt"></i></a>
						</div>
						<!-- 全屏播放:
								被隐藏了
								我将class="hide"属性去掉了
								才显示的
								可能是由于设计者没能实现该按钮,所以将其隐藏了
						 -->
						<div class="hide">
							<a class="jp-full-screen" title="full screen" hidden="hedden"><i
								class="fa fa-expand"></i></a> <a class="jp-restore-screen"
								title="restore screen"><i class="fa fa-compress text-lt"></i></a>
						</div>
					</div>
					
				</div>
			</div>
			<div class="jp-playlist dropup" id="playlist">
				<ul class="dropdown-menu aside-xl dker">
					<!-- The method playlist.displayPlaylist() uses this unordered list -->
					<li class="list-group-item"></li>
				</ul>
			</div>
			<div class="jp-no-solution hide">
				<span>需求更新</span> 要想播放媒体，你需要更新你的浏览器到最近的版本，或者更新你的浏览器 <a href="http://get.adobe.com/flashplayer/"
					target="_blank">Flash 插件</a>.
			</div>
		</div>
	</div>
	
<script src="${scp}/js/jquery.min.js"></script>
<script type="text/javascript" >

  var playList=${playList};

  $(document).ready(function(){	
    var myPlaylist = new jPlayerPlaylist({
      jPlayer: "#jplayer_N",
      cssSelectorAncestor: "#jp_container_N"
    }, playList, {
      playlistOptions: {
        enableRemoveControls: true,
        autoPlay: false
      },
      swfPath: "js/jPlayer",
      supplied: "webmv, ogv, m4v, oga, mp3",
      smoothPlayBar: true,
      keyEnabled: true,
      audioFullScreen: false
    });
    
    $(document).on($.jPlayer.event.pause, myPlaylist.cssSelector.jPlayer,  function(){
      $('.musicbar').removeClass('animate');
      $('.jp-play-me').removeClass('active');
      $('.jp-play-me').parent('li').removeClass('active');
    });

    $(document).on($.jPlayer.event.play, myPlaylist.cssSelector.jPlayer,  function(){
      $('.musicbar').addClass('animate');
    });

    $(document).on('click', '.jp-play-me', function(e){
      e && e.preventDefault();
      var $this = $(e.target);
      if (!$this.is('a')) $this = $this.closest('a');

      $('.jp-play-me').not($this).removeClass('active');
      $('.jp-play-me').parent('li').not($this.parent('li')).removeClass('active');

      $this.toggleClass('active');
      $this.parent('li').toggleClass('active');
      if( !$this.hasClass('active') ){
        myPlaylist.pause();
      }else{
    	  var index = $(this).data("index");
          myPlaylist.play(index);
      }
      
    });
    // video

    $("#jplayer_1").jPlayer({
      ready: function () {
        $(this).jPlayer("setMedia", {
          title: "Big Buck Bunny",
          m4v: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.m4v",
          ogv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.ogv",
          webmv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.webm",
          poster: "images/m41.jpg"
        });
      },
      swfPath: "js",
      supplied: "webmv, ogv, m4v",
      size: {
        width: "100%",
        height: "auto",
        cssClass: "jp-video-360p"
      },
      globalVolume: true,
      smoothPlayBar: true,
      keyEnabled: true
    });

  });
  </script>
</footer>