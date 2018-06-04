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
		<script type="text/javascript">
		    
			function checkForm(){
			    if(checkUser()&&checkPassword()&&checkRspassword()&&checkMail()&&checkRspassword())
			     return true;
			    return false;
			}
			
			

			
			function checkRspassword(){
			    var flag;
			    //获取确认密码框里内容
			    var rspassword = document.getElementsByName("repassword")[0].value;
			    //获取密码框里内容
			    var password = document.getElementsByName("password")[0].value;
			    var oRepasswordSpan = document.getElementById("repasswordspan");
			    var submitbtn = document.getElementById("submit");
			    if (rspassword == password) {
			        oRepasswordSpan.innerHTML = "正确".fontcolor("green");
			        submitbtn.setAttribute('style', 'background:#2f889a;');
			        flag = true;
			    }
			    else {
			        oRepasswordSpan.innerHTML = "错误".fontcolor("red");
			        submitbtn.setAttribute('style', 'background:gray;');
			        flag = false;
			    }
			    return flag;
			}
			
			function checkBirthday(){
			    var flag;
			    var birthday = document.getElementsByName("birthday")[0].value;
			    var obirthdaySpan = document.getElementById("birthdayspan");
			    var submitbtn = document.getElementById("submit");
			    if (birthday != "") {
			    	obirthdaySpan.innerHTML = "正确".fontcolor("green");
			        submitbtn.setAttribute('style', 'background:#2f889a;');
			        flag = true;
			    }
			    else {
			    	obirthdaySpan.innerHTML = "空参".fontcolor("red");
			        submitbtn.setAttribute('style', 'background:gray;');
			        flag = false;
			    }
			    return flag;
			}
			
			
		</script>
		<script type="text/javascript">
		function isUser(){
	    	var user = <%=request.getSession().getAttribute("user") %>
	    	if(user==null){
	    		alert("您还没登录！");
	    		location="../index.jsp";
	    	
	    	}
	    }
	
		</script>
				
    </head>
	<body onload="isUser()">
		<!-- 头部导航栏 -->
			<div class="navbar navbar-inverse navbar-fixed-top" style="background-color: white;">
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
    <div class="container guide-section">
        <div class="col-sm-3 guide-l hidden-xs">
            <p class="text-center"><img src="../images/597edde9225bf.jpg@60w_60h.jpg"  alt="" class="guide-img"></p>
            <p class="text-center font-size2 guide-name">${user.name }</p>
	            <p class="text-center">
                            
                            <span>年龄：${user.age }</span>
            </p>
	            <p class="text-center"><span><i class="lit"></i>中国-阳江</span></p>
            <div class="text-center guide-tag font-size1 text-color1 guide-tag1">
                            <span><i></i>${ user.hobby } </span>
                            
                        </div>
            <p class="text-center guide-detail"><span><i></i>丸子详细资料</span></p>
            <br>
            <br>
            <br>
            <div class=demo">
		         <nav class="main_nav">
					<ul>
						<li><a class="cd-signin" href="#0">修改个人信息</a></li>
						<li><a class="cd-signup" href="#0">修改密码</a></li>
					</ul>
				</nav>
            </div>
        </div>
        <div class="col-sm-9 guide-r col-xs-12">
                    <div class="guide-photo">
                
                <!-- 向导视频 -->
                <div class="video-box">
		                    <img src="../images/597af4e8e97d8.jpg@698w_436h_1e_1c_1sh.jpg"  alt="">
                </div> 
                <!-- 向导视频 -->
                <div class="row">                                                                                                                   
                    <div class="col-sm-9 col-xs-12"><h4 class="text-overflow font-size3">个人照片</h4></div>
                    <div class="col-sm-3 hidden-xs">
                    </div>
                </div>
            </div>
            
           
            <div class="guide-slide">
                <span class="text-center">详细资料</span>
                <div class="slide-section slide-data" id="HotPer">
                    <div class="slide-main clearfix">
                        <div class="left"><p class="font-size2"><i class="line"></i>个人简介</p></div>
                        <div class="right">
				              <ul>
	                                <li><img src="../images/597af77bbbee9.jpg@173w_173h_1e_1c_1sh.jpg"  alt="" class="brief-img" ></li>
	                                <li><img src="../images/597af77ec4755.jpg@173w_173h_1e_1c_1sh.jpg"  alt="" class="brief-img" ></li>
	                                <li><img src="../images/597afd55d245e.jpg@173w_173h_1e_1c_1sh.jpg"  alt="" class="brief-img" style="margin:0;"></li>
	                          </ul>
				              <div class="introduce-section">
	                            <p> ${ user.hobby }</p>
	                          </div>
	                          
	                          
                        </div>
                    </div>
                    <div class="clearfix">
                        <div class="left"><h6 class="font-size2">基本信息</h6></div>
                        <div class="right">
                            <p><span>姓名</span><span class="data-span">${ user.name }</span></p>
                            <p><span>用户帐号</span><span class="data-span">${ user.username }</span></p>
                            <p><span>性别</span><span class="data-span">${ user.age }</span></p>
                            <p><span>出生年月</span><span class="data-span">${user.birthday }</span></p>
                            <p><span>家乡</span><span class="data-span">中国广东</span></p>
                            <p><span>在该城市居住时长</span><span class="data-span">4年</span></p>
                            <p><span>注册时间</span><span class="data-span">2017年07月</span></p>
                        </div>
                    </div>
                    <div class="clearfix">
                        <div class="left"><h6 class="font-size2">语言能力</h6></div>
                        <div class="right">
                          <p><span>当地语言</span><span class="data-span">熟练</span></p>
                        </div>
                    </div>
					
                    <div class="clearfix">
                        <div class="left"><h6 class="font-size2">职业背景</h6></div>
                        <div class="right">
		                   <p><span>所在行业</span><span class="data-span">旅游</span></p>
				           <p><span>从事职业</span><span class="data-span">旅游计调</span></p>
		                </div>
                    </div>
		           <div class="clearfix">
                        <div class="left"><h6 class="font-size2">教育背景</h6></div>
                        <div class="right">
                            <p><span>最高学历</span><span class="data-span">本科</span></p>
                            <p><span>毕业院校</span><span class="data-span">碧武里皇家大学</span></p>
                            <p><span>所学专业</span><span class="data-span">泰语</span></p>
                        </div>
                    </div>
                </div>
                
        </div>
        
    </div>
    
    <!-- 主题部分 -->
    
        <script src="../js/ajax.js" ></script>
        <script src="../js/swiper.min.js" ></script>       
    <!-- 主题 -->
		
        <!-- 底部 -->
        <div class="main-white">
            <div class="container footer-section">
                <div class="row">
                    
                    
                
            </div>
        </div>
        <!-- 底部 -->
        
        
        <!-- 隐藏表单 -->
	    <div class="cd-user-modal"> 
		<div class="cd-user-modal-container">
			<ul class="cd-switcher">
				<li><a href="#0">修改个人信息</a></li>
				<li><a href="#0">修改密码</a></li>
			</ul>

			<div id="cd-login">
			     <!-- 修改个人信息表单 -->
				<form class="cd-form" action="${pageContext.request.contextPath}/user?method=updateAll" method="post" onsubmit="return checkBirthday()">
					<p class="fieldset">
						<label class="image-replace cd-username" for="signin-username">用户名</label>
						<input class="full-width has-padding has-border" id="signin-username" type="text" value="${ user.username } " disabled="disabled">
					</p>
					<p class="fieldset">
						<label class="image-replace cd-email" for="signin-email">邮箱</label>
						<input class="full-width has-padding has-border" id="signin-email" type="text"  value="${ user.email }" name="email">
					</p>
					<p class="fieldset">
						<label class="image-replace cd-username" for="signin-name">姓名</label>
						<input class="full-width has-padding has-border" id="signin-name" type="text"  value="${ user.name }" name="name">
					</p>
					<p class="fieldset">
						<label class="image-replace cd-username" for="signin-sex">性别</label>
						<input class="full-width has-padding has-border" id="signin-sex" type="text"  value="${ user.sex }" name="sex">
					</p>
					<p class="fieldset">
						<label class="image-replace cd-username" for="signin-birthday">出生日期</label>
						<input class="full-width has-padding has-border" id="signin-birthday" type="text"  value="${ user.birthday }" name="birthday" onblur="checkBirthday()">
                        <span id="birthdayspan"></span><br/>
					</p>
					<p class="fieldset">
						<label class="image-replace cd-username" for="signin-hobby">个人爱好</label>
						<input class="full-width has-padding has-border" id="signin-hobby" type="text"  value="${ user.hobby }" name="hobby">
					</p>
					<p class="fieldset">
						<label class="image-replace cd-username" for="signin-idcard">身份证</label>
						<input class="full-width has-padding has-border" id="signin-idcard" type="text"  value="***********(身份证)" disabled="disabled">
					</p>
					<p class="fieldset">
						<label class="image-replace cd-username" for="signin-address">地址</label>
						<input class="full-width has-padding has-border" id="signin-address" type="text"  value="${ user.address }" name="address">
					</p>
					<p class="fieldset">
						<label class="image-replace cd-username" for="signin-age">年龄</label>
						<input class="full-width has-padding has-border" id="signin-age" type="text"  value="${ user.age }" name="age">
					</p>

					<p class="fieldset">
						<input class="full-width2" type="submit" id="submit" value="修改">
					</p>
				</form>
			</div>

			<div id="cd-signup"> <!-- 修改密码表单 -->
				<form class="cd-form" action="${pageContext.request.contextPath}/user?method=updatePwd" method="post" onsubmit="return checkRspassword()">
					<p class="fieldset">
						<label class="image-replace cd-username" for="signup-oldpassword">旧密码</label>
						<input class="full-width has-padding has-border" id="signup-oldpassword" type="text" placeholder="输入旧密码" name="oldpassword">
					</p>
					<p class="fieldset">
						<label class="image-replace cd-username">新密码</label>
						<input class="full-width has-padding has-border" id="signup-password" type="text" placeholder="输入新密码" name="password">
					</p>
					<p class="fieldset" style="font-size: 14px">
						<label class="image-replace cd-username">确认新密码</label>
						<input class="full-width has-padding has-border" id="signup-repassword" type="text"  placeholder="确认新密码" name="repassword" onblur="checkRspassword()">
						<span id="repasswordspan"></span><br/>
					</p>
					<p class="fieldset">
						<input id="submit" class="full-width2" type="submit" value="修改密码">
					</p>
				</form>
			</div>

			<a href="#0" class="cd-close-form">关闭</a>
		</div>
	</div> 
	<!-- 隐藏表单 -->
	
    
	
	 <script src="../js/common.js"></script>
    </body>
</html>