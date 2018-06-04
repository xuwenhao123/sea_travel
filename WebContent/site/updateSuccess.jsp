<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset=UTF-8"utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no"/>
        <meta name="baidu-site-verification" content="seU0GCr4fa" />
		<title>覃小玲,泰国曼谷导游,泰国曼谷旅游向导 - 丸子地球</title>
		<meta name="keywords" content="覃小玲,泰国曼谷导游,泰国曼谷旅游向导"/>
		<meta name="description" content="覃小玲 提供泰国曼谷导游，泰国曼谷旅游向导服务。来泰国曼谷旅游，就约覃小玲。"/>

        <link href="../css/bootstrap.min.css"  rel="stylesheet">
        <link rel="shortcut icon" href="icon.png">
        <link rel="stylesheet" href="../css/common.css" >
        <link rel="stylesheet" href="../css/swiper.min.css" >
		<link rel="stylesheet" href="../emoji/emoji.css" >
		<link rel="stylesheet" href="../js/promptbox/prompt_box.css" >
		<link rel="stylesheet" type="text/css" href="../css/style.css" />
        <script src="../js/jquery-1.8.3.min.js" ></script>
        <script src="../js/bootstrap.min.js" ></script>
        <script src="../js/search.js" ></script>
        <script src="../js/remscreen.js" ></script>
        <script src="../js/fastclick.js" ></script>
		<script src="../js/promptbox/prompt_box.js" ></script>
		<script type="text/javascript" src="../js/main.js"></script>
		<script language="javascript" type="text/javascript"> 
			var i = 3; 
			var intervalid; 
			intervalid = setInterval("fun()", 1000); 
			function fun() { 
			if (i == 0) { 
			window.location.href = "personal.jsp"; 
			clearInterval(intervalid); 
			} 
			document.getElementById("mes").innerHTML = i; 
			i--; 
			} 
		</script> 
				
    </head>
<body style="background-color: #474954;font-size: 14px;">
<!-- 头部导航栏 -->
			<div class="navbar navbar-inverse navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand hidden-sm logo-web" href="../index.jsp" ><img src="../images/logo-web.png"  alt=""></a>
						<a class="navbar-brand hidden-sm logo-phone" href="../index.jsp" ><img src="../images/logo-phone.png"  alt=""></a>
					</div>
					<div class="navbar-collapse collapse" role="navigation">
						<ul class="nav navbar-nav nav-ul">
							<li class="home-page slide-li"><a href="../index.jsp" >首页</a></li>
							<li class="hidden-sm hidden-md order-li"><a href="demand.jsp"   target="_blank">定制旅行</a></li>
							<li class="slide-li"><a href="#" >旅途留言板</a></li>
							<li class=""><a href="#">旅途攻略</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right hidden-sm nav-ul login-ul">
							<li class="phone-num"><a href="javascript:;"><i></i>400-872-8336</a></a></li>
							<li class="help-center">
								<a href="site/helpList.htm" >帮助中心<i></i></a>
								<ul>
									<li><a href="site/helpDetail/id/58.htm" >如何预订丸子向导？</a></li>
									<li><a href="site/helpDetail/id/61.htm" >什么是定制旅行服务？</a></li>
									<li><a href="site/helpDetail/id/57.htm" >如何成为一名优秀的丸子向导？</a></li>
									<li><a href="site/helpList.htm" >查看更多常见问题与解答</a></li>
								</ul>
							</li>
							<c:if test="${empty user }">
								<li><a href="loginPage/t/register.jsp"  class="login-section">注册</a></li>
								<li><a href="loginPage/t/login.jsp"  class="login-line">登录</a></li>
							</c:if>
							<c:if test="${not empty user }">
							    <li style=""><a href="personal.jsp">${user.username}&nbsp;&nbsp;:&nbsp;&nbsp;你好</a></li>
							    <li><a href="${pageContext.request.contextPath}/user?method=logout"  class="login-line" onclick="return logout();">退出</a></li>
								
							</c:if>
							
						</ul>
					</div>
				</div>
			</div>        
			<!-- 头部导航栏 -->
		    <!-- 主题 -->
		    <link rel="stylesheet" href="../css/detail.css" >
			   <style>
			   .mian-top{
				   display: none!important;
			   }
			   </style>
   <!-- 主题部分 -->
   
   <!-- 隐藏表单 -->
	    <div class=""> 
				<div class="cd-user-modal-container"  style="margin-top: 20px">
					<ul class="cd-switcher">
						<li><a href="#0">修改个人信息</a></li>
						<li><a href="#0">修改密码</a></li>
					</ul>
					<div id=""> <!-- 修改密码表单 -->
						<div style="width: 84%;height: 370px;margin-left: 40px;">
						<h1>修改成功！</h1>
						<p>将在 <span id="mes">3</span> 秒钟后返回！</p>
						
						</div>
					</div>
				</div>
	</div> 
	<!-- 隐藏表单 -->

</body>
</html>