<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>



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
							<a href="site/search.htm" ><input type="text" placeholder="请输入您想去的国家、城市"><i></i></a>
						</div>
						<a class="navbar-brand hidden-sm logo-web" href="index.jsp" ><img src="images/logo-web.png"  alt=""></a>
						<a class="navbar-brand hidden-sm logo-phone" href="index.jsp" ><img src="images/logo-phone.png"  alt=""></a>
					</div>
					<div class="navbar-collapse collapse" role="navigation">
						<ul class="nav navbar-nav nav-ul">
							<li class="home-page slide-li"><a href="index.jsp" >首页</a></li>
							<li class="hidden-sm hidden-md order-li mian-top"><a href="site/demand.jsp"   target="_blank">定制旅行</a></li>
							<li class="slide-li mian-top"><a href="#" >旅途留言板</a></li>
							<li class=" mian-top"><a href="#">旅途攻略</a></li>
								
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
								<li><a href="site/loginPage/t/register.jsp"  class="login-section">注册</a></li>
								<li><a href="site/loginPage/t/login.jsp"  class="login-line">登录</a></li>
							</c:if>
							<c:if test="${not empty user }">
							    <li style=""><a href="site/personal.jsp">${user.username}&nbsp;&nbsp;:&nbsp;&nbsp;你好</a></li>
							    <li><a href="${pageContext.request.contextPath}/user?method=logout"  class="login-line">退出</a></li>
								
							</c:if>
							
						</ul>
					</div>
				</div>
			</div>        
		


			