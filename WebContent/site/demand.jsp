<%@ page import="servlet.AttractionsServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
    <head>
        <meta charset=UTF-8"utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no"/>
        <meta name="baidu-site-verification" content="seU0GCr4fa" />
		<title></title>
		<meta name="keywords" content="包车,地接,地陪,当地向导,当地导游,中文导游,私人导游,导游,旅游,自由行"/>
		<meta name="description" content="丸子地球,专业预定私人中文导游,私人导游服务.提供导游相关的如:包车,地接,地陪,当地向导,当地导游,自由行等服务"/>
        
        <link rel="stylesheet" href="../css/bootstrap.min.css" />
        <link rel="stylesheet" href="../css/bootstrap-select.min.css" />
        <link rel="stylesheet" href="../css/computer.css" > 
        <link rel="stylesheet" href="../css/bootstrap-datetimepicker.min.css" > 
        <script type="text/javascript" src="../js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="../js/bootstrap.js" ></script>
		<script type="text/javascript" src="../js/bootstrap-select.min.js" ></script>
		<script type="text/javascript" src="../js/bootstrap-datetimepicker.min.js" ></script>
		<script type="text/javascript" src="../js/bootstrap-datetimepicker.zh-CN.js" ></script>
        
        
        <link rel="shortcut icon" href="icon.png">
        <link rel="stylesheet" href="../css/common.css" >
        <link rel="stylesheet" href="../css/swiper.min.css" >
		<link rel="stylesheet" href="../emoji/emoji.css" >
		<link rel="stylesheet" href="../js/promptbox/prompt_box.css" >
        <script src="../js/" ></script>
        <script src="../js/search.js" ></script>
        <script src="../js/remscreen.js" ></script>
        <script src="../js/fastclick.js" ></script>
		<script src="../js/promptbox/prompt_box.js" ></script>
		<link rel="stylesheet" href="../css/mobile.css" >
		
		  <script type="text/javascript">
          function  doSome(){
        	  alert($("#sel").find("option:selected").val());
        	  }
	    </script>
				
    </head>
	<body>
	    <%
	       
		    	new AttractionsServlet().findAll(request, response);
		    
	    %>
	     
        
			<!-- 头部导航栏 -->
			<div class="navbar navbar-inverse navbar-fixed-top" style="background-color: white;">
				<div class="container">
					<div class="navbar-header">
						<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<div class="phone-search">
							<a href="search.htm" ><input type="text" placeholder="请输入您想去的国家、城市"><i></i></a>
						</div>
						<a class="navbar-brand hidden-sm logo-web" href="../index.jsp" ><img src="../images/logo-web.png"  alt=""></a>
						<a class="navbar-brand hidden-sm logo-phone" href="../index.jsp" ><img src="../images/logo-phone.png"  alt=""></a>
					</div>
					<div class="navbar-collapse collapse" role="navigation">
						<ul class="nav navbar-nav nav-ul">
							<li class="home-page slide-li"><a href="../../../index.jsp" >首页</a></li>
							<li class="hidden-sm hidden-md order-li mian-top"><a href="../../demand.jsp"   target="_blank">定制旅行</a></li>
							<li class="slide-li mian-top"><a href="../../html/id/why_guide.htm" >旅途留言板</a></li>
							<li class=" mian-top"><a href="../../group.htm"  target="_blank">旅途攻略</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right hidden-sm nav-ul login-ul">
							<li class="phone-num"><a href="javascript:;"><i></i>400-872-8336</a></a></li>
							<li class="help-center">
								<a href="helpList.htm" >帮助中心<i></i></a>
								<ul>
									<li><a href="helpDetail/id/58.htm" >如何预订丸子向导？</a></li>
									<li><a href="helpDetail/id/61.htm" >什么是定制旅行服务？</a></li>
									<li><a href="helpDetail/id/57.htm" >如何成为一名优秀的丸子向导？</a></li>
									<li><a href="helpList.htm" >查看更多常见问题与解答</a></li>
								</ul>
							</li>
							<c:if test="${empty user }">
								<li><a href="loginPage/t/register.jsp"  class="login-section">注册</a></li>
								<li><a href="loginPage/t/login.jsp"  class="login-line">登录</a></li>
							</c:if>
							<c:if test="${not empty user }">
							    <li style=""><a href="#">${user.username}&nbsp;&nbsp;:&nbsp;&nbsp;你好</a></li>
							    <li><a href="${pageContext.request.contextPath}/user?method=logout"  class="login-line">退出</a></li>
								
							</c:if>
						</ul>
					</div>
				</div>
			</div>
