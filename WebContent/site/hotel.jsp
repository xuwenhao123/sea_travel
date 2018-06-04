<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
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
		<script type="text/javascript">
			function test()
			{
			  for (i=0; i<document.f1.ra.length; i++)
			  {
			    if (document.f1.ra[i].checked)
			    str = document.f1.ra[i].value;
			  }
			  confirm(str);
			  
			}
		</script>
</head>
<body style="background-color: white;">

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
						<a class="navbar-brand hidden-sm logo-web" href="../index.htm" ><img src="../images/logo-web.png"  alt=""></a>
						<a class="navbar-brand hidden-sm logo-phone" href="../index.htm" ><img src="../images/logo-phone.png"  alt=""></a>
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


<div class="main-white">
	<div class="container">
        <div id="swiper2" class="swiper-container" style="overflow:visible;">
            <h2 class="text-center common-h2 font-size4">${att_name }所在酒店信息</h2>
            <div class="swiper-wrapper computer-swiper">
            </div>
        </div>
	</div>
</div>
    <form id="intent-form"  name="f1" action="${pageContext.request.contextPath}/hotel?method=toTraf" method="post">
    <div class="container">
        <div class="row">
          
        </div>
        <div class="row btn-group" role="group">
               <c:forEach items="${hlist }" var="h">
	              <div class=" col-md-4">
                        <a href="#" >
                        <div class="comment-section">
                            <img src="../idimage/hotel1.jpg"  alt="" class="img-responsive" style="width:750px;">
                            <p class="text-color5 text-overflow">带您深入了解</p>
                        </div>
                        <p>
                            <span class="text-overflow font-size2 common-name">&nbsp;&nbsp;&nbsp;&nbsp;${h.hname }</span>
                            <span class="text-right text-overflow main-color"><strong class="font-size2">&nbsp;&nbsp;&nbsp;&nbsp;CNY ${h.min_price }</strong>起</span>
                        </p>
                         <p>
                            <span class="text-overflow">&nbsp;&nbsp;&nbsp;&nbsp;酒店星级</span>
                            <span class="text-overflow text-right start-section">
                                                            <i class="start3"></i>
                                                            <i class="start3"></i>
                                                            <i class="start3"></i>
                                                            <i class="start3"></i>
                                                            <i class="start3"></i>
                                                            
                            </span>
                        </p>
                        <p class="font-size1 text-color2 text-overflow">
                          <span class="guide-tag">&nbsp;&nbsp;&nbsp;&nbsp;${h.detail }</span>
                        </p></a>                          
                        <input type="radio" value="${h.h_id }" name="ra" style="margin-left: 20px;"> <span class="text-right text-overflow main-color"><strong class="font-size2">选中该酒店</strong></span>
                    
             </div>
                </c:forEach>
	               
        </div>
        <div class="row" style="height:100px;"></div>
         <!-- <a href="#"  onclick="test()">测试</a> -->
         <button class="main-bg submit-btn text-center text-color5" type="button" style="margin-left:200px;float: left; " onclick="javascript:window.location.href='trafficTools.jsp'">忽略，下一步</button>
        <button class="main-bg submit-btn text-center text-color5" type="submit" style="margin-left:300px; ;float: left; ">下一步</button>
    </div>
</form>
</body>
</html>