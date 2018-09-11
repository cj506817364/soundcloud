<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><c:set var="scp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>音乐大事件</title>
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
          <section class="scrollable">
            <div id="masonry" class="pos-rlt animated fadeInUpBig">
              <div class="item">
                <div class="carousel slide auto" data-interval="3000">
                  <div class="carousel-inner">
                    <div class="item active">
                      <div class="item-overlay opacity animated fadeInDown wrapper bg-info">
                        <p class="text-white">N.01</p>
                        <div class="center text-center m-t-n">
                          <a href="#"><i class="icon-control-play i-2x"></i></a>
                        </div>
                      </div>
                      <div class="bottom wrapper bg-info gd">
                        <div class="m-t m-b"><a href="#" class="b-b b-danger h2 text-u-c text-lt font-bold">Teideal</a></div>
                        <p class="hidden-xs">Morbi nec nunc condimentum, egestas dui nec, fermentum diam. Vivamus vel tincidunt libero, vitae elementum ligula</p>
                      </div>
                      <a href="#"><img src="${scp}/images/m20.jpg" alt="" class="img-full"></a>
                    </div>
                    <div class="item">
                      <div class="item-overlay opacity animated fadeInDown wrapper bg-info">
                        <p class="text-white">N.02</p>
                        <div class="center text-center m-t-n">
                          <a href="#"><i class="icon-control-play i-2x"></i></a>
                        </div>
                      </div>
                      <div class="bottom wrapper bg-info gd">
                        <div class="m-t m-b"><a href="#" class="b-b b-warning h2 text-u-c text-lt font-bold">Tincidunt</a></div>
                        <p class="hidden-xs">Gestas dui nec, fermentum diam. Vivamus vel tincidunt libero, vitae ligula elementum</p>
                      </div>
                      <a href="#"><img src="${scp}/images/m22.jpg" alt="" class="img-full"></a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-overlay gd animated fadeInUp wrapper bg-info">
                  <p class="text-white">Watch later</p>
                  <div class="center text-center m-t-n">
                    <a href="#"><i class="icon-control-play i-2x"></i></a>
                  </div>
                </div>
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Tincidunt</a></div>
                  <p class="hidden-xs">Vivamus vel tincidunt libero, lementum ligula vitae</p>
                </div>
                <a href="#"><img src="${scp}/images/m31.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-warning h4 text-u-c text-lt font-bold">Duis</a></div>
                  <p class="hidden-xs">Tincidunt libero vitae elementum</p>
                </div>
                <a href="#"><img src="${scp}/images/m10.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="item-overlay active bg-primary dker wrapper text-center">
                  <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">lementum</a></div>
                  <p class="hidden-xs">lementum ligula vitae est quis congue ero</p>
                </div>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Diam</a></div>
                  <p class="hidden-xs">Con malesuada est, quis congue nibhs</p>
                </div>
                <a href="#"><img src="${scp}/images/m4.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="carousel carousel-fade bg-info slide auto" data-interval="6000">
                  <div class="carousel-inner">
                    <div class="item active">
                      <div class="item-overlay active dker wrapper text-center">
                        <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Cosies</a></div>
                        <p class="hidden-xs">Duis non malesuada est, quis congue nibh</p>
                      </div>
                      <a href="#"><img src="${scp}/images/m4.jpg" alt="" class="img-full"></a>
                    </div>
                    <div class="item">
                      <div class="item-overlay active dk wrapper text-center">
                        <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Malesuada</a></div>
                        <p class="hidden-xs">Aliquam sollicitudin venenatis congue nibh</p>
                      </div>
                      <a href="#"><img src="${scp}/images/m4.jpg" alt="" class="img-full"></a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Vivamus</a></div>
                  <p class="hidden-xs">Morbi id neque quam. Aliquam sollicitudin venenatis ipsum</p>
                </div>
                <a href="#"><img src="${scp}/images/m13.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-warning h4 text-u-c text-lt font-bold">Libero</a></div>
                  <p class="hidden-xs">Aliquam sollicitudin venenatis ipsum</p>
                </div>
                <a href="#"><img src="${scp}/images/m30.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">habitant</a></div>
                  <p class="hidden-xs">Vel tincidunt libero, vitae ligula tristique</p>
                </div>
                <a href="#"><img src="${scp}/images/m19.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="item-overlay active bg-success dker wrapper text-center">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Ligula</a></div>
                  <p class="hidden-xs">Sesuada est, quis congue tincidunt libero nibh ligula</p>
                </div>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Malesuada</a></div>
                  <p class="hidden-xs">Pellentesque habitant morbi tristique sodales</p>
                </div>
                <a href="#"><img src="${scp}/images/m7.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Donec</a></div>
                  <p class="hidden-xs">Vestibulum ullamcorper</p>
                </div>
                <a href="#"><img src="${scp}/images/m18.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-primary h4 text-u-c text-lt font-bold">Eleifend</a></div>
                  <p class="hidden-xs">Malesuada augue. Donec eleifend condimentum</p>
                </div>
                <a href="#"><img src="${scp}/images/m32.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Sollicitudin </a></div>
                  <p class="hidden-xs">Mauris convallis mauris at pellentesque volutpat</p>
                </div>
                <a href="#"><img src="${scp}/images/m40.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-warning h2 text-u-c text-lt font-bold">Senectus </a></div>
                  <p class="hidden-xs">Fermentum diam. Vivamus vel tincidunt libero, vitae elementum ligula</p>
                </div>
                <a href="#"><img src="${scp}/images/m21.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Phasellus</a></div>
                  <p class="hidden-xs">Senectus et netus et malesuada fames</p>
                </div>
                <a href="#"><img src="${scp}/images/m5.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Neque</a></div>
                  <p class="hidden-xs">Consectetur adipiscing elit. Morbi id neque quam</p>
                </div>
                <a href="#"><img src="${scp}/images/a10.png" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Nisi ne</a></div>
                  <p class="hidden-xs">Orbi tristique senectus et netus et malesuada</p>
                </div>
                <a href="#"><img src="${scp}/images/m4.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="item-overlay active bg-warning dker wrapper text-center">
                  <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Morbi</a></div>
                  <p class="hidden-xs">Dolor sit amet, consectetur adipiscing elit.</p>
                </div>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Congue</a></div>
                  <p class="hidden-xs">Malesuada est, quis congue nibh</p>
                </div>
                <a href="#"><img src="${scp}/images/m6.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="item-overlay active bg-info lt wrapper text-center">
                  <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Csesoi</a></div>
                  <p class="hidden-xs">Dolor sit ectetur elit senectus et malesuada</p>
                </div>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Consectetur</a></div>
                  <p class="hidden-xs">Adipiscing elit senectus et netus mal.</p>
                </div>
                <a href="#"><img src="${scp}/images/m42.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Morbi</a></div>
                  <p class="hidden-xs">Dolor sit amet, consectetur adipiscing elit.</p>
                </div>
                <a href="#"><img src="${scp}/images/m9.jpg" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Soesle</a></div>
                  <p class="hidden-xs">Adipiscing elituis congue</p>
                </div>
                <a href="#"><img src="${scp}/images/a7.png" alt="" class="img-full"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Congue</a></div>
                  <p class="hidden-xs">Malesuada est, congue nibh quis elituis</p>
                </div>
                <a href="#"><img src="${scp}/images/m12.jpg" alt="" class="img-full"></a>
              </div>
            </div>
          </section>
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
    <script src="${scp}/js/masonry/tiles.min.js"></script>
  <script src="${scp}/js/masonry/demo.js"></script>
  <script src="${scp}/js/app.plugin.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/demo.js"></script>
<!-- 使用js来动态改变主题样式 -->
<script type="text/javascript">
	/* 放在最后就不用加文档就绪事件,界面样式切换的闪屏会好很多 */
	/* 修改header样式 */
/* 	var header = document.getElementsByTagName('header')[0];
	header.setAttribute("class","bg-black lter header header-md navbar navbar-fixed-top-xs"); */
	/* 坐上角分布在header中 */
	var div = document.getElementsByTagName('div')[0];
	div.setAttribute("class","navbar-header aside bg-primary nav-xs");
	/* liftaside引入样式相同 */
/* 	var liftaside = document.getElementsByTagName('aside')[0];
	liftaside.setAttribute("class","footer bg-success dker"); */
	/* footer样式修改 */
	var playfooter = document.getElementsByTagName('footer')[1];
	playfooter.setAttribute("class","footer bg-success dker");
</script>
</body>
</html>