<!-- 头部导航栏 -->
<!-- 主题 -->

<!-- 主题部分 -->
<!--<div class="travel-bg"></div>-->
<div class="main-white">
	<form id="intent-form" action="${pageContext.request.contextPath}/order?method=next1" method="post">
		<div class="container travel-main">
			<!--<h4>定制旅行</h4>-->
			<p class="text-center travel-title travel-h">告诉我们您的旅行计划</p>
			<p class="travel-detail">我们的中文向导覆盖全球60多个国家600多座城市，我们将整合平台所拥有的优质向导资源，为您打造最独一无二的旅行体验！</p>
			<div class="row">
				<div class="col-sm-2 col-xs-12"><p class="travel-h">出行日期</p></div>
				<div class="col-sm-10 col-xs-12">
					<div class="order-time1 travel-time">
						<input type="text" style="padding:0;"  required="required"  class="form-control theme_input" autocomplete="off" name="start_data" id="demand-start" placeholder="开始日期" >
						<input type="text" style="padding:0;"  required="required"  class="form-control theme_input" autocomplete="off" name="end_data" id="demand-end" placeholder="结束日期" >
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-2 col-xs-12"><p class="travel-h travel-city" >出行目的地</p></div>
				<div class="col-sm-10 col-xs-12">
					<select class="selectpicker" title="请选择目的地" onchange="doSome()" id="sel" name="select">
						<c:forEach items="${plist }" var="p">
						   <option value="${p.att_id }">${p.att_name }</option>
						</c:forEach>
					</select>
				</div>
			</div>
			
			
			<div class="row person-section">
				<div class="col-sm-6">
					<label class="mony-person">出行人数</label>
					<div class="order-time1 person-main">
						<span class="order-min"></span>
						<input type="text" required="required" name="person-num"  placeholder="0" id="person-num">
						<span class="order-add"></span>
					</div>
					<label class="person-single">人</label>
				</div>
				
			</div>
			<p class="text-color2 order-remarks">告诉我们更多信息，以便我们更好地为您安排行程，例如：您的出行目的、对导游的要求（性别、职业等）、初步的行程安排或者其他要求。</p>
			<div class="remarks-text">
				<textarea name="content" id="content" maxlength="500" placeholder="在这儿详细描述您的需求吧"></textarea>
				<span>您还可以输入500字</span>
			</div>
			<button class="main-bg submit-btn text-center text-color5" type="submit">下一步</button>
		</div>
	</form>
</div>
<div class="main-line"></div>
<!-- 主题部分 -->

<script>
	$(document).ready(function() {
		var time = new Date(), m = time.getMonth() + 1;
   		var t = time.getFullYear() + "-" + m + "-"+ time.getDate();
		//定制行程接送机点击效果
		$('.car_radio label').toggle(function() {
			$(this).addClass('current');
			$(this).find('input').val('1');
		}, function() {
			$(this).removeClass('current');
			$(this).find('input').val('0');
		});
		//定制行程人数点击效果
		$('.order-min').on('click', function() {
			var _num = $('#person-num').val() - 0;
			_num--;
			if (_num <= 0) {
				$(this).siblings('#person-num').val(0);
				_num = 1;
			}
			else {
				$(this).siblings('#person-num').val(_num);
			}
		});
		$('.order-add').on('click', function() {
			var _num = $('#person-num').val() - 0;
			_num++;
			$(this).siblings('#person-num').val(_num);
		});
		
		
		
		
		
		//备注文字统计
		$('.remarks-text textarea').bind('propertychange input', function() {
			len = $(this).val().length;
			if (len > 501) {
				$(this).siblings('span').css('color', '#f00');
				len = 500;
			}
			$(this).siblings('span').html('您还可以输入' + (500 - len) + '字');
		});
		
		
		//提交需求开始形成时间日历
		$('#demand-start').datetimepicker({
			bootcssVer: 3,
			format: 'yyyy-mm-dd',
			language: 'zh-CN',
			weekStart: 1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 1,
			linkField: "mirror_start",
			linkFormat: "yyyy-mm-dd"
		}).on('changeDate', function(ev) {
			if(changeTime($(this).val())<changeTime(t)){
				$().popup('不能小于当前时间');
				$(this).val('');
				return false;
			}
			if (changeTime($(this).val()) > changeTime($('#demand-end').val())) {
				$().popup('不能大于结束时间');
				$(this).val('');
				return false;
			}
			if (!$('#demand-end').val()) {
				$('#demand-end').val($(this).val());
			} 
		});
		//提交需求结束形成时间日历
		$('#demand-end').datetimepicker({
			bootcssVer: 3,
			format: 'yyyy-mm-dd',
			language: 'zh-CN',
			weekStart: 1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 1,
			linkField: "mirror_end",
			linkFormat: "yyyy-mm-dd"
		}).on('changeDate', function(ev) {
			if(changeTime($(this).val())<changeTime(t)){
				$().popup('不能小于当前时间');
				$(this).val('');
				return false;
			}
			if (changeTime($(this).val()) <changeTime($('#demand-start').val())) {
				$().popup('不能小于开始时间');
				$(this).val('');
				return false;
			}
		});
		
		//需求提交表单
		$('#intent-form').submit(function(){
			var area='';
			$('.city-name input').each(function() {
				if ($(this).val()) {
					area +=$(this).val();
				}
			});
			if(!$('#demand-start').val()||!$('#demand-end').val()||!$('#person-num').val()||!$('#content').val()||!area){
				$(this).popup('请将信息填写完整再进行提交');
				return false;
			}
			$(this).loading();
			$.post('/intent/addOlister',$(this).serialize(),function(result){
				$(this).unload();
				if(result.code==1000){
					window.location.href='demandSuccess/id/index.htm'/*tpa=http://www.wanzi.cc/site/demandSuccess/id/*/+result.result;
				}else{
					$(this).popup(result.error);
				}
			},'json');
			return false;
		})
	});

