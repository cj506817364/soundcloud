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
  <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=lFl0BfSCsSyzjNKalORLnfq3494vg6MP"></script>
	<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
</head>
<body class="">
  <section class="vbox">
    <%@include file="basepages/header.jsp"%>
    <section>
      <section class="hbox stretch">
        <!-- .aside -->
        <%@include file="basepages/liftaside.jsp"%>
        <!-- /.aside -->
 <div id="container" style="position:absolute;left:90px;top:35px;width:1325px;height:825px"></div>
<div id="panel" style="position:absolute;left:1430px;top:30px"></div>
<div>
<span id="r-result">搜索地点:<input type="text" id="suggestId" size="20" value="百度" style="width:150px;" /></span>
<span id="searchResultPanel" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></span>
起点：<input type="text" id="qidian">
终点：<input type="text" id="zhongdian">
<input type="button"  value="规划" onclick="search()">
</div>
  <script>
/* var map =new BMap.Map('container');
map.centerAndZoom(new BMap.Point(116.331398,39.897445), 12); */
//百度地图API功能
	// 百度地图API功能
	function G(id) {
		return document.getElementById(id);
	}

var map = new BMap.Map('container');
var point = new BMap.Point(116.331398,39.897445);
map.centerAndZoom(point,12);

var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
		{"input" : "suggestId"
		,"location" : map
	});

	ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
	var str = "";
		var _value = e.fromitem.value;
		var value = "";
		if (e.fromitem.index > -1) {
			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		}    
		str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
		
		value = "";
		if (e.toitem.index > -1) {
			_value = e.toitem.value;
			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		}    
		str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
		G("searchResultPanel").innerHTML = str;
	});

	var myValue;
	ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
	var _value = e.item.value;
		myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
		
		setPlace();
	});

	function setPlace(){
		map.clearOverlays();    //清除地图上所有覆盖物
		function myFun(){
			var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
			map.centerAndZoom(pp, 18);
			map.addOverlay(new BMap.Marker(pp));    //添加标注
		}
		var local = new BMap.LocalSearch(map, { //智能搜索
		  onSearchComplete: myFun
		});
		local.search(myValue);
	}


function myFun(result){
	var cityName = result.name;
	map.setCenter(cityName);
	alert("当前定位城市:"+cityName);
}
var myCity = new BMap.LocalCity();
myCity.get(myFun);   
 // 添加带有定位的导航控件
  var navigationControl = new BMap.NavigationControl({
    // 靠左上角位置
    anchor: BMAP_ANCHOR_TOP_LEFT,
    // LARGE类型
    type: BMAP_NAVIGATION_CONTROL_LARGE,
    // 启用显示定位
    enableGeolocation: true
  });
  map.addControl(navigationControl);
  var size = new BMap.Size(10, 20);
  map.addControl(new BMap.CityListControl({
      anchor: BMAP_ANCHOR_TOP_RIGHT,
      offset: size,
      // 切换城市之间事件
      // onChangeBefore: function(){
      //    alert('before');
     
  }));
  map.enableScrollWheelZoom(true); 
function search(){
	var a =document.getElementById("qidian").value;
	var b =document.getElementById("zhongdian").value
var driving =new BMap.DrivingRoute(map, {
    onSearchComplete: function(results){
        if (driving.getStatus() == BMAP_STATUS_SUCCESS) {
            // 地图覆盖物
            addOverlays(results);
            // 方案描述
            addText(results);
        }
    }
});

driving.search(a,b);

// 添加覆盖物并设置视野
function addOverlays(results) {
    // 自行添加起点和终点
var start = results.getStart();
    var end = results.getEnd();
    addStart(start.point, start.title);
    addEnd(end.point, end.title);
    var viewPoints = [start.point, end.point];
    // 获取方案
var plan = results.getPlan(0);
    // 获取方案中包含的路线
for (var i =0; i < plan.getNumRoutes(); i ++) {
        addRoute(plan.getRoute(i).getPath());
        viewPoints.concat(plan.getRoute(i).getPath());
    }
    // 设置地图视野
    map.setViewport(viewPoints, {
        margins: [40, 10, 10, 10]
    });
}

// 添加方案描述
function addText(results) {
    var plan = results.getPlan(0);
    // 获取方案中包含的路线
var htmls = [];
    for (var i =0; i < plan.getNumRoutes(); i ++) {
        var route = plan.getRoute(i);
        for (var j =0; j < route.getNumSteps(); j ++) {
            var curStep = route.getStep(j);
            htmls.push((j +1) +'. '+ curStep.getDescription() +'<br />');
        }
    }
    var panel = document.getElementById('panel');
    panel.innerHTML = htmls.join('');
    panel.style.lineHeight ='1.4em';
    panel.style.fontSize ='12px';
}

// 添加起点覆盖物
function addStart(point, title){
    map.addOverlay(new BMap.Marker(point, {
        title: title,
        icon: new BMap.Icon('blue.png', new BMap.Size(38, 41), {
            anchor: new BMap.Size(4, 36)
        })}));
}

// 添加终点覆盖物
function addEnd(point, title){
    map.addOverlay(new BMap.Marker(point, {
        title: title,
        icon: new BMap.Icon('red.png', new BMap.Size(38, 41), {
            anchor: new BMap.Size(4, 36)
        })}));
}

// 添加路线
function addRoute(path){
    map.addOverlay(new BMap.Polyline(path, {
        strokeColor: '#333',
        enableClicking: false
    }));
}
}
</script>
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