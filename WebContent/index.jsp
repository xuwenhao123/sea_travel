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
		<title>丸子地球</title>
		<meta name="keywords" content="包车,地接,地陪,当地向导,当地导游,中文导游,私人导游,导游,旅游,自由行"/>
		<meta name="description" content="丸子地球,专业预定私人中文导游,私人导游服务.提供导游相关的如:包车,地接,地陪,当地向导,当地导游,自由行等服务"/>

        <link href="css/bootstrap.min.css"  rel="stylesheet">
        <link rel="shortcut icon" href="icon.png">
        <link rel="stylesheet" href="css/common.css" >
        <link rel="stylesheet" href="css/swiper.min.css" >
		<link rel="stylesheet" href="emoji/emoji.css" >
		<link rel="stylesheet" href="js/promptbox/prompt_box.css" >
        <script src="js/jquery-1.8.3.min.js" ></script>
        <script src="js/bootstrap.min.js" ></script>
        <!--<script src="js/global.js"></script>-->
        <script src="js/search.js" ></script>
        <script src="js/remscreen.js" ></script>
        <script src="js/fastclick.js" ></script>
		<script src="js/promptbox/prompt_box.js" ></script>
		
		<script type="text/javascript">    
            function a(){  
                $.ajax({    
                    url:"index",//servlet文件的名称  
                    type:"POST",  
                    
                });  
                  
            }  
        </script>
        
		
    </head>
	<body onload="a()">
	
    <!-- 静态包含 -->
    <%@include file="head.jsp" %>
	<!-- 头部导航栏 -->
	<!-- 主题 -->
	<link rel="stylesheet" href="css/index.css" >
	
	
	
    <!-- banner -->
    <div class="swiper-container" id="swiper1">
        <div class="swiper-wrapper">
                            <div class="swiper-slide banner-slide" style="background-image:url(https://img.wanzi.cc/images/WechatIMG1218.jpeg)" rel="/site/detail/id/59fb0e1c4bdae">
                    <div class="banner-bottom">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-8 col-xs-12">
                                    <h2 class="text-left text-color5 font-size6">圣彼得堡，俄罗斯之心</h2>
                                    <p class="text-left text-color5">你来，带你踏进在沼泽上兴建的辉煌都城——斯莫尔尼宫；带你领略俄罗斯艺术之魂——冬宫；带你与《天鹅湖》一起踮起脚尖感受马林斯基剧院的舞台。</p>      
                                </div>
                                <div class="col-sm-4 col-xs-4 text-right">
                                    <p class="text-color5"><span>Karina Nozdracheva</span> <span>欧洲-圣彼得堡</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                            <div class="swiper-slide banner-slide" style="background-image:url(https://img.wanzi.cc/images/WechatIMG1184.jpeg)" rel="/site/detail/id/54b4dd298e5d1">
                    <div class="banner-bottom">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-8 col-xs-12">
                                    <h2 class="text-left text-color5 font-size6">曼谷：“天使之城”，等你来体验</h2>
                                    <p class="text-left text-color5">曼谷金碧辉煌的宫殿与庄严圣洁的寺庙相映成晖，芭提亚白天的雪白沙滩清澈海水与夜晚的灯红酒绿让人流连忘返。来吧！我带您领略她们不同的美。</p>      
                                </div>
                                <div class="col-sm-4 col-xs-4 text-right">
                                    <p class="text-color5"><span>刘小海</span> <span>亚洲-曼谷</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                            <div class="swiper-slide banner-slide" style="background-image:url(https://img.wanzi.cc/images/WechatIMG1209.jpeg)" rel="/site/detail/id/59181e48671c7">
                    <div class="banner-bottom">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-8 col-xs-12">
                                    <h2 class="text-left text-color5 font-size6">为你而来，奢华之都。</h2>
                                    <p class="text-left text-color5">在沙漠里漫步，在海洋里畅游，聆听岁月，与你同行，揭开迪拜的神秘面纱</p>      
                                </div>
                                <div class="col-sm-4 col-xs-4 text-right">
                                    <p class="text-color5"><span>王若男</span> <span>亚洲-迪拜</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                            <div class="swiper-slide banner-slide" style="background-image:url(https://img.wanzi.cc/images/WechatIMG1167.jpeg)" rel="/site/detail/id/56c1f1a0422cb">
                    <div class="banner-bottom">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-8 col-xs-12">
                                    <h2 class="text-left text-color5 font-size6">品味伦敦 爱上伦敦</h2>
                                    <p class="text-left text-color5">希望在这样一个你陌生的城市里，我的陪伴，能给你带来些熟悉的温暖，请让你在伦敦的大街小巷中感受独特英伦风情。</p>      
                                </div>
                                <div class="col-sm-4 col-xs-4 text-right">
                                    <p class="text-color5"><span>白丹</span> <span>欧洲-伦敦</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                            <div class="swiper-slide banner-slide" style="background-image: url(https://img.wanzi.cc/images/banner-20171025-1.jpeg); " rel="/site/detail/id/57ea73760e893">
                    <div class="banner-bottom">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-8 col-xs-12">
                                    <h2 class="text-left text-color5 font-size6">如果在南半球迷路了，我希望是在墨尔本</h2>
                                    <p class="text-left text-color5">我想告诉你十二门徒的哪个角落能看到最好的风景，哪家巷弄里的Brunch店饶有趣味，南墨尔本市场里面哪种生蚝非试不可，还有州立图书馆里面一位爱弹钢琴的流浪汉背后的故事……</p>      
                                </div>
                                <div class="col-sm-4 col-xs-4 text-right">
                                    <p class="text-color5"><span>杨光</span> <span>大洋洲-墨尔本</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    </div>
        <div class="container circle-container">
            <div class="row">
                <div class="col-xs-8"></div>
                <div class="col-xs-4" style="padding-right:0;">
                    <div class="swiper-pagination banner-circle text-right computer-circle"></div>
                    <div class="swiper-pagination banner-circle phone-circle"></div>
                </div>
            </div>
        </div>
        <div class="banner-arrow"><div class="swiper-button-prev1"></div></div>
        <div class="banner-arrow"><div class="swiper-button-next1"></div></div>
    </div>
    <!-- 搜索框 -->
    <div class="sear-area">
        <input type="text" id="search" data-id="" data-name="" placeholder="请输入您想去的国家、城市" class="swiper-no-swiping">
        <span  class="search"></span>
        <div class="searching-area">
        </div>
        <div class="search-history">
            <div id="history">
            </div>
            <div id="city">
            </div>
        </div>
    </div>
    <!-- 搜索框 end-->
	<!-- banner end-->
	
	<% request.setAttribute("attr","attrValue"); %> 
    <!-- 备受好评的丸子 -->
    <div class="main-white">
	<div class="container" style="overflow:hidden;">
        <div id="swiper2" class="swiper-container" style="overflow:visible;">
            <h2 class="text-center common-h2 font-size4">最受欢迎的12位服务人员</h2>
            <div class="swiper-wrapper computer-swiper">
                
                <!-- list -->
                <c:forEach items="${slist }" var="s">
                 <div class="swiper-slide">
                        <a href="site/detail/id/58abb7b61707c.htm"  target="_blank">
                        <div class="comment-section">
                            <img src="idimage/id${s.simage_path }.jpg"  alt="" class="img-responsive">
                            <p class="text-color5 text-overflow">带您深入了解</p>
                        </div>
                        <p>
	                        
                            
                            <span class="text-overflow font-size2 common-name">${s.sname }</span>
                            <span class="text-right text-overflow main-color"><strong class="font-size2">CNY ${s.minprice }</strong>起</span>
                        </p>
                         <p>
                            <span class="text-overflow">全职向导</span>
                            <span class="text-overflow text-right start-section">
                                                            <i class="start3"></i>
                                                            <i class="start3"></i>
                                                            <i class="start3"></i>
                                                            <i class="start3"></i>
                                                            <i class="start3"></i>
                                                            <span>36</span>
                            </span>
                        </p>
                        <p><span><i class="lit"></i>${s.saddress }</span></p>
                        <p class="font-size1 text-color2 text-overflow">
                                                    <span class="guide-tag">徒步向导</span>
                                                    <span class="guide-tag">带车向导</span>
                                                    <span class="guide-tag">徒步接送机</span>
                                                    <span class="guide-tag">带车接送机</span>
                        </p>
                    </a>
                </div>
              </c:forEach>  
              <!-- list end-->
              
              
            </div>
        </div>
	</div>
    </div>
    <div class="main-line"></div>
    <!-- 备受好评的丸子 -->
        <!-- 尊享品质服务 -->
    <div class="main-white">
        <div class="container service-section1">
            <h2 class="text-center common-h2 font-size4">尊享品质服务</h2>
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <div class="service-list">
                        <img src="images/guide.jpg"  alt="" class="img-responsive">
                        <div class="service-title text-center font-size4">
                            <p>中文向导</p>
                        </div>
                        <div class="service-explain">
                            <p class="text-color5 text-center font-size4"><strong>中文向导</strong></p>
                            <p class="text-color5 font-size6">全球60个国家，超过600个城市，都可以找到当地的华人华侨，留学生等等优质的中文向导，他们可能是律师、医生、人类学家、运动员…他们将尽心尽责为您提供最纯粹的当地人旅行体验。</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="service-list">
                        <img src="images/car.jpg"  alt="" class="img-responsive">
                        <div class="service-title text-center font-size4">
                            <p>接机包车</p>
                        </div>
                        <div class="service-explain">
                            <p class="text-color5 text-center font-size4"><strong>接机包车</strong></p>
                            <p class="text-color5 font-size6">丸子地球的中文向导包车服务，从下飞机开始，就为您全程护航，丸子地球的包车服务车型多样，甚至包括澳洲房车等等车型，以期满足您的个性化旅行需求。</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="service-list">
                        <img src="images/trip.jpg"  alt="" class="img-responsive">
                        <div class="service-title text-center font-size4">
                            <p>定制旅行</p>
                        </div>
                        <div class="service-explain">
                            <p class="text-color5 text-center font-size4"><strong>定制旅行</strong></p>
                            <p class="text-color5 font-size6">丸子地球的向导由于高素质且在各个行业的专业造诣，可以为您提供如预约法国私人酒窖，驾驶俄罗斯米格战机，预约英国高尔夫球场等等独特的定制旅行服务。</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="service-list">
                        <img src="images/service.jpg"  alt="" class="img-responsive">
                        <div class="service-title text-center font-size4">
                            <p>保障服务</p>
                        </div>
                        <div class="service-explain">
                            <p class="text-color5 text-center font-size4"><strong>保障服务</strong></p>
                            <p class="text-color5 font-size6">出境游最重要的是安全，丸子地球为您提供全球救援服务。我们在每一个服务区域，都有当地的导游协会、学联、地接社等，应对可能出现的突发情况，为您的境外旅行保驾护航。</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-line"></div>
    <!-- 尊享品质服务 -->
   
        
       
    <script src="js/swiper.min.js" ></script>
    <script>
    $(document).ready(function(){

        $('.banner-slide').click(function(){
            window.open($(this).attr('rel'));
        });

        var timer2 = null,mySwiper1 = null,mySwiper2 = null,mySwiper3 = null,windowWidth = $(window).width()+4;
    	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
            var _height = $(window).height();
            //顶部下拉高度控制
            $('.navbar-toggle').on('click',function(){
                $('.navbar-collapse').css({'height':_height,'width':windowWidth});
            });
            //首页轮播图小点点控制显示
            $('.computer-circle').remove();
            $('#swiper1 .swiper-button-prev1,#swiper1 .swiper-button-next1').remove();
            mySwiper1 = new Swiper('#swiper1',{
                loop: true,
                autoplay: 2000,
                pagination : '.swiper-pagination',
            });
            //备受好评的丸子滑动
            $('#swiper2 .swiper-wrapper').removeClass('computer-swiper');
            swiper2 = new Swiper('#swiper2', {
                slidesPerView:"auto",
                //centeredSlides : true,
                spaceBetween : 10,
            });
            //旅行者们的评论
            mySwiper3 = new Swiper('#swiper3',{
                loop: true,
                prevButton:'.swiper-button-prev',
                nextButton:'.swiper-button-next',
            });
            //底部箭头点击
        }
        else{
            //顶部轮播图
            mySwiper1 = new Swiper('#swiper1',{
                autoplay: 2000,
                pagination : '.swiper-pagination',
                paginationClickable :true,
                prevButton:'.swiper-button-prev1',
                nextButton:'.swiper-button-next1',
            });
            //banner左右箭头
            bannerArrow();
            //banner鼠标移入移出
            control();
            //备受好评的丸子
            commentGuide();
            //尊享品质服务
            server();
            //视频
            guideVideo();
            //视频下载APP
            videoApp();
            //旅行者们的评论
            mySwiper3 = new Swiper('#swiper3',{
                loop : true,
                prevButton:'.swiper-button-prev',
                nextButton:'.swiper-button-next',
            });
        }
        //电脑端banner箭头
        function bannerArrow(){
            $('.banner-arrow').hover(function(){
                $(this).children().animate({'opacity':1},250);
            },function(){
                $(this).children().animate({'opacity':0},250);
            });
        }
        //电脑端鼠标移入控制轮播图
        function control(){
            $('#swiper1').hover(function(){
                mySwiper1.stopAutoplay();
            },function(){
                mySwiper1.startAutoplay();
            });
        }
        //电脑端备受好评的丸子
        function commentGuide(){
            $('.comment-section').hover(function(){
                $(this).children('p').stop().animate({'bottom':-10},250);
            },function(){
                $(this).children('p').stop().animate({'bottom':-54},250);
            });
            $('#swiper2 .swiper-slide').each(function(index){
                if(index%3==2){
                    $(this).css('margin-right',0);
                }
            })
        }
        //电脑端尊享品质服务
        function server(){
            $('.service-list').hover(function(){
                $(this).children('.service-title').stop().animate({'opacity':0},250);
                $(this).children('.service-explain').stop().animate({'opacity':1},250);
            },function(){
                $(this).children('.service-title').stop().animate({'opacity':1},250);
                $(this).children('.service-explain').stop().animate({'opacity':0},250);
            });
        }
        //电脑端视频
        function guideVideo(){
            $('.video-box span').on('click',function(){
                $('.video_main').get(0).play();
                $(this).hide();
                $(this).siblings('img').hide();
            });
            $('.video_main').on('ended',function(){
                $('.video-box span').show();
                $(this).siblings('img').show();
            });
            $('.video_main').on('play',function(){
                $('.video-box span').hide();
                $(this).children('img').hide();
            });
        }
        //电脑端视频有下角下载APP
        function videoApp(){
            $('.video-p strong').hover(function(){
                $(this).siblings('.video-section').show();
            },function(){
                $(this).siblings('.video-section').hide();
            })
        }
    });
    </script>        <!-- 主题 -->
		<!-- 右侧客服以及回到顶部 -->
		<div class="side-item" style="bottom:355px;">
			<a href="site/demand.htm" ><img src="images/booking-trip.png"  alt=""></a>
		</div>
		<div class="side-item" style="bottom:270px;">
			<a href="site/demand.htm" ><img src="images/booking-ticket.png"  alt=""></a>
        </div>
        <div class="suspend-section side-item">
			<img src="images/back.png"  alt="">
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
                                    <p><a href="site/html/id/about_us.htm" >关于我们</a></p>
                                    <p><a href="site/html/id/join_us.htm" >加入我们</a></p>
                                    <p><a href="site/html/id/contact_us.htm" >联系我们</a></p>
                                    <p><a href="site/html/id/media.htm" >媒体报道</a></p>
                                    <p><a href="site/html/id/map.htm" >网站地图</a></p>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <h5>新手上路<i class="arrow-btn"></i></h5>
                                <div class="hidden-section">
                                    <p><a href="site/helpList.htm" >帮助中心</a></p>
                                    <p><a href="site/html/id/terms_service.htm" >服务条款</a></p>
                                    <p><a href="site/html/id/privacy_policy.htm" >隐私政策</a></p>
                                    <p><a href="site/html/id/disclaimer.htm" >免责声明</a></p>
                                    <p><a href="site/html/id/policy_notes.htm" >使用政策须知</a></p>
                                    <p><a href="site/html/id/terms.htm" >保障计划条款</a></p>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <h5>丸子向导<i class="arrow-btn"></i></h5>
                                <div class="hidden-section">
                                    <p><a href="site/html/id/why_guide.htm" >为什么成为丸子</a></p>
                                    <p><a href="site/html/id/culture.htm" >丸子服务标准</a></p>
                                    <p><a href="site/html/id/why_guide.htm"  >申请成为丸子</a></p>
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
                            <img src="images/weixin.png"  alt="">
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
	<script src="../qiyukf.com/script/24c8bd3fd15d1272dc707fb2944bbc27.js"  defer async></script>
    <script>
		//注册登录电脑端
		function resterLogin(str) {
			if (str == true) {
				location.href = 'site/loginPage/t/2.htm'/*tpa=http://www.wanzi.cc/site/loginPage/t/2*/;
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
				$('.login-ul').append(isMobile() ? '<li class="my-travel my-trav"><a href="index.jsp"/*tpa=http://www.wanzi.cc/site/orderList*/>我的定制旅行</a></li>\
									<li class="slide-li"><a href="javascript:;"  class="out">退出</a></li>'
						: '<li class="quit-login"><a href="javascript:;"><img src="' + avatar + '" alt="" class="guide-header">\
							<span class="text-overflow">' + username + '<i></i></span><ul><li class="my-travel"><a href="index.jsp"/*tpa=http://www.wanzi.cc/site/orderList*/>我的定制旅行</a></li>\
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
					window.location.href='index.jsp'/*tpa=http://www.wanzi.cc/*/;
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
						$('.searching-area').html('<p class="text-center" style="margin-top:70px;">您搜索的地区暂未收录呢，<a href="site/demand.htm"/*tpa=http://www.wanzi.cc/site/demand*/ style="color:#77c0cd;">试试定制旅行服务吧！</a></p>');
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
				window.location.href = 'site/list/id/index.jsp'/*tpa=http://www.wanzi.cc/site/list/id/*/ + id;
			}
			function setSearch() {
				if (JSON.stringify(search) != "{}") {
					var html = '<p class="text-color2">搜索历史</p>';
					for (var i in search) {
						html += '<a href="site/list/id/' + i + '.htm"/*tpa=http://www.wanzi.cc/site/list/id/' + i + '*/>' + search[i] + '</a>';
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
							html += '<a href="site/list/id/' + i + '.htm"/*tpa=http://www.wanzi.cc/site/list/id/' + i + '*/>' + result.city[i] + '</a>';
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