</script>        <!-- 主题 -->
		<!-- 右侧客服以及回到顶部 -->
		<div class="side-item" style="bottom:355px;">
			<a href="demand.jsp" ><img src="../images/booking-trip.png"  alt=""></a>
		</div>
		<div class="side-item" style="bottom:270px;">
			<a href="demand.jsp" ><img src="../images/booking-ticket.png"  alt=""></a>
        </div>
        <div class="suspend-section side-item">
			<img src="../images/back.png"  alt="">
        </div>
        <!-- 右侧客服以及回到顶部 -->
        <!-- 底部 -->
        <div class="main-white">
            <div class="container footer-section">
                <div class="row">
                    <div class="col-sm-6 hidden-xs">
                        <h5>客服热线</h5>
                        <p><span class="tel-num text-center">国内</span><strong>400-872-8336</strong></p>
                        <p><span class="tel-num text-center">海外</span><strong>+86-571-88669710</strong></p>
                        <p class="work-hours">接听时间：9:00-22:00（北京时间）</p>
                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <h5>公司信息<i class="arrow-btn"></i></h5>
                                <div class="hidden-section">
                                    <p><a href="html/id/about_us.htm" >关于我们</a></p>
                                    <p><a href="html/id/join_us.htm" >加入我们</a></p>
                                    <p><a href="html/id/contact_us.htm" >联系我们</a></p>
                                    <p><a href="html/id/media.htm" >媒体报道</a></p>
                                    <p><a href="html/id/map.htm" >网站地图</a></p>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <h5>新手上路<i class="arrow-btn"></i></h5>
                                <div class="hidden-section">
                                    <p><a href="helpList.htm" >帮助中心</a></p>
                                    <p><a href="html/id/terms_service.htm" >服务条款</a></p>
                                    <p><a href="html/id/privacy_policy.htm" >隐私政策</a></p>
                                    <p><a href="html/id/disclaimer.htm" >免责声明</a></p>
                                    <p><a href="html/id/policy_notes.htm" >使用政策须知</a></p>
                                    <p><a href="html/id/terms.htm" >保障计划条款</a></p>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <h5>丸子向导<i class="arrow-btn"></i></h5>
                                <div class="hidden-section">
                                    <p><a href="html/id/why_guide.htm" >为什么成为丸子</a></p>
                                    <p><a href="html/id/culture.htm" >丸子服务标准</a></p>
                                    <p><a href="html/id/why_guide.htm"  >申请成为丸子</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row text-bottom">
                    <div class="col-sm-6 col-xs-12">
                        <p class="text-color2 font-size1">沪ICP备11048536号</p>
                        <p class="text-color2 font-size1">©上海幻橙网络科技有限公司 All Rights Reserved</p>
                    </div>
                    <div class="col-sm-6 hidden-xs">
                        <a href="(这里是你想替换的链接)"  class="sina-btn"></a>
                        <a href="javascript:;" class="wei-btn">
			<span class="video-section">
                            <img src="../images/weixin.png"  alt="">
                            <span class="text-center">微信扫码 关注我们</span>
                            <i></i>
                        </span>
			</a>
                        <span class="text-color2 font-size1">关注我们</span>
                    </div>
                </div>
            </div>
        </div>
        <!-- 底部 -->
	<!-- qiyu -->
	<script src="../../qiyukf.com/script/24c8bd3fd15d1272dc707fb2944bbc27.js"  defer async></script>
    <script>
		//注册登录电脑端
		function resterLogin(str) {
			if (str == true) {
				location.href = 'loginPage/t/2.htm'/*tpa=http://www.wanzi.cc/site/loginPage/t/2*/;
			}
		}
		$('.quit-login').live('mouseover', function() {
			$(this).children('ul').show();
			$(this).one('mouseout', function() {
				$(this).children('ul').hide();
			})
		});
		function setLogin() {
			if (avatar && username) {
				$('.login-line').remove();
				$('.login-section').remove();
				$('.login-ul').append(isMobile() ? '<li class="my-travel my-trav"><a href="../index.htm"/*tpa=http://www.wanzi.cc/site/orderList*/>我的定制旅行</a></li>\
									<li class="slide-li"><a href="javascript:;"  class="out">退出</a></li>'
						: '<li class="quit-login"><a href="javascript:;"><img src="' + avatar + '" alt="" class="guide-header">\
							<span class="text-overflow">' + username + '<i></i></span><ul><li class="my-travel"><a href="../index.htm"/*tpa=http://www.wanzi.cc/site/orderList*/>我的定制旅行</a></li>\
								<li><a href="javascript:;" class="out">退出</a></li></ul></a></li>');
			}
		}
		function isMobile() {
			if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
				return true;
			} else {
				return false;
			}
		}
		function changeTime(time){
			time = new Date(Date.parse(time.replace(/-/g, "/")));
			return time.getTime();
		}
		$(document).ready(function(){
			var timer4 = null;
			timer1=null,
			avatar = '',
			username = '';
			//区域搜索
			var search = JSON.parse(localStorage.getItem('search')),open_login='',isUp=false;
			search = search ? search : {};
			setSearch();
			setLogin();
			if(open_login){
				if(open_login=='1001'){
					$().popup('登录失败');
					window.location.herf='/';
				}else if(open_login=='1002'){
						$('.telphoto-modal').modal('show');
				}else if(open_login=='1000'){
					window.location.href='../index.htm'/*tpa=http://www.wanzi.cc/*/;
				}
			}
			$('#search').bind('input propertychange', function() {
				if ($(this).val()) {
					$('.search-history').hide();
					if (getSearch($(this).val())) {
						$('.searching-area').html(getSearch($(this).val()));
						$('.searching-area').show();
					} else {
						$(this).attr('data-id','');
						$(this).attr('data-name','');
						$('.searching-area').html('<p class="text-center" style="margin-top:70px;">您搜索的地区暂未收录呢，<a href="demand.jsp"/*tpa=http://www.wanzi.cc/site/demand*/ style="color:#77c0cd;">试试定制旅行服务吧！</a></p>');
						$('.searching-area').show();
					}
				} else {
					$('.searching-area').hide();
					$('.search-history').show();
				}
			});
			$('#search').bind('keydown', function(event) {
				var _this=$('.searching-area').find('.active');
				if($(this).val()){
				switch(event.keyCode){
						case 13:
							if(isUp){
								jump($(this).attr('data-id'),$(this).attr('data-name'));
								isUp=false;
							}else{
								if($('.searching-area').find('.active').text()){
									$(this).val(_this.text());
									$(this).attr('data-id',_this.attr('data-id'));
									$(this).attr('data-name',_this.attr('data-name'));
									isUp=true;
								}
							}
							break;
						case 38:
							if(_this.index()>0){
								$('.searching-area ul').css('position','relative');
								_this.removeClass('active').prev().addClass('active');
								if(_this.index()>=5){
									$('.searching-area ul').css('top',-(26*(_this.index()-1)));
								}
								isUp=false;
							}
							break
						case 40:
							var total=$('.searching-area li').size();
							if((_this.index()+1)<total){
								$('.searching-area ul').css('position','relative');
								_this.removeClass('active').next().addClass('active');
								if(_this.index()>=5){
									$('.searching-area ul').css('top',-(26*_this.index()));
								}
								isUp=false;
							}
							break;
					}
				}
			});
			$('.search').click(function(){
				if($('#search').val()){
					if(isUp){
						jump($('#search').attr('data-id'),$('#search').attr('data-name'));
						isUp=false;
					}else{
						if($('.searching-area').find('.active').text()){
							$('#search').val($('.searching-area').find('.active').text());
							$('#search').attr('data-id',$('.searching-area').find('.active').attr('data-id'));
							$('#search').attr('data-name',$('.searching-area').find('.active').attr('data-name'));
							isUp=true;
						}
					}
				}
			});
			$('.searching-area').on('click', 'li', function() {
				jump($(this).attr('data-id'),$(this).attr('data-name'));
			});
			function jump(id,name){
				if(!id||!name){
					return false;
				}
				var list = {}, num = 1;
				list[id] = name;
				for (var i in search) {
					if (search[i] != name) {
						list[i] = search[i];
						num++;
					}
					if (num >= 10) {
						break;
					}
				}
				localStorage.setItem('search', JSON.stringify(list));
				window.location.href = 'list/id/index.htm'/*tpa=http://www.wanzi.cc/site/list/id/*/ + id;
			}
			function setSearch() {
				if (JSON.stringify(search) != "{}") {
					var html = '<p class="text-color2">搜索历史</p>';
					for (var i in search) {
						html += '<a href="list/id/' + i + '.htm"/*tpa=http://www.wanzi.cc/site/list/id/' + i + '*/>' + search[i] + '</a>';
					}
					$('#history').html(html);
				}
				$.post('/public/getSearch', {}, function(result) {
					if (result.area) {
						_data = eval(result.area);
					}
					if (result.city) {
						var html = '<p class="text-color2">热门目的地</p>';
						for (var i in result.city) {
							html += '<a href="list/id/' + i + '.htm"/*tpa=http://www.wanzi.cc/site/list/id/' + i + '*/>' + result.city[i] + '</a>';
						}
						$('#city').html(html);
					}
				}, 'json');
			}
			$('#search').on('click',function(event){
				$('.search-history').show();
				if ($('.searching-area').css('display') == 'none') {
				$('.search-history').show();
				}
				event.stopPropagation();
			});
			$('body').on('click',function(){
				$('.search-history').hide();
			});
					//底部微信
			$('.wei-btn').hover(function(){
				$(this).children('.video-section').show();
			},function(){
				$(this).children('.video-section').hide();
			});
			//电脑端右侧客服以及返回顶部
			$(document).scroll(function(){
				var scrollTop = $(document).scrollTop();
				if(scrollTop>0){
					$('.suspend-section').stop().animate({'opacity':1},250);
				}
				else{
					$('.suspend-section').stop().animate({'opacity':0},250);
				}
			});
			//电脑端右侧返回顶部
			$('.suspend-section').on('click', function() {
				$("html,body").stop().animate({scrollTop: 0}, 500);
			});
			//登出
			$('.out').live('click',function(){
				$().showMessage('warning','确定要退出登录？',{
					'ensure':function(){
						$.post('/user/logout',{},function(result){
							if(result.code==1000){
								location.reload();
							}else{
								$().popup(result.error);
							}
						},'json');
					},
					'quite':function(){}
				});
			});
			if(!isMobile()){
				//电脑端顶部帮助中心
				$('.help-center').hover(function() {
					clearTimeout(timer4);
					$(this).children('ul').show();
				}, function() {
					timer4 = setTimeout(function() {
						$('.help-center').children('ul').hide();
					}, 200)
				});
						//电脑端顶部下载APP
				$('.load-img').hover(function(){
					clearInterval(timer1);
					$('.load-section').show();
				},function(){
					timer1 = setTimeout(function(){
						$('.load-section').hide();
					}, 200);
				});
				//侧边预定按钮
				$('.side-item').show();
			}
			//photoChange();
			//手机端底部箭头点击
			$('.arrow-btn').on('click', function() {
				$('.arrow-btn').removeClass('current');
				$('.hidden-section').slideUp();
				if ($(this).parent().siblings('.hidden-section').css('display') == 'none') {
					$(this).addClass('current');
					$(this).parent().siblings('.hidden-section').slideDown();
				}
				else {
					$(this).removeClass('current');
					$(this).parent().siblings('.hidden-section').slideUp();
				}
			});
		});
	</script>
    </body>
    

</html>