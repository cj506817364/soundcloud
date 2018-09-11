<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><c:set var="scp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>音云 | Web Application</title>
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
    		<%@include file="basepages/header.jsp"%>
    <section>
      <section class="hbox stretch">
        <!-- .aside -->
               <%@include file="basepages/liftaside.jsp" %>
        <!-- /.aside -->
        <section id="content">
          <section class="vbox">
            <section class="scrollable wrapper">
              <h3 class="m-t-none font-thin">图标设计 System</h3>      
              <div class="row">
                <div class="col-lg-12">
                  <p>Base on Bootstrap grid system, you can get the columns as you want. 12 / (cols) = col-lg-(each-col-width-taken), like 12/3 = col-lg-4, 12/5 = col-lg-2.4 <span class="text-muted">(replace the '.' with '-')</span></p>
                </div>
                <div class="col-lg-12">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-12</div>
                  </section>
                </div>
                <div class="col-lg-6">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-6</div>
                  </section>
                </div>
                <div class="col-lg-6">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-6</div>
                  </section>
                </div>
                <div class="col-lg-4">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-4</div>
                  </section>
                </div>
                <div class="col-lg-4">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-4</div>
                  </section>
                </div>
                <div class="col-lg-4">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-4</div>
                  </section>
                </div>
                <div class="col-lg-3">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-3</div>
                  </section>
                </div>
                <div class="col-lg-3">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-3</div>
                  </section>
                </div>
                <div class="col-lg-3">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-3</div>
                  </section>
                </div>
                <div class="col-lg-3">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-3</div>
                  </section>
                </div>
                <div class="col-lg-2-4">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-2-4</div>
                  </section>
                </div>
                <div class="col-lg-2-4">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-2-4</div>
                  </section>
                </div>
                <div class="col-lg-2-4">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-2-4</div>
                  </section>
                </div>
                <div class="col-lg-2-4">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-2-4</div>
                  </section>
                </div>
                <div class="col-lg-2-4">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-2-4</div>
                  </section>
                </div>
                <div class="col-lg-2">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-2</div>
                  </section>
                </div>
                <div class="col-lg-2">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-2</div>
                  </section>
                </div>
                <div class="col-lg-2">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-2</div>
                  </section>
                </div>
                <div class="col-lg-2">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-2</div>
                  </section>
                </div>
                <div class="col-lg-2">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-2</div>
                  </section>
                </div>
                <div class="col-lg-2">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-2</div>
                  </section>
                </div>
                <div class="col-lg-12">
                  <p>Mobile, tablet, and desktop</p>
                </div>
                <div class="col-lg-4">
                  <div class="row">
                    <div class="col-xs-6">
                      <section class="panel panel-default">
                        <div class="panel-body">col-xs-6</div>
                      </section>
                    </div>
                    <div class="col-xs-6">
                      <section class="panel panel-default">
                        <div class="panel-body">col-xs-6</div>
                      </section>
                    </div>
                  </div>
                </div>
                <div class="col-lg-8">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-8</div>
                  </section>
                </div>
                <div class="col-lg-6">
                  <div class="row">
                    <div class="col-sm-6">
                      <section class="panel panel-default">
                        <div class="panel-body">col-sm-6</div>
                      </section>
                    </div>
                    <div class="col-sm-6">
                      <section class="panel panel-default">
                        <div class="panel-body">col-sm-6</div>
                      </section>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-6</div>
                  </section>
                </div>
                <div class="col-lg-8">
                  <div class="row">
                    <div class="col-md-6">
                      <section class="panel panel-default">
                        <div class="panel-body">col-md-6</div>
                      </section>
                    </div>
                    <div class="col-md-6">
                      <section class="panel panel-default">
                        <div class="panel-body">col-md-6</div>
                      </section>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4">
                  <section class="panel panel-default">
                    <div class="panel-body">col-lg-4</div>
                  </section>
                </div>
                <div class="col-sm-6">
                  <section class="panel panel-default">
                    <div class="panel-body">col-sm-6</div>
                  </section>
                </div>
                <div class="col-sm-6">
                  <section class="panel panel-default">
                    <div class="panel-body">col-sm-6</div>
                  </section>
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
  
  <script src="${scp}/js/app.plugin.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/demo.js"></script>

</body>
</html>