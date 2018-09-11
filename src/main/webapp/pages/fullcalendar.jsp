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
    <link rel="stylesheet" href="${scp}/js/fullcalendar/fullcalendar.css" type="text/css"  />
  <link rel="stylesheet" href="${scp}/js/fullcalendar/theme.css" type="text/css" />
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
              <section class="scrollable">
                <section class="hbox">
                  <!-- .aside -->
                  <aside class="aside-lg bg-light dker wrapper">
                    <div id="myEvents" class="panel b-a bg-light">
                      <div class="panel-heading bg-white">
                        Dragable events
                      </div>
                      <ul class="list-unstyled wrapper m-b-none">
                        <li class="m-b-xxs">
                          <div class="r bg-white b-l b-2x b-info wrapper-xxs">
                            Meet a friend
                          </div>
                        </li>
                        <li class="m-b-xxs">
                          <div class="r bg-white b-l b-2x b-danger wrapper-xxs">
                            Tom's birthday
                          </div>
                        </li>
                        <li class="m-b-xxs">
                          <div class="r bg-white b-l b-2x b-primary wrapper-xxs">
                            Feed cat
                          </div>
                        </li>
                        <li class="m-b-xxs">
                          <div class="r bg-white b-l b-2x b-warning wrapper-xxs">
                            Sports
                          </div>
                        </li>
                        <li class="m-b-xxs">
                          <div class="r bg-primary bg wrapper-xxs">
                            Tom's birthday
                          </div>
                        </li>
                      </ul>
                    </div>
                    <div class="checkbox">
                      <label class="i-checks"><input type='checkbox' checked id='drop-remove' /><i></i> remove after drop</label>
                    </div>
                  </aside>
                  <!-- /.aside -->    
                  <!-- .aside -->
                  <aside class="wrapper">
                    <section class="panel no-border bg-light">
                      <header class="panel-heading bg-primary clearfix">
                        <div class="btn-group pull-right" data-toggle="buttons">
                          <label class="btn btn-sm btn-bg btn-default active" id="monthview">
                            <input type="radio" name="options">Month
                          </label>
                          <label class="btn btn-sm btn-bg btn-default" id="weekview">
                            <input type="radio" name="options">Week
                          </label>
                          <label class="btn btn-sm btn-bg btn-default" id="dayview">
                            <input type="radio" name="options">Day
                          </label>
                        </div>
                        <span class="m-t-xs inline text-white">
                          Fullcalendar
                        </span>
                      </header>
                      <div class="calendar" id="calendar">

                      </div>
                    </section>
                  </aside>
                  <!-- /.aside -->
                </section>
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
  <!-- fullcalendar -->
<script src="${scp}/js/jquery.ui.touch-punch.min.js"></script>
<script src="${scp}/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="${scp}/js/fullcalendar/fullcalendar.min.js"></script>
<script src="${scp}/js/fullcalendar/demo.js"></script>
  <script src="${scp}/js/app.plugin.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="${scp}/js/jPlayer/demo.js"></script>

</body>
</